#!/usr/bin/env python3
"""
step6_propagation_tracker.py — Track how each hardcoded package name
propagates through the device framework.

Synthesizes Step 3 (references), Step 4 (method analysis), and Step 5
(call graph) results into per-package propagation chains.

For each package name found in the framework, produces:
  - Where it's defined (JAR, class, method, register)
  - How it's used (allowlist check, string equals, collection add, etc.)
  - What enforcement it gates (permission grant, early return, bypass, etc.)
  - Who calls into that enforcement (caller chain from Step 5)
  - What downstream effects the enforcement triggers (callee chain)
  - Cross-JAR propagation (same package in multiple JARs/services)

Usage:
    python3 step6_propagation_tracker.py \\
        --work-dir /data/work/vivo/ \\
        --output   /data/work/vivo/step6_propagation/

    # Or across multiple ROMs:
    python3 step6_propagation_tracker.py \\
        --work-dirs /data/work/vivo/ /data/work/oneplus/ /data/work/miui/ \\
        --output    /data/results/cross_device_propagation/
"""

import argparse
import csv
import json
import os
import re
from collections import defaultdict
from dataclasses import dataclass, field
from pathlib import Path
from typing import Dict, List, Optional, Set, Tuple


@dataclass
class Reference:
    package_name: str
    string_type: str
    is_known: bool
    jar: str
    cls: str
    method_name: str
    method_sig: str
    line: int
    register: str
    usage_type: str
    usage_detail: str
    file: str


@dataclass
class MethodAnalysis:
    method_sig: str
    patterns: List[str]
    flow_summary: str
    line_count: int


@dataclass
class CallChainEntry:
    seed_sig: str
    direction: str  # 'caller' or 'callee'
    depth: int
    method: str
    security_tag: str
    short_label: str


@dataclass
class PropagationNode:
    """One occurrence of a package name in the framework."""
    ref: Reference
    method_analysis: Optional[MethodAnalysis] = None
    callers: List[CallChainEntry] = field(default_factory=list)
    callees: List[CallChainEntry] = field(default_factory=list)


@dataclass
class PackagePropagation:
    """Full propagation trace for one package name across the device."""
    package_name: str
    is_known: bool
    nodes: List[PropagationNode] = field(default_factory=list)
    jars: Set[str] = field(default_factory=set)
    classes: Set[str] = field(default_factory=set)
    usage_types: Set[str] = field(default_factory=set)
    enforcement_patterns: Set[str] = field(default_factory=set)
    security_tags_reachable: Set[str] = field(default_factory=set)
    caller_entry_points: Set[str] = field(default_factory=set)
    callee_endpoints: Set[str] = field(default_factory=set)


def load_references(work_dir: Path) -> List[Reference]:
    """Load from step3b_filtered (preferred) or step3_refs."""
    for subdir in ['step3b_filtered', 'step3_refs']:
        csv_path = work_dir / subdir / 'references.csv'
        if csv_path.exists():
            refs = []
            with open(csv_path) as f:
                reader = csv.DictReader(f)
                for row in reader:
                    refs.append(Reference(
                        package_name=row.get('package_name', ''),
                        string_type=row.get('string_type', ''),
                        is_known=row.get('is_known', '').lower() == 'true',
                        jar=row.get('jar', ''),
                        cls=row.get('class', ''),
                        method_name=row.get('method_name', ''),
                        method_sig=row.get('method_sig', ''),
                        line=int(row.get('line', 0)),
                        register=row.get('register', ''),
                        usage_type=row.get('usage_type', ''),
                        usage_detail=row.get('usage_detail', ''),
                        file=row.get('file', ''),
                    ))
            return refs
    return []


def load_method_analyses(work_dir: Path) -> Dict[str, MethodAnalysis]:
    """Load enforcement_patterns.csv from Step 4."""
    csv_path = work_dir / 'step4_analysis' / 'enforcement_patterns.csv'
    analyses = {}
    if not csv_path.exists():
        return analyses
    with open(csv_path) as f:
        reader = csv.DictReader(f)
        for row in reader:
            sig = row.get('method_sig', '')
            analyses[sig] = MethodAnalysis(
                method_sig=sig,
                patterns=row.get('patterns', '').split(';') if row.get('patterns') else [],
                flow_summary=row.get('register_flow_summary', ''),
                line_count=int(row.get('method_line_count', 0)),
            )
    return analyses


