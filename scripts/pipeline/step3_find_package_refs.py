#!/usr/bin/env python3
"""
step3_find_package_refs.py — Discover ALL hardcoded package names in smali.

Scans every const-string in decompiled smali for strings that look like
Android package names. No pre-defined list required — this is discovery mode.

Usage:
    python3 step3_find_package_refs.py \
        --smali-dir /data/work/oneplus/smali/ \
        --output    /data/work/oneplus/step3_results/

Optional:
    --known-packages /path/to/package_names.txt   (tag known vs unknown)
    --min-segments 3                               (min dot-separated parts)
    --exclude-prefixes android.permission,java.
"""

import argparse
import csv
import os
import re
import sys
from collections import defaultdict
from pathlib import Path

# ═══════════════════════════════════════════════════════════════════
# Package name detection heuristics
# ═══════════════════════════════════════════════════════════════════

PKG_REGEX = re.compile(
    r'^[a-zA-Z][a-zA-Z0-9_]*'
    r'(\.[a-zA-Z][a-zA-Z0-9_]*){2,}$'
)

EXCLUDE_PREFIXES = [
    'android.permission.',
    'android.permission-group.',
    'com.android.permission.',
    'android.intent.action.',
    'android.intent.category.',
    'android.intent.extra.',
    'android.media.action.',
    'android.provider.Telephony.',
    'android.app.action.',
    'android.settings.',
    'android.net.conn.',
    'android.net.wifi.',
    'android.bluetooth.adapter.',
    'android.bluetooth.device.',
    'android.bluetooth.a2dp.',
    'android.nfc.action.',
    'android.hardware.usb.',
    'android.service.',
    'android.appwidget.',
    'android.speech.',
    'android.accounts.',
    'com.android.launcher.',
    'com.android.internal.',
    'org.xmlpull.v1.',
    'org.xml.sax.',
    'org.w3c.dom.',
    'org.json.',
    'org.apache.http.',
    'org.apache.harmony.',
    'javax.xml.',
    'javax.net.',
    'javax.crypto.',
    'javax.security.',
    'java.lang.',
    'java.util.',
    'java.io.',
    'java.net.',
    'java.security.',
    'java.text.',
    'dalvik.system.',
    'sun.misc.',
    'sun.security.',
    'libcore.',
]

EXCLUDE_SUFFIXES = [
    '.BIND', '.LAUNCH', '.VIEW', '.SEND', '.EDIT',
    '.PICK', '.SEARCH', '.MAIN', '.READ', '.WRITE', '.PROVIDER',
]

EXCLUDE_CONTAINS = [
    '://', 'http.', 'https.',
    '.xml', '.png', '.jpg', '.json', '.so', '.dex', '.apk', '.properties',
    '/', '\\', ' ',
    'EXTRA_', 'ACTION_', 'FEATURE_', 'COLUMN_', 'KEY_',
    '_URI', 'content://', 'file://',
]


def looks_like_package_name(s):
    if not s or len(s) < 5 or len(s) > 200:
        return False
    if not PKG_REGEX.match(s):
        return False
    for prefix in EXCLUDE_PREFIXES:
        if s.startswith(prefix):
            return False
    for suffix in EXCLUDE_SUFFIXES:
        if s.endswith(suffix):
            return False
    for marker in EXCLUDE_CONTAINS:
        if marker in s:
            return False
    alpha_chars = [c for c in s if c.isalpha()]
    if alpha_chars:
        upper_ratio = sum(1 for c in alpha_chars if c.isupper()) / len(alpha_chars)
        if upper_ratio > 0.3:
            return False
    segments = s.split('.')
    upper_segments = sum(1 for seg in segments if seg[0].isupper())
    if upper_segments > len(segments) * 0.5:
        return False
    if all(len(seg) <= 2 for seg in segments):
        return False
    return True


# ═══════════════════════════════════════════════════════════════════
# Smali helpers
# ═══════════════════════════════════════════════════════════════════

def smali_sig_to_java(smali_class, smali_method_line):
    java_class = smali_class.replace('/', '.').lstrip('L').rstrip(';')
    m = re.match(r'\.method\s+(.+?)\s+(\S+)\(([^)]*)\)(\S+)', smali_method_line)
    if m:
        name = m.group(2)
        params = m.group(3)
        ret = m.group(4)
        return f"<{java_class}: {_d2j(ret)} {name}({_params(params)})>"
    return f"<{java_class}: ???>"


