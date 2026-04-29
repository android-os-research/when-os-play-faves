#!/usr/bin/env python3
"""
step5_smali_callgraph.py — Build call graphs directly from decompiled smali.

No Soot/Java needed. Parses invoke-* instructions from smali to build a
method-level call graph, then traces forward/backward from seed methods.

This works because smali's invoke instructions are explicit call edges:
    invoke-virtual {v0}, Lcom/foo/Bar;->doStuff(I)V
    invoke-static {}, Lcom/foo/Bar;->helper()Ljava/lang/String;

Usage:
    python3 step5_smali_callgraph.py \\
        --smali-dir     /data/work/vivo/smali/ \\
        --entry-points  /data/work/vivo/step4_analysis/soot_entry_points.txt \\
        --output        /data/work/vivo/step5_callgraph/ \\
        --depth         5
"""

import argparse
import csv
import os
import re
import sys
from collections import defaultdict
from pathlib import Path


# ── Security-relevant method patterns ──
SEC_TAGS = {
    'checkpermission': 'PERM_CHECK',
    'enforcepermission': 'PERM_CHECK',
    'grantpermission': 'PERM_GRANT',
    'grantruntimeperm': 'PERM_GRANT',
    'grantdefaultperm': 'PERM_GRANT',
    'grantsystemnonfixed': 'PERM_GRANT',
    'revokepermission': 'PERM_REVOKE',
    'updatepermissionflags': 'PERM_FLAGS',
    'hiddenapi': 'HIDDEN_API',
    'isallowedtousehidden': 'HIDDEN_API',
    'gethiddenapienforcementpolicy': 'HIDDEN_API',
    'assertvalidapk': 'INSTALLER_VERIFY',
    'noverifyallow': 'INSTALLER_VERIFY',
    'checksignature': 'SIG_CHECK',
    'getsigningdetails': 'SIG_CHECK',
    'computedigest': 'SIG_CHECK',
    'hassigningcertificate': 'SIG_CHECK',
    'getdeviceid': 'DEVICE_ID',
    'getimei': 'DEVICE_ID',
    'getsubscriberid': 'DEVICE_ID',
    'getsimserialnumber': 'DEVICE_ID',
    'getline1number': 'DEVICE_ID',
    'setmode': 'APPOPS',
    'checkop': 'APPOPS',
    'noteop': 'APPOPS',
    'setapplicationenabledsetting': 'PKG_MGMT',
    'installpackage': 'PKG_MGMT',
    'deletepackage': 'PKG_MGMT',
    'setcomponentenabledsetting': 'PKG_MGMT',
    'systemproperties;->get': 'SYS_PROP_READ',
    'systemproperties;->set': 'SYS_PROP_WRITE',
    'systemproperties;->getboolean': 'SYS_PROP_READ',
    'getcallinguid': 'UID_CHECK',
    'getcallingpid': 'UID_CHECK',
    'getcallingpackage': 'CALLER_ID',
    'sendtextmessage': 'SMS_SEND',
    'senddatamessage': 'SMS_SEND',
    'placecall': 'PHONE_CALL',
    'getpackageinfo': 'PKG_QUERY',
    'getapplicationinfo': 'PKG_QUERY',
    'opensocket': 'NETWORK',
    'openconnection': 'NETWORK',
}


def get_sec_tag(method_sig):
    lower = method_sig.lower()
    for pattern, tag in SEC_TAGS.items():
        if pattern in lower:
            return tag
    return None


def smali_to_java_sig(smali_class, method_name, params, ret):
    """Convert smali method reference to Java-style signature."""
    java_class = smali_class.replace('/', '.').lstrip('L').rstrip(';')
    java_ret = dalvik_to_java(ret)
    java_params = dalvik_params_to_java(params)
    return f"<{java_class}: {java_ret} {method_name}({java_params})>"


def dalvik_to_java(t):
    m = {'V': 'void', 'Z': 'boolean', 'B': 'byte', 'S': 'short',
         'C': 'char', 'I': 'int', 'J': 'long', 'F': 'float', 'D': 'double'}
    if t in m: return m[t]
    if t.startswith('['): return dalvik_to_java(t[1:]) + '[]'
    if t.startswith('L') and t.endswith(';'): return t[1:-1].replace('/', '.')
    return t


