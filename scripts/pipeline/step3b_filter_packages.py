#!/usr/bin/env python3
"""
step3b_filter_packages.py — Filter discovered package names by existence in the wild.

Sits between Step 3 (discover all hardcoded strings) and Step 4 (analyze methods).

Keeps a reference if ANY of these are true:
  1. It's a permission string (android.permission.*)  — always keep
  2. It's in the known list (--known)                  — always keep
  3. It's a real APK found on Google Play or wild sources (APKMirror, APKPure, etc.)
  4. It's an intent/provider string                    — always keep (cheap, useful context)

Drops:
  - Package-name-like strings that don't exist as real APKs anywhere
  - These are the false positives clogging up the call graph

Usage:
    python3 step3b_filter_packages.py \\
        --references    /data/work/vivo/step3_results/references.csv \\
        --known         /path/to/package_names.txt \\
        --scan-script   /path/to/bulk_scan_filtered.py \\
        --output        /data/work/vivo/step3b_filtered/ \\
        --scan-out      /data/work/vivo/step3b_filtered/scan_results/

    # Or if you already have scan results from a previous run:
    python3 step3b_filter_packages.py \\
        --references    /data/work/vivo/step3_results/references.csv \\
        --known         /path/to/package_names.txt \\
        --existing-scan /data/work/vivo/step3b_filtered/scan_results/ \\
        --output        /data/work/vivo/step3b_filtered/
"""

import argparse
import csv
import json
import os
import sys
from collections import defaultdict
from pathlib import Path


# String types we always keep (no APK check needed)
ALWAYS_KEEP_TYPES = {
    'permission',
    'intent',
    'provider_uri',
}


def load_known(path):
    if not path:
        return set()
    known = set()
    with open(path) as f:
        for line in f:
            line = line.strip()
            if line and not line.startswith('#'):
                known.add(line)
    return known


def load_references(csv_path):
    """Load references.csv from Step 3."""
    refs = []
    with open(csv_path) as f:
        reader = csv.DictReader(f)
        for row in reader:
            refs.append(row)
    return refs


# Prefixes that are clearly not third-party app package names.
# Skipping these avoids thousands of pointless external API queries.
NOT_APP_PREFIXES = (
    'android.app.',
    'android.content.',
    'android.database.',
    'android.graphics.',
    'android.hardware.',
    'android.media.',
    'android.net.',
    'android.os.',
    'android.provider.',
    'android.security.',
    'android.service.',
    'android.telephony.',
    'android.text.',
    'android.util.',
    'android.view.',
    'android.webkit.',
    'android.widget.',
    'android.Manifest.',
    'android.R.',
    'com.android.internal.',
    'com.android.server.',
    'dalvik.',
    'java.',
    'javax.',
    'kotlin.',
    'kotlinx.',
    'org.apache.',
    'org.json.',
    'org.xml.',
    'org.xmlpull.',
    'org.w3c.',
    'sun.',
    'libcore.',
    'GNU.',
)


def _is_obviously_not_app(pkg):
    """Return True if pkg is clearly a framework/system class, not an app."""
    if any(pkg.startswith(p) for p in NOT_APP_PREFIXES):
        return True
    parts = pkg.split('.')
    # Strings with uppercase first segment are usually class names
    # e.g. DeviceIdleController.deep.locating, FacePreProcessing_jni.camera
    if len(parts) >= 2 and parts[0][0].isupper():
        return True
    # AIDL interfaces: any segment matching I[A-Z]* pattern (e.g. IPrintManager)
    # These are never real app package names
    if any(len(p) >= 2 and p[0] == 'I' and p[1].isupper() for p in parts):
        return True
    return False


def get_packages_to_scan(refs, known):
    """
    Extract unique package-like strings that need an APK existence check.
    Skip types we always keep and packages already in the known list.
    Also skip strings that are obviously framework/system identifiers.
    """
    to_scan = set()
    skipped = 0
    for r in refs:
        stype = r.get('string_type', '')
        pkg = r.get('package_name', '')

        if stype in ALWAYS_KEEP_TYPES:
            continue
        if pkg in known:
            continue
        if pkg and not _is_obviously_not_app(pkg):
            to_scan.add(pkg)
        elif pkg:
            skipped += 1

    if skipped:
        print(f"  Pre-filtered {skipped} obvious non-app strings")

    return sorted(to_scan)