def load_call_chains(work_dir: Path) -> Dict[str, List[CallChainEntry]]:
    """Load call_chains.csv from Step 5, grouped by seed."""
    csv_path = work_dir / 'step5_callgraph' / 'call_chains.csv'
    chains = defaultdict(list)
    if not csv_path.exists():
        return chains
    with open(csv_path) as f:
        reader = csv.DictReader(f)
        for row in reader:
            seed = row.get('seed_resolved', row.get('seed_original', ''))
            entry = CallChainEntry(
                seed_sig=seed,
                direction=row.get('direction', ''),
                depth=int(row.get('depth', 0)),
                method=row.get('method', ''),
                security_tag=row.get('security_tag', ''),
                short_label=row.get('short_label', ''),
            )
            chains[seed].append(entry)
    return chains


def build_propagation(
    refs: List[Reference],
    analyses: Dict[str, MethodAnalysis],
    chains: Dict[str, List[CallChainEntry]],
) -> Dict[str, PackagePropagation]:
    """Build propagation traces grouped by package name."""
    propagations: Dict[str, PackagePropagation] = {}

    for ref in refs:
        pkg = ref.package_name
        if pkg not in propagations:
            propagations[pkg] = PackagePropagation(
                package_name=pkg,
                is_known=ref.is_known,
            )
        prop = propagations[pkg]

        node = PropagationNode(ref=ref)

        # Attach method analysis
        if ref.method_sig in analyses:
            node.method_analysis = analyses[ref.method_sig]
            for p in node.method_analysis.patterns:
                if p:
                    prop.enforcement_patterns.add(p)

        # Attach call chains
        if ref.method_sig in chains:
            for entry in chains[ref.method_sig]:
                if entry.direction == 'caller':
                    node.callers.append(entry)
                    if entry.depth == 1:
                        prop.caller_entry_points.add(entry.method)
                    if entry.security_tag:
                        prop.security_tags_reachable.add(entry.security_tag)
                elif entry.direction == 'callee':
                    node.callees.append(entry)
                    if entry.security_tag:
                        prop.security_tags_reachable.add(entry.security_tag)
                    prop.callee_endpoints.add(entry.method)

        prop.nodes.append(node)
        prop.jars.add(ref.jar)
        prop.classes.add(ref.cls)
        if ref.usage_type:
            prop.usage_types.add(ref.usage_type)

    return propagations


def short_sig(sig):
    m = re.match(r'<([^:]+):\s*\S+\s+(\w+)\(', sig)
    if m:
        cls = m.group(1).split('.')[-1]
        return f"{cls}.{m.group(2)}()"
    return sig[:60]