def dalvik_params_to_java(p):
    if not p: return ''
    result, i = [], 0
    while i < len(p):
        arr = ''
        while i < len(p) and p[i] == '[': arr += '[]'; i += 1
        if i >= len(p): break
        c = p[i]
        if c == 'L':
            end = p.index(';', i)
            result.append(p[i + 1:end].replace('/', '.') + arr)
            i = end + 1
        else:
            mapping = {'V': 'void', 'Z': 'boolean', 'B': 'byte', 'S': 'short',
                       'C': 'char', 'I': 'int', 'J': 'long', 'F': 'float', 'D': 'double'}
            result.append(mapping.get(c, c) + arr)
            i += 1
    return ','.join(result)


def parse_method_sig_from_smali_line(method_line):
    """Parse a .method directive into a Java-style sig."""
    # .method public static foo(Ljava/lang/String;I)V
    m = re.match(r'\.method\s+\S.*?\s+(\S+)\(([^)]*)\)(\S+)', method_line.strip())
    if m:
        return m.group(1), m.group(2), m.group(3)
    return None, None, None


def parse_invoke_target(invoke_line):
    """
    Parse an invoke-* instruction into the callee signature.
    invoke-virtual {v0, v1}, Lcom/foo/Bar;->method(Ljava/lang/String;)V
    Returns: (callee_java_sig, invoke_kind)
    """
    m = re.match(
        r'\s*(invoke-\w+)(?:/range)?\s+\{[^}]*\},\s*(L[^;]+;)->(\S+)\(([^)]*)\)(\S+)',
        invoke_line
    )
    if m:
        kind = m.group(1)
        callee_class = m.group(2)
        callee_method = m.group(3)
        callee_params = m.group(4)
        callee_ret = m.group(5)
        sig = smali_to_java_sig(callee_class, callee_method, callee_params, callee_ret)
        return sig, kind
    return None, None


def build_call_graph(smali_dir):
    """
    Scan all smali files and build a call graph from invoke-* instructions.
    Returns:
        callees:  dict[caller_sig] -> set of callee_sigs
        callers:  dict[callee_sig] -> set of caller_sigs
        all_methods: set of all method sigs found
    """
    callees = defaultdict(set)
    callers = defaultdict(set)
    all_methods = set()

    smali_root = Path(smali_dir)
    jar_dirs = [d for d in smali_root.iterdir() if d.is_dir() and d.name != 'MANIFEST.txt']

    total_files = 0
    total_edges = 0
    total_methods = 0

    for jar_dir in sorted(jar_dirs):
        jar_name = jar_dir.name
        smali_files = list(jar_dir.rglob('*.smali'))
        total_files += len(smali_files)

        for sf in smali_files:
            try:
                with open(sf, 'r', errors='replace') as f:
                    lines = f.readlines()
            except Exception:
                continue

            # Get class name
            smali_class = None
            for line in lines:
                if line.startswith('.class'):
                    m = re.search(r'(L\S+;)', line)
                    if m: smali_class = m.group(1)
                    break
            if not smali_class:
                continue

            # Parse methods and their invoke targets
            current_method_sig = None

            for line in lines:
                stripped = line.strip()

                if stripped.startswith('.method '):
                    mname, mparams, mret = parse_method_sig_from_smali_line(stripped)
                    if mname:
                        current_method_sig = smali_to_java_sig(smali_class, mname, mparams, mret)
                        all_methods.add(current_method_sig)
                        total_methods += 1
                    else:
                        current_method_sig = None

                elif stripped == '.end method':
                    current_method_sig = None

                elif current_method_sig and stripped.startswith('invoke-'):
                    callee_sig, invoke_kind = parse_invoke_target(stripped)
                    if callee_sig:
                        callees[current_method_sig].add(callee_sig)
                        callers[callee_sig].add(current_method_sig)
                        all_methods.add(callee_sig)
                        total_edges += 1

    print(f"  Scanned {total_files} smali files")
    print(f"  Methods found: {total_methods}")
    print(f"  Call edges:    {total_edges}")
    print(f"  Unique nodes:  {len(all_methods)}")

    return callees, callers, all_methods