def run_bulk_scan(packages, scan_out_dir):
    """Scan each package using scan_wild_for_pkg.scan_package directly."""
    scan_out_dir = Path(scan_out_dir)
    scan_out_dir.mkdir(parents=True, exist_ok=True)

    try:
        from scan_wild_for_packages import scan_package
    except ImportError:
        print("  ERROR: Cannot import scan_wild_for_packages.scan_package")
        print("  Make sure scan_wild_for_packages.py is on PYTHONPATH or in the working directory.")
        return None

    found_file = scan_out_dir / 'found_anywhere.txt'
    results_file = scan_out_dir / 'results.jsonl'
    found = set()
    total = len(packages)

    print(f"  Scanning {total} packages for APK existence...")

    with open(results_file, 'a', encoding='utf-8') as fj:
        for i, pkg in enumerate(packages, 1):
            print(f"    [{i}/{total}] {pkg}", end=' ... ', flush=True)
            try:
                res = scan_package(
                    pkg,
                    include_wild_sources=True,
                    also_try_lowercase=False,
                )
                fj.write(res.to_json(indent=0) + '\n')
                fj.flush()

                if res.exists_anywhere:
                    found.add(pkg)
                    print("FOUND")
                else:
                    print("not found")
            except Exception as e:
                print(f"error: {e}")

    # Write found_anywhere.txt for fast reload
    found_file.write_text('\n'.join(sorted(found)) + '\n', encoding='utf-8')

    return scan_out_dir


def load_scan_results(scan_out_dir):
    """
    Read the scan results to determine which packages exist.
    Returns set of packages found anywhere (Play Store or wild).
    """
    found = set()
    scan_out_dir = Path(scan_out_dir)

    # Primary: found_anywhere.txt
    found_file = scan_out_dir / 'found_anywhere.txt'
    if found_file.exists():
        for line in found_file.read_text(encoding='utf-8').splitlines():
            line = line.strip()
            if line:
                found.add(line)
        return found

    # Fallback: parse results.jsonl
    # Note: bulk_scan_filtered.py writes with indent=0 which produces
    # multi-line JSON per record — can't do simple line-by-line parsing.
    jsonl_file = scan_out_dir / 'results.jsonl'
    if jsonl_file.exists():
        raw = jsonl_file.read_text(encoding='utf-8')
        # Split on top-level JSON objects by finding '}\n{' boundaries
        # or use a streaming approach
        decoder = json.JSONDecoder()
        pos = 0
        while pos < len(raw):
            # Skip whitespace
            while pos < len(raw) and raw[pos] in ' \t\n\r':
                pos += 1
            if pos >= len(raw):
                break
            try:
                obj, end_pos = decoder.raw_decode(raw, pos)
                pkg = obj.get('package', '')
                play = obj.get('play_store', {})
                if play and play.get('found'):
                    found.add(pkg)
                else:
                    wild = obj.get('wild_hits', [])
                    if any(h.get('found') for h in (wild or [])):
                        found.add(pkg)
                pos = end_pos
            except json.JSONDecodeError:
                pos += 1

    return found


def filter_references(refs, keep_packages, known):
    """
    Filter references to only those worth analyzing.
    Keep if:
      - string_type is in ALWAYS_KEEP_TYPES (permissions, intents, etc.)
      - package_name is in known list
      - package_name was found as a real APK (any string_type)
    """
    filtered = []
    for r in refs:
        stype = r.get('string_type', '')
        pkg = r.get('package_name', '')

        if stype in ALWAYS_KEEP_TYPES:
            filtered.append(r)
        elif pkg in known:
            filtered.append(r)
        elif pkg in keep_packages:
            filtered.append(r)

    return filtered