def write_per_package_reports(propagations, out_dir):
    """Write a detailed report per package name."""
    pkg_dir = out_dir / 'per_package'
    pkg_dir.mkdir(exist_ok=True)

    for pkg, prop in sorted(propagations.items()):
        safe = pkg.replace('.', '_')
        path = pkg_dir / f'{safe}.txt'

        with open(path, 'w') as f:
            known_tag = " [KNOWN]" if prop.is_known else ""
            f.write(f"{'#'*70}\n")
            f.write(f"# Propagation: {pkg}{known_tag}\n")
            f.write(f"{'#'*70}\n\n")

            f.write(f"JARs:                 {', '.join(sorted(prop.jars))}\n")
            f.write(f"Classes:              {len(prop.classes)}\n")
            f.write(f"Occurrences:          {len(prop.nodes)}\n")
            f.write(f"Usage types:          {', '.join(sorted(prop.usage_types)) or '(none)'}\n")
            f.write(f"Enforcement patterns: {', '.join(sorted(prop.enforcement_patterns)) or '(none)'}\n")
            f.write(f"Security tags:        {', '.join(sorted(prop.security_tags_reachable)) or '(none)'}\n")
            f.write(f"\n")

            for i, node in enumerate(prop.nodes):
                ref = node.ref
                f.write(f"{'─'*60}\n")
                f.write(f"Occurrence #{i+1}\n")
                f.write(f"{'─'*60}\n")
                f.write(f"  JAR:      {ref.jar}\n")
                f.write(f"  Class:    {ref.cls}\n")
                f.write(f"  Method:   {ref.method_sig}\n")
                f.write(f"  Line:     {ref.line}\n")
                f.write(f"  Register: {ref.register} := \"{ref.package_name}\"\n")
                f.write(f"  Usage:    [{ref.usage_type}] {ref.usage_detail[:100]}\n")

                if node.method_analysis:
                    ma = node.method_analysis
                    f.write(f"  Patterns: {', '.join(ma.patterns) or '(none)'}\n")
                    if ma.flow_summary:
                        f.write(f"  Flow:     {ma.flow_summary[:120]}\n")

                if node.callers:
                    f.write(f"\n  CALLERS (who invokes this method):\n")
                    for c in sorted(node.callers, key=lambda x: x.depth):
                        tag = f" [{c.security_tag}]" if c.security_tag else ""
                        f.write(f"    {'  '*c.depth}← {short_sig(c.method)}{tag}\n")

                if node.callees:
                    f.write(f"\n  CALLEES (what this method invokes):\n")
                    for c in sorted(node.callees, key=lambda x: x.depth):
                        tag = f" [{c.security_tag}]" if c.security_tag else ""
                        f.write(f"    {'  '*c.depth}→ {short_sig(c.method)}{tag}\n")

                f.write(f"\n")


def write_master_report(propagations, out_dir, rom_name=''):
    """Write a single master report with all packages."""
    path = out_dir / 'propagation_report.txt'

    # Sort: known first, then by occurrence count descending
    sorted_pkgs = sorted(
        propagations.values(),
        key=lambda p: (not p.is_known, -len(p.nodes), p.package_name)
    )

    with open(path, 'w') as f:
        title = f"Package Propagation Report"
        if rom_name:
            title += f" — {rom_name}"
        f.write(f"{'='*70}\n{title}\n{'='*70}\n\n")
        f.write(f"Total packages tracked: {len(propagations)}\n")
        f.write(f"Known packages:         {sum(1 for p in propagations.values() if p.is_known)}\n")
        f.write(f"New discoveries:        {sum(1 for p in propagations.values() if not p.is_known)}\n\n")

        # Summary table
        f.write(f"{'Package':<55s} {'Refs':>4s} {'JARs':>4s} {'Usage Types':<30s} {'Patterns':<30s} {'Sec Tags'}\n")
        f.write(f"{'-'*55} {'-'*4} {'-'*4} {'-'*30} {'-'*30} {'-'*20}\n")

        for prop in sorted_pkgs:
            known = '*' if prop.is_known else ' '
            f.write(f"{known}{prop.package_name:<54s} {len(prop.nodes):>4d} {len(prop.jars):>4d} "
                    f"{','.join(sorted(prop.usage_types))[:30]:<30s} "
                    f"{','.join(sorted(prop.enforcement_patterns))[:30]:<30s} "
                    f"{','.join(sorted(prop.security_tags_reachable))[:20]}\n")

        # Detailed sections
        f.write(f"\n\n{'='*70}\nDETAILED PROPAGATION CHAINS\n{'='*70}\n")

        for prop in sorted_pkgs:
            known_tag = " [KNOWN]" if prop.is_known else ""
            f.write(f"\n{'━'*70}\n")
            f.write(f"  {prop.package_name}{known_tag}\n")
            f.write(f"  JARs: {', '.join(sorted(prop.jars))}\n")
            f.write(f"  Enforcement: {', '.join(sorted(prop.enforcement_patterns)) or 'none detected'}\n")
            f.write(f"  Security tags reachable: {', '.join(sorted(prop.security_tags_reachable)) or 'none'}\n")
            f.write(f"{'━'*70}\n\n")

            for i, node in enumerate(prop.nodes):
                ref = node.ref
                f.write(f"  [{i+1}] {short_sig(ref.method_sig)} in {ref.jar}\n")
                f.write(f"      {ref.register} := \"{ref.package_name}\" → [{ref.usage_type}]\n")

                if node.method_analysis and node.method_analysis.patterns:
                    f.write(f"      Patterns: {', '.join(node.method_analysis.patterns)}\n")

                # Show top callers/callees (depth 1 only for readability)
                d1_callers = [c for c in node.callers if c.depth == 1]
                d1_callees = [c for c in node.callees if c.depth == 1 and c.security_tag]
                if d1_callers:
                    f.write(f"      Called by: {', '.join(short_sig(c.method) for c in d1_callers[:5])}\n")
                if d1_callees:
                    f.write(f"      Reaches:  {', '.join(f'{short_sig(c.method)}[{c.security_tag}]' for c in d1_callees[:5])}\n")
                f.write(f"\n")