def _d2j(t):
    m = {'V':'void','Z':'boolean','B':'byte','S':'short','C':'char',
         'I':'int','J':'long','F':'float','D':'double'}
    if t in m: return m[t]
    if t.startswith('['): return _d2j(t[1:]) + '[]'
    if t.startswith('L') and t.endswith(';'): return t[1:-1].replace('/','.')
    return t


def _params(p):
    if not p: return ''
    result, i = [], 0
    while i < len(p):
        arr = ''
        while i < len(p) and p[i] == '[': arr += '[]'; i += 1
        if i >= len(p): break
        if p[i] == 'L':
            end = p.index(';', i)
            result.append(p[i+1:end].replace('/','.')+arr); i = end+1
        else:
            m = {'V':'void','Z':'boolean','B':'byte','S':'short','C':'char',
                 'I':'int','J':'long','F':'float','D':'double'}
            result.append(m.get(p[i],p[i])+arr); i += 1
    return ','.join(result)


def find_register_usage(lines, start_idx, register, max_lookahead=30):
    usages = []
    end_idx = min(start_idx + max_lookahead, len(lines))
    for i in range(start_idx + 1, end_idx):
        line = lines[i].strip()
        if line == '.end method': break
        if re.match(rf'(const-string|const-string/jumbo|move-result-object)\s+{re.escape(register)}\b', line):
            break
        if re.search(rf'\b{re.escape(register)}\b', line):
            utype = 'unknown'
            if line.startswith('invoke-'): utype = 'invoke'
            elif 'put-object' in line: utype = 'field_store'
            elif 'aput' in line: utype = 'array_store'
            elif line.startswith('if-eq') or line.startswith('if-ne'): utype = 'string_compare'
            elif line.startswith('move-object'): utype = 'move'
            elif line.startswith('filled-new-array'): utype = 'array_init'
            usages.append((i - start_idx, utype, line))
    return usages


# ═══════════════════════════════════════════════════════════════════
# File scanner
# ═══════════════════════════════════════════════════════════════════

def scan_smali_file(filepath, jar_name, min_segments):
    results = []
    try:
        with open(filepath, 'r', errors='replace') as f:
            lines = f.readlines()
    except Exception:
        return results

    smali_class = None
    for line in lines:
        if line.startswith('.class'):
            m = re.search(r'(L\S+;)', line)
            if m: smali_class = m.group(1)
            break
    if not smali_class:
        return results

    java_class = smali_class.replace('/', '.').lstrip('L').rstrip(';')
    current_method_line = None
    current_method_sig = None

    for idx, line in enumerate(lines):
        stripped = line.strip()
        if stripped.startswith('.method '):
            current_method_line = stripped
            current_method_sig = smali_sig_to_java(smali_class, stripped)
        elif stripped == '.end method':
            current_method_line = None
            current_method_sig = None
            continue

        m = re.match(r'(const-string(?:/jumbo)?)\s+(\S+),\s*"([^"]*)"', stripped)
        if not m: continue

        register = m.group(2)
        string_value = m.group(3)

        if len(string_value.split('.')) < min_segments:
            continue
        if not looks_like_package_name(string_value):
            continue

        usages = find_register_usage(lines, idx, register)

        ctx_start = max(0, idx - 3)
        ctx_end = min(len(lines), idx + 15)
        context_lines = [l.rstrip() for l in lines[ctx_start:ctx_end]]

        method_name = '?'
        if current_method_line:
            mm = re.search(r'(\S+)\(', current_method_line)
            if mm: method_name = mm.group(1).split()[-1]

        results.append({
            'package_name': string_value,
            'jar': jar_name,
            'class': java_class,
            'smali_class': smali_class,
            'method_sig': current_method_sig or f'<{java_class}: <clinit>()>',
            'method_name': method_name,
            'file': str(filepath),
            'line': idx + 1,
            'register': register,
            'usages': usages,
            'context': context_lines,
            'context_start_line': ctx_start + 1,
        })
    return results


# ═══════════════════════════════════════════════════════════════════
# Main
# ═══════════════════════════════════════════════════════════════════