def main():
    parser = argparse.ArgumentParser(
        description='Filter discovered packages by APK existence in the wild')
    parser.add_argument('--references', required=True,
                        help='references.csv from Step 3')
    parser.add_argument('--known', default=None,
                        help='Known package names file (always kept)')
    parser.add_argument('--scan-script', default=None,
                        help='Path to bulk_scan_filtered.py')
    parser.add_argument('--existing-scan', default=None,
                        help='Path to existing scan results dir (skip scanning)')
    parser.add_argument('--output', required=True,
                        help='Output directory for filtered results')
    parser.add_argument('--scan-out', default=None,
                        help='Directory for scan results (default: <output>/scan_results/)')
    parser.add_argument('--python-cmd', default='python3',
                        help='Python command for running scan script')
    args = parser.parse_args()

    out_dir = Path(args.output)
    out_dir.mkdir(parents=True, exist_ok=True)

    known = load_known(args.known)
    print(f"[Step 3.5] Filtering package references by APK existence")
    print(f"  Known packages: {len(known)}")

    # Load Step 3 results
    refs = load_references(args.references)
    print(f"  Total references from Step 3: {len(refs)}")

    # Identify packages needing a scan
    packages_to_scan = get_packages_to_scan(refs, known)
    print(f"  Unique package_name strings to check: {len(packages_to_scan)}")

    # Count what we auto-keep
    auto_keep_count = sum(1 for r in refs
                          if r.get('string_type', '') in ALWAYS_KEEP_TYPES
                          or r.get('package_name', '') in known)
    print(f"  Auto-kept (permissions/intents/known): {auto_keep_count} references")

    # Run or load scan
    found_packages = set()

    if args.existing_scan:
        print(f"\n  Loading existing scan results from: {args.existing_scan}")
        found_packages = load_scan_results(args.existing_scan)
        print(f"  Found in wild: {len(found_packages)} packages")
    elif args.scan_script:
        scan_out = Path(args.scan_out) if args.scan_out else out_dir / 'scan_results'
        result = run_bulk_scan(packages_to_scan, scan_out)
        if result:
            found_packages = load_scan_results(result)
            print(f"  Found in wild: {len(found_packages)} packages")
        else:
            # Scan failed — keep all to be safe
            print(f"  Scan unavailable — keeping all package_name references")
            found_packages = set(packages_to_scan)
    else:
        print(f"\n  No --scan-script or --existing-scan provided.")
        print(f"  Keeping all package_name references (no filtering).")
        found_packages = set(packages_to_scan)

    # Filter
    filtered_refs = filter_references(refs, found_packages, known)
    dropped = len(refs) - len(filtered_refs)

    print(f"\n  Filtered: {len(filtered_refs)} kept, {dropped} dropped")

    # ── Output 1: Filtered references.csv ──
    csv_path = out_dir / 'references.csv'
    if filtered_refs:
        fieldnames = list(filtered_refs[0].keys())
        with open(csv_path, 'w', newline='') as f:
            writer = csv.DictWriter(f, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(filtered_refs)
    print(f"  Wrote: {csv_path}")

    # ── Output 2: Filtered method signatures (for Step 4/5) ──
    sigs = sorted(set(r.get('method_sig', '') for r in filtered_refs if r.get('method_sig')))
    sigs_path = out_dir / 'method_signatures.txt'
    with open(sigs_path, 'w') as f:
        for s in sigs:
            f.write(s + '\n')
    print(f"  Wrote: {sigs_path} ({len(sigs)} methods)")

    # ── Output 3: Filter summary ──
    summary_path = out_dir / 'filter_summary.txt'
    with open(summary_path, 'w') as f:
        f.write("Step 3.5 — Package Existence Filter Summary\n")
        f.write(f"{'='*50}\n\n")
        f.write(f"Input references:       {len(refs)}\n")
        f.write(f"Output references:      {len(filtered_refs)}\n")
        f.write(f"Dropped:                {dropped}\n\n")

        f.write(f"Auto-kept (by type):\n")
        type_counts = defaultdict(int)
        for r in filtered_refs:
            type_counts[r.get('string_type', '?')] += 1
        for t in sorted(type_counts, key=lambda x: -type_counts[x]):
            f.write(f"  {t:<25s} {type_counts[t]:>5d}\n")

        f.write(f"\nPackage scan results:\n")
        f.write(f"  Candidates scanned:   {len(packages_to_scan)}\n")
        f.write(f"  Found as real APKs:   {len(found_packages)}\n")
        f.write(f"  Not found (dropped):  {len(set(packages_to_scan) - found_packages)}\n")

        if found_packages:
            f.write(f"\nPackages confirmed in wild:\n")
            for pkg in sorted(found_packages):
                f.write(f"  {pkg}\n")

        not_found = sorted(set(packages_to_scan) - found_packages)
        if not_found:
            f.write(f"\nPackages NOT found (dropped from analysis):\n")
            for pkg in not_found:
                f.write(f"  {pkg}\n")

    print(f"  Wrote: {summary_path}")

    # ── Output 4: Just the confirmed package names ──
    confirmed_path = out_dir / 'confirmed_packages.txt'
    all_kept_pkgs = sorted(set(
        r['package_name'] for r in filtered_refs
        if r.get('string_type') == 'package_name'
    ))
    with open(confirmed_path, 'w') as f:
        for pkg in all_kept_pkgs:
            f.write(pkg + '\n')
    print(f"  Wrote: {confirmed_path} ({len(all_kept_pkgs)} confirmed packages)")


if __name__ == '__main__':
    main()