def resolve_seed(seed_sig, all_methods):
    """Try exact match, then fuzzy match by class+method name."""
    if seed_sig in all_methods:
        return seed_sig

    # Fuzzy: match class name + method name ignoring params/return
    m = re.match(r'<([^:]+):\s*\S+\s+(\w+)\(', seed_sig)
    if not m:
        return None
    target_class = m.group(1)
    target_method = m.group(2)

    candidates = []
    for method in all_methods:
        if target_class in method and target_method in method:
            candidates.append(method)

    if len(candidates) == 1:
        return candidates[0]
    elif len(candidates) > 1:
        # Prefer exact class match
        for c in candidates:
            if f'<{target_class}:' in c:
                return c
        return candidates[0]

    return None


def trace_chain(start, graph, max_depth, direction_label):
    """
    BFS traversal from start through the graph up to max_depth.
    Returns list of (depth, method, sec_tag).
    """
    results = []
    visited = {start}
    queue = [(start, 0)]

    while queue:
        current, depth = queue.pop(0)
        if depth >= max_depth:
            continue

        for neighbor in sorted(graph.get(current, set())):
            if neighbor in visited:
                continue
            visited.add(neighbor)

            tag = get_sec_tag(neighbor)
            results.append((depth + 1, neighbor, tag))
            queue.append((neighbor, depth + 1))

    return results


def short_label(sig):
    m = re.match(r'<([^:]+):\s*\S+\s+(\w+)\(', sig)
    if m:
        cls = m.group(1).split('.')[-1]
        return f"{cls}.{m.group(2)}()"
    return sig[:50]