def write_csv_summary(propagations, out_dir):
    """Machine-readable summary."""
    path = out_dir / 'propagation_summary.csv'
    with open(path, 'w', newline='') as f:
        w = csv.writer(f)
        w.writerow([
            'package_name', 'is_known', 'num_refs', 'num_jars', 'jars',
            'num_classes', 'usage_types', 'enforcement_patterns',
            'security_tags', 'num_callers', 'num_callees'
        ])
        for pkg in sorted(propagations):
            prop = propagations[pkg]
            w.writerow([
                prop.package_name,
                prop.is_known,
                len(prop.nodes),
                len(prop.jars),
                ';'.join(sorted(prop.jars)),
                len(prop.classes),
                ';'.join(sorted(prop.usage_types)),
                ';'.join(sorted(prop.enforcement_patterns)),
                ';'.join(sorted(prop.security_tags_reachable)),
                len(prop.caller_entry_points),
                len(prop.callee_endpoints),
            ])


def write_enforcement_map(propagations, out_dir):
    """Group packages by enforcement pattern — the key output for the paper."""
    path = out_dir / 'by_enforcement_pattern.txt'

    pattern_to_pkgs = defaultdict(list)
    for prop in propagations.values():
        if prop.enforcement_patterns:
            for pat in prop.enforcement_patterns:
                pattern_to_pkgs[pat].append(prop)
        else:
            pattern_to_pkgs['(no pattern detected)'].append(prop)

    with open(path, 'w') as f:
        f.write("Packages Grouped by Enforcement Pattern\n")
        f.write(f"{'='*60}\n\n")

        for pattern in sorted(pattern_to_pkgs.keys()):
            props = pattern_to_pkgs[pattern]
            props.sort(key=lambda p: (not p.is_known, -len(p.nodes)))

            f.write(f"\n{'─'*60}\n")
            f.write(f"[{pattern}] — {len(props)} packages\n")
            f.write(f"{'─'*60}\n")

            for prop in props:
                known = " [KNOWN]" if prop.is_known else ""
                jars = ', '.join(sorted(prop.jars))
                sec = ', '.join(sorted(prop.security_tags_reachable))
                f.write(f"  {prop.package_name}{known}\n")
                f.write(f"    {len(prop.nodes)} refs in [{jars}]")
                if sec:
                    f.write(f"  → reaches: {sec}")
                f.write(f"\n")
                # Show one example usage
                if prop.nodes:
                    n = prop.nodes[0]
                    f.write(f"    e.g. {short_sig(n.ref.method_sig)} [{n.ref.usage_type}]\n")