def main():
    parser = argparse.ArgumentParser(description='Discover ALL hardcoded package names in smali')
    parser.add_argument('--smali-dir', required=True)
    parser.add_argument('--output', required=True)
    parser.add_argument('--known-packages', default=None,
                        help='Optional: known package list for tagging known vs new')
    parser.add_argument('--min-segments', type=int, default=3)
    parser.add_argument('--exclude-prefixes', default=None,
                        help='Comma-separated extra prefixes to exclude')
    args = parser.parse_args()

    known_packages = set()
    if args.known_packages:
        with open(args.known_packages) as f:
            for line in f:
                line = line.strip()
                if line and not line.startswith('#'):
                    known_packages.add(line)
        print(f"[Step 3] Loaded {len(known_packages)} known package names for tagging.")

    if args.exclude_prefixes:
        for prefix in args.exclude_prefixes.split(','):
            EXCLUDE_PREFIXES.append(prefix.strip())

    smali_root = Path(args.smali_dir)
    out_dir = Path(args.output)
    out_dir.mkdir(parents=True, exist_ok=True)

    jar_dirs = [d for d in smali_root.iterdir()
                if d.is_dir() and d.name != 'MANIFEST.txt']
    print(f"[Step 3] Scanning {len(jar_dirs)} JAR dirs for ALL package names (min segments={args.min_segments}).\n")

    all_results = []
    all_packages_seen = set()
    total_files = 0

    for jar_dir in sorted(jar_dirs):
        jar_name = jar_dir.name
        smali_files = list(jar_dir.rglob('*.smali'))
        total_files += len(smali_files)
        jar_hits = 0
        jar_pkgs = set()
        for sf in smali_files:
            results = scan_smali_file(sf, jar_name, args.min_segments)
            if results:
                jar_hits += len(results)
                for r in results:
                    jar_pkgs.add(r['package_name'])
                all_results.extend(results)
        all_packages_seen.update(jar_pkgs)
        if jar_hits > 0:
            print(f"  {jar_name}: {jar_hits} refs, {len(jar_pkgs)} unique packages")

    print(f"\n[Step 3] Scanned {total_files} files.")
    print(f"  Total references:     {len(all_results)}")
    print(f"  Unique packages:      {len(all_packages_seen)}")
    if known_packages:
        print(f"  Known (in your list): {len(all_packages_seen & known_packages)}")
        print(f"  NEW discoveries:      {len(all_packages_seen - known_packages)}")
    print()

    if not all_results:
        print("[Step 3] Nothing found."); return

    # ── all_packages_found.txt ──
    p = out_dir / 'all_packages_found.txt'
    with open(p,'w') as f:
        for pkg in sorted(all_packages_seen): f.write(pkg+'\n')
    print(f"  Wrote: {p} ({len(all_packages_seen)} packages)")

    # ── references.csv ──
    p = out_dir / 'references.csv'
    with open(p,'w',newline='') as f:
        w = csv.writer(f)
        w.writerow(['package_name','is_known','jar','class','method_name',
                     'method_sig','line','register','usage_type','usage_detail','file'])
        for r in all_results:
            ut = r['usages'][0][1] if r['usages'] else ''
            ud = r['usages'][0][2] if r['usages'] else ''
            ik = 'yes' if r['package_name'] in known_packages else 'no'
            w.writerow([r['package_name'],ik,r['jar'],r['class'],r['method_name'],
                        r['method_sig'],r['line'],r['register'],ut,ud,r['file']])
    print(f"  Wrote: {p}")

    # ── known_refs.csv / unknown_refs.csv ──
    if known_packages:
        for fname, filt, label in [
            ('known_refs.csv', lambda r: r['package_name'] in known_packages, 'known'),
            ('unknown_refs.csv', lambda r: r['package_name'] not in known_packages, 'unknown'),
        ]:
            subset = [r for r in all_results if filt(r)]
            p = out_dir / fname
            with open(p,'w',newline='') as f:
                w = csv.writer(f)
                w.writerow(['package_name','jar','class','method_name','method_sig',
                            'line','register','usage_type','usage_detail','file'])
                for r in subset:
                    ut = r['usages'][0][1] if r['usages'] else ''
                    ud = r['usages'][0][2] if r['usages'] else ''
                    w.writerow([r['package_name'],r['jar'],r['class'],r['method_name'],
                                r['method_sig'],r['line'],r['register'],ut,ud,r['file']])
            print(f"  Wrote: {p} ({len(subset)} {label} refs)")

    # ── references_detail.txt ──
    p = out_dir / 'references_detail.txt'
    with open(p,'w') as f:
        for i, r in enumerate(all_results):
            tag = " [KNOWN]" if r['package_name'] in known_packages else " [NEW]"
            f.write(f"{'='*80}\nRef #{i+1}{tag}\n{'='*80}\n")
            f.write(f"Package:  {r['package_name']}\n")
            f.write(f"JAR:      {r['jar']}\n")
            f.write(f"Class:    {r['class']}\n")
            f.write(f"Method:   {r['method_sig']}\n")
            f.write(f"File:     {r['file']}:{r['line']}\n")
            f.write(f"Register: {r['register']} := \"{r['package_name']}\"\n\n")
            if r['usages']:
                f.write("Register usages:\n")
                for off,ut,ul in r['usages']:
                    f.write(f"  +{off:3d} [{ut:15s}] {ul}\n")
            else:
                f.write("Register usages: (none in lookahead)\n")
            f.write(f"\nContext (lines {r['context_start_line']}+):\n")
            for cl in r['context']: f.write(f"  {cl}\n")
            f.write("\n\n")
    print(f"  Wrote: {p}")

    # ── method_signatures.txt ──
    sigs = sorted(set(r['method_sig'] for r in all_results))
    p = out_dir / 'method_signatures.txt'
    with open(p,'w') as f:
        for s in sigs: f.write(s+'\n')
    print(f"  Wrote: {p} ({len(sigs)} methods)")

    # ── summary.txt ──
    pkg_counts = defaultdict(list)
    for r in all_results: pkg_counts[r['package_name']].append(r)

    p = out_dir / 'summary.txt'
    with open(p,'w') as f:
        f.write("Package Name Discovery Summary\n")
        f.write(f"{'='*70}\n\n")
        f.write(f"Smali files scanned:    {total_files}\n")
        f.write(f"Total references:       {len(all_results)}\n")
        f.write(f"Unique package names:   {len(all_packages_seen)}\n")
        f.write(f"Unique methods:         {len(sigs)}\n")
        f.write(f"Unique classes:         {len(set(r['class'] for r in all_results))}\n")
        f.write(f"JARs with hits:         {len(set(r['jar'] for r in all_results))}\n")
        if known_packages:
            kf = all_packages_seen & known_packages
            uf = all_packages_seen - known_packages
            nf = known_packages - all_packages_seen
            f.write(f"\nKnown found:            {len(kf)}\n")
            f.write(f"NEW discovered:         {len(uf)}\n")
            f.write(f"Known NOT found:        {len(nf)}\n")
            if nf:
                f.write("\nKnown packages NOT in this ROM:\n")
                for pkg in sorted(nf): f.write(f"  - {pkg}\n")

        f.write(f"\n\n{'Package Name':<55s} {'Refs':>5s} {'Known':>6s}  JARs\n")
        f.write(f"{'-'*55} {'-'*5} {'-'*6}  {'-'*30}\n")
        for pkg in sorted(pkg_counts, key=lambda p: -len(pkg_counts[p])):
            refs = pkg_counts[pkg]
            jars = sorted(set(r['jar'] for r in refs))
            ik = 'YES' if pkg in known_packages else ''
            f.write(f"{pkg:<55s} {len(refs):>5d} {ik:>6s}  {', '.join(jars)}\n")

        f.write(f"\n\nPer-JAR:\n{'-'*60}\n")
        jc = defaultdict(lambda: {'refs':0,'pkgs':set()})
        for r in all_results:
            jc[r['jar']]['refs'] += 1
            jc[r['jar']]['pkgs'].add(r['package_name'])
        for j in sorted(jc, key=lambda j: -jc[j]['refs']):
            f.write(f"  {j}: {jc[j]['refs']} refs, {len(jc[j]['pkgs'])} pkgs\n")

        f.write(f"\n\nUsage types:\n{'-'*60}\n")
        uc = defaultdict(int)
        for r in all_results:
            uc[r['usages'][0][1] if r['usages'] else '(none)'] += 1
        for u in sorted(uc, key=lambda u: -uc[u]):
            f.write(f"  {u}: {uc[u]}\n")
    print(f"  Wrote: {p}")

    # ── per_package/ ──
    ppd = out_dir / 'per_package'
    ppd.mkdir(exist_ok=True)
    for pkg, refs in pkg_counts.items():
        safe = pkg.replace('.','_')
        with open(ppd / f'{safe}.txt','w') as f:
            tag = " [KNOWN]" if pkg in known_packages else " [NEW]"
            f.write(f"# {pkg}{tag}\n# Refs: {len(refs)}\n")
            f.write(f"# JARs: {', '.join(sorted(set(r['jar'] for r in refs)))}\n\n")
            for s in sorted(set(r['method_sig'] for r in refs)):
                f.write(s+'\n')
    print(f"  Wrote: {ppd}/ ({len(pkg_counts)} files)")


if __name__ == '__main__':
    main()