def main():
    parser = argparse.ArgumentParser(
        description='Build call graph from smali invoke instructions')
    parser.add_argument('--smali-dir', required=True, help='Root smali directory')
    parser.add_argument('--entry-points', required=True, help='soot_entry_points.txt from Step 4')
    parser.add_argument('--output', required=True, help='Output directory')
    parser.add_argument('--depth', type=int, default=5, help='Max traversal depth')
    parser.add_argument('--filter-java', action='store_true', default=True,
                        help='Filter out java.*/javax.*/android.util.Log edges (default: on)')
    parser.add_argument('--no-filter-java', action='store_true',
                        help='Keep all edges including java.* stdlib')
    args = parser.parse_args()

    filter_stdlib = not args.no_filter_java

    out_dir = Path(args.output)
    out_dir.mkdir(parents=True, exist_ok=True)

    # Load entry points
    seeds = []
    with open(args.entry_points) as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith('#'):
                seeds.append(line)
    print(f"[Step 5] Loaded {len(seeds)} seed method signatures.")

    # Build call graph from smali
    print(f"[Step 5] Building call graph from smali...")
    raw_callees, raw_callers, all_methods = build_call_graph(args.smali_dir)

    # Optionally filter stdlib noise
    if filter_stdlib:
        FILTER_PREFIXES = (
            '<java.lang.Object:', '<java.lang.String:', '<java.lang.StringBuilder:',
            '<java.lang.Integer:', '<java.lang.Long:', '<java.lang.Boolean:',
            '<java.lang.Float:', '<java.lang.Double:', '<java.lang.Class:',
            '<java.lang.Math:', '<java.lang.System:',
            '<java.util.Arrays:', '<java.io.PrintStream:',
            '<android.util.Log:', '<android.util.Slog:',
        )
        callees = defaultdict(set)
        callers = defaultdict(set)
        for src, tgts in raw_callees.items():
            for tgt in tgts:
                if not tgt.startswith(FILTER_PREFIXES):
                    callees[src].add(tgt)
                    callers[tgt].add(src)
        filtered_edges = sum(len(v) for v in raw_callees.values()) - sum(len(v) for v in callees.values())
        print(f"  Filtered {filtered_edges} stdlib edges.")
    else:
        callees = raw_callees
        callers = raw_callers

    # Resolve seeds
    print(f"\n[Step 5] Resolving seed methods...")
    resolved_seeds = []
    unresolved = 0
    for seed in seeds:
        resolved = resolve_seed(seed, all_methods)
        if resolved:
            resolved_seeds.append((seed, resolved))
        else:
            unresolved += 1

    print(f"  Resolved: {len(resolved_seeds)} | Unresolved: {unresolved}")

    if not resolved_seeds:
        print("  No seeds resolved. Check that smali-dir matches the entry-points file.")
        return

    # ── Trace and output ──
    callers_path = out_dir / 'callers.txt'
    callees_path = out_dir / 'callees.txt'
    csv_path = out_dir / 'call_chains.csv'
    dot_path = out_dir / 'seed_callgraph.dot'

    dot_nodes = {}  # sig -> {'is_seed': bool, 'tag': str or None}
    dot_edges = set()

    seed_sigs = set(s[1] for s in resolved_seeds)

    with open(callers_path, 'w') as cf, \
         open(callees_path, 'w') as ef, \
         open(csv_path, 'w', newline='') as csvf:

        cw = csv.writer(csvf)
        cw.writerow(['seed_original', 'seed_resolved', 'direction', 'depth',
                      'method', 'security_tag', 'short_label'])

        cf.write(f"# CALLER CHAINS (backward from seeds)\n# Depth: {args.depth}\n")
        cf.write(f"# Resolved {len(resolved_seeds)} of {len(seeds)} seeds\n\n")
        ef.write(f"# CALLEE CHAINS (forward from seeds)\n# Depth: {args.depth}\n")
        ef.write(f"# Resolved {len(resolved_seeds)} of {len(seeds)} seeds\n\n")

        for idx, (orig_sig, resolved_sig) in enumerate(resolved_seeds):
            header = f"{'='*70}\nSeed #{idx+1}: {resolved_sig}\n"
            if orig_sig != resolved_sig:
                header += f"  (original: {orig_sig})\n"
            header += f"{'='*70}\n"

            # Track seed in DOT
            dot_nodes[resolved_sig] = {'is_seed': True, 'tag': get_sec_tag(resolved_sig)}

            # ── Backward (callers) ──
            cf.write(header)
            caller_chain = trace_chain(resolved_sig, callers, args.depth, 'caller')
            if caller_chain:
                for depth, method, tag in caller_chain:
                    indent = '  ' * depth
                    tag_str = f" [{tag}]" if tag else ""
                    seed_mark = " ★" if method in seed_sigs else ""
                    cf.write(f"{indent}← {method}{tag_str}{seed_mark}\n")
                    cw.writerow([orig_sig, resolved_sig, 'caller', depth,
                                 method, tag or '', short_label(method)])

                    dot_nodes.setdefault(method, {'is_seed': method in seed_sigs, 'tag': tag})
                    dot_edges.add((method, resolved_sig) if depth == 1 else (method, method))
            else:
                cf.write("  (no callers found — may be a top-level entry/binder)\n")
            cf.write("\n")

            # ── Forward (callees) ──
            ef.write(header)
            callee_chain = trace_chain(resolved_sig, callees, args.depth, 'callee')
            if callee_chain:
                for depth, method, tag in callee_chain:
                    indent = '  ' * depth
                    tag_str = f" [{tag}]" if tag else ""
                    seed_mark = " ★" if method in seed_sigs else ""
                    ef.write(f"{indent}→ {method}{tag_str}{seed_mark}\n")
                    cw.writerow([orig_sig, resolved_sig, 'callee', depth,
                                 method, tag or '', short_label(method)])

                    dot_nodes.setdefault(method, {'is_seed': method in seed_sigs, 'tag': tag})
                    dot_edges.add((resolved_sig, method) if depth == 1 else (method, method))
            else:
                ef.write("  (no callees found)\n")
            ef.write("\n")

    print(f"\n  Wrote: {callers_path}")
    print(f"  Wrote: {callees_path}")
    print(f"  Wrote: {csv_path}")

    # ── DOT graph (limited to nodes within depth of seeds) ──
    # Rebuild edges properly from the traced chains
    dot_edges_proper = set()
    for idx, (orig_sig, resolved_sig) in enumerate(resolved_seeds):
        # Callers
        caller_chain = trace_chain(resolved_sig, callers, args.depth, 'caller')
        prev_at_depth = {0: resolved_sig}
        for depth, method, tag in caller_chain:
            parent = prev_at_depth.get(depth - 1, resolved_sig)
            dot_edges_proper.add((method, parent))
            prev_at_depth[depth] = method

        # Callees
        callee_chain = trace_chain(resolved_sig, callees, args.depth, 'callee')
        prev_at_depth = {0: resolved_sig}
        for depth, method, tag in callee_chain:
            parent = prev_at_depth.get(depth - 1, resolved_sig)
            dot_edges_proper.add((parent, method))
            prev_at_depth[depth] = method

    with open(dot_path, 'w') as f:
        f.write("digraph SeedCallGraph {\n")
        f.write("  rankdir=TB;\n")
        f.write("  node [shape=box, fontname=\"Courier\", fontsize=8];\n")
        f.write("  edge [color=\"#666666\"];\n\n")

        for sig, info in dot_nodes.items():
            label = short_label(sig).replace('"', '\\"')
            safe_id = sig.replace('"', '\\"').replace('<', '').replace('>', '')

            if info['is_seed']:
                style = 'style=filled, fillcolor="#FFD4D4", color="#CC0000", penwidth=2'
            elif info['tag']:
                style = 'style=filled, fillcolor="#FFF3CD", color="#856404"'
                label += f"\\n[{info['tag']}]"
            else:
                style = 'style=filled, fillcolor="#E8F4FD"'

            f.write(f'  "{safe_id}" [label="{label}", {style}];\n')

        f.write("\n")
        for src, tgt in dot_edges_proper:
            src_id = src.replace('"', '\\"').replace('<', '').replace('>', '')
            tgt_id = tgt.replace('"', '\\"').replace('<', '').replace('>', '')
            if src_id != tgt_id:
                f.write(f'  "{src_id}" -> "{tgt_id}";\n')

        f.write("}\n")
    print(f"  Wrote: {dot_path}")

    # ── Security-tagged summary ──
    sec_path = out_dir / 'security_relevant_calls.txt'
    with open(sec_path, 'w') as f:
        f.write("# Security-relevant methods reachable from seeds\n")
        f.write(f"# {'='*60}\n\n")

        tag_to_methods = defaultdict(set)
        for idx, (orig_sig, resolved_sig) in enumerate(resolved_seeds):
            for depth, method, tag in trace_chain(resolved_sig, callees, args.depth, 'callee'):
                if tag:
                    tag_to_methods[tag].add((resolved_sig, method, depth))
            for depth, method, tag in trace_chain(resolved_sig, callers, args.depth, 'caller'):
                if tag:
                    tag_to_methods[tag].add((resolved_sig, method, depth))

        for tag in sorted(tag_to_methods.keys()):
            entries = tag_to_methods[tag]
            f.write(f"\n{'─'*60}\n")
            f.write(f"[{tag}] — {len(entries)} reachable from seeds\n")
            f.write(f"{'─'*60}\n")
            for seed_sig, method, depth in sorted(entries, key=lambda x: x[2]):
                f.write(f"  depth={depth}  {short_label(method):<40s}  seed={short_label(seed_sig)}\n")
    print(f"  Wrote: {sec_path}")

    # ── Summary ──
    total_caller_chain = 0
    total_callee_chain = 0
    for _, resolved_sig in resolved_seeds:
        total_caller_chain += len(trace_chain(resolved_sig, callers, args.depth, 'caller'))
        total_callee_chain += len(trace_chain(resolved_sig, callees, args.depth, 'callee'))

    print(f"\n  Summary:")
    print(f"    Seeds provided:         {len(seeds)}")
    print(f"    Seeds resolved:         {len(resolved_seeds)}")
    print(f"    Total CG edges:         {sum(len(v) for v in callees.values())}")
    print(f"    Caller chain entries:   {total_caller_chain}")
    print(f"    Callee chain entries:   {total_callee_chain}")
    print(f"    Security-tagged calls:  {sum(len(v) for v in tag_to_methods.values())}")
    print(f"    DOT nodes:              {len(dot_nodes)}")


if __name__ == '__main__':
    main()