def write_cross_device_comparison(all_propagations, out_dir):
    """Compare package presence across devices."""
    path = out_dir / 'cross_device.txt'

    # Collect all packages across all devices
    all_pkgs = set()
    for device, props in all_propagations.items():
        all_pkgs.update(props.keys())

    devices = sorted(all_propagations.keys())

    with open(path, 'w') as f:
        f.write("Cross-Device Package Propagation Comparison\n")
        f.write(f"{'='*70}\n")
        f.write(f"Devices: {', '.join(devices)}\n\n")

        # Header
        f.write(f"{'Package':<50s}")
        for d in devices:
            f.write(f" {d:>10s}")
        f.write(f"  Patterns\n")
        f.write(f"{'-'*50}")
        for d in devices:
            f.write(f" {'-'*10}")
        f.write(f"  {'-'*30}\n")

        for pkg in sorted(all_pkgs):
            f.write(f"{pkg:<50s}")
            all_patterns = set()
            for d in devices:
                prop = all_propagations[d].get(pkg)
                if prop:
                    f.write(f" {len(prop.nodes):>10d}")
                    all_patterns.update(prop.enforcement_patterns)
                else:
                    f.write(f" {'—':>10s}")
            f.write(f"  {','.join(sorted(all_patterns)) or ''}\n")

    # Also CSV
    csv_path = out_dir / 'cross_device.csv'
    with open(csv_path, 'w', newline='') as f:
        w = csv.writer(f)
        header = ['package_name'] + [f'{d}_refs' for d in devices] + \
                 [f'{d}_patterns' for d in devices] + ['union_patterns']
        w.writerow(header)
        for pkg in sorted(all_pkgs):
            row = [pkg]
            all_patterns = set()
            for d in devices:
                prop = all_propagations[d].get(pkg)
                row.append(len(prop.nodes) if prop else 0)
            for d in devices:
                prop = all_propagations[d].get(pkg)
                pats = ';'.join(sorted(prop.enforcement_patterns)) if prop else ''
                row.append(pats)
                if prop:
                    all_patterns.update(prop.enforcement_patterns)
            row.append(';'.join(sorted(all_patterns)))
            w.writerow(row)


def process_single_device(work_dir: Path, out_dir: Path, rom_name: str = ''):
    """Process one device's pipeline output."""
    print(f"\n  Loading references...")
    refs = load_references(work_dir)
    print(f"    {len(refs)} references")

    print(f"  Loading method analyses...")
    analyses = load_method_analyses(work_dir)
    print(f"    {len(analyses)} methods analyzed")

    print(f"  Loading call chains...")
    chains = load_call_chains(work_dir)
    print(f"    {len(chains)} seed methods with chains")

    print(f"  Building propagation traces...")
    propagations = build_propagation(refs, analyses, chains)
    print(f"    {len(propagations)} unique packages tracked")

    out_dir.mkdir(parents=True, exist_ok=True)

    write_per_package_reports(propagations, out_dir)
    write_master_report(propagations, out_dir, rom_name)
    write_csv_summary(propagations, out_dir)
    write_enforcement_map(propagations, out_dir)

    print(f"\n  Output:")
    print(f"    {out_dir / 'propagation_report.txt'}")
    print(f"    {out_dir / 'propagation_summary.csv'}")
    print(f"    {out_dir / 'by_enforcement_pattern.txt'}")
    print(f"    {out_dir / 'per_package/'}")

    return propagations


def main():
    parser = argparse.ArgumentParser(
        description='Track propagation of hardcoded package names through device framework')
    parser.add_argument('--work-dir', default=None,
                        help='Single device work directory (contains step3/step4/step5)')
    parser.add_argument('--work-dirs', nargs='+', default=None,
                        help='Multiple device work directories for cross-device comparison')
    parser.add_argument('--output', required=True, help='Output directory')
    parser.add_argument('--rom-name', default='', help='ROM label (for single device)')
    args = parser.parse_args()

    out_dir = Path(args.output)

    if args.work_dirs:
        # Multi-device mode
        all_propagations = {}
        for wd in args.work_dirs:
            wd = Path(wd)
            device_name = wd.name
            print(f"\n[Step 6] Processing: {device_name}")
            device_out = out_dir / device_name
            props = process_single_device(wd, device_out, device_name)
            all_propagations[device_name] = props

        print(f"\n[Step 6] Cross-device comparison...")
        write_cross_device_comparison(all_propagations, out_dir)
        print(f"  Wrote: {out_dir / 'cross_device.txt'}")
        print(f"  Wrote: {out_dir / 'cross_device.csv'}")

    elif args.work_dir:
        # Single device mode
        print(f"[Step 6] Propagation tracking: {args.work_dir}")
        process_single_device(Path(args.work_dir), out_dir, args.rom_name)

    else:
        parser.error("Provide --work-dir or --work-dirs")

    print(f"\n[Step 6] Done.")


if __name__ == '__main__':
    main()
