#!/usr/bin/env python3
"""
step4_analyze_methods.py — Deep analysis of methods found in Step 3.

For each seed method from references.csv:
  1. Extracts the full method body from smali
  2. Traces the register holding the package name through the method
  3. Identifies the enforcement pattern (allowlist check, early return, grant call, etc.)
  4. Extracts the full class for context
  5. Produces Soot-ready entry point specifications

Usage:
    python3 step4_analyze_methods.py \\
        --references /data/work/oneplus/step3_results/references.csv \\
        --smali-dir  /data/work/oneplus/smali/ \\
        --output     /data/work/oneplus/step4_results/
"""

import argparse
import csv
import os
import re
from collections import defaultdict
from pathlib import Path


# ── Enforcement pattern classification ──

ENFORCEMENT_PATTERNS = {
    'allowlist_check': [
        r'invoke-virtual\s+\{.*\},\s*Ljava/util/(ArrayList|HashSet|Set|List);->(contains|containsKey)',
        r'invoke-interface\s+\{.*\},\s*Ljava/util/(Set|List|Collection);->contains',
        r'invoke-virtual\s+\{.*\},\s*Ljava/util/HashMap;->(containsKey|get)',
    ],
    'string_compare': [
        r'invoke-virtual\s+\{.*\},\s*Ljava/lang/String;->equals',
        r'invoke-static\s+\{.*\},\s*Landroid/text/TextUtils;->equals',
    ],
    'early_return': [
        r'return-void',
        r'return\s+',
        r'const/4\s+v\d+,\s*0x[01].*\n.*return\s+',
    ],
    'permission_grant': [
        r'invoke-virtual\s+\{.*\},\s*L.*PackageManager.*->grantRuntimePermission',
        r'invoke-virtual\s+\{.*\},\s*L.*PermissionManager.*->grantRuntimePermission',
        r'invoke-virtual\s+\{.*\},\s*L.*->grantPermission',
        r'invoke-virtual\s+\{.*\},\s*L.*->grantSystemNonFixedPermissions',
        r'invoke-virtual\s+\{.*\},\s*L.*->grantRuntimePermissions',
        r'invoke-interface\s+\{.*\},\s*L.*->updatePermissionFlags',
    ],
    'appops_set': [
        r'invoke-virtual\s+\{.*\},\s*Landroid/app/AppOpsManager;->setMode',
    ],
    'package_enable_disable': [
        r'invoke-virtual\s+\{.*\},\s*L.*PackageManager.*->setApplicationEnabledSetting',
        r'invoke-virtual\s+\{.*\},\s*L.*PackageManager.*->setComponentEnabledSetting',
    ],
    'hidden_api': [
        r'isAllowedToUseHiddenApis',
        r'getHiddenApiEnforcementPolicy',
        r'isWhitelisted',
    ],
    'signature_check': [
        r'invoke-virtual\s+\{.*\},\s*L.*PackageManager.*->getPackageInfo.*GET_SIGNING',
        r'invoke-virtual\s+\{.*\},\s*L.*SigningDetails;->',
        r'SHA256|SHA1|sha256|sha1',
        r'computeDigest',
    ],
    'system_property_read': [
        r'invoke-static\s+\{.*\},\s*Landroid/os/SystemProperties;->get',
        r'invoke-static\s+\{.*\},\s*Landroid/os/SystemProperties;->getBoolean',
    ],
    'installer_check': [
        r'mCallingPackage',
        r'getInstallerPackageName',
        r'assertValidApk',
    ],
    'identity_read': [
        r'getDeviceId|getImei|getSubscriberId|getSimSerialNumber|getMeid',
    ],
}


def extract_method_body(smali_lines, method_start_line):
    """Extract full method body from smali lines (0-indexed start)."""
    body = []
    for i in range(method_start_line, len(smali_lines)):
        body.append(smali_lines[i])
        if smali_lines[i].strip() == '.end method':
            break
    return body


def find_method_start(smali_lines, target_method_name, target_line):
    """Find the .method line that contains target_line."""
    best_start = None
    for i, line in enumerate(smali_lines):
        if line.strip().startswith('.method '):
            best_start = i
        if i + 1 == target_line and best_start is not None:
            return best_start
    # Fallback: search by method name
    for i, line in enumerate(smali_lines):
        if line.strip().startswith('.method ') and target_method_name in line:
            return i
    return None


def trace_register_flow(method_body, register, pkg_assign_offset):
    """
    Trace a register through the method body after the package name assignment.
    Returns a list of flow steps.
    """
    flow = []
    current_reg = register

    for i in range(pkg_assign_offset + 1, len(method_body)):
        line = method_body[i].strip()

        if line == '.end method':
            break

        # Check if current register is reassigned (stop tracing)
        if re.match(rf'(const-string|const/4|const/16|move-result-object|move-object)\s+{re.escape(current_reg)}\b', line):
            # But first check if it's a move from our reg to another
            m = re.match(rf'move-object\s+(\S+),\s*{re.escape(current_reg)}', line)
            if m:
                new_reg = m.group(1)
                flow.append({
                    'offset': i,
                    'type': 'alias',
                    'line': line,
                    'detail': f'{current_reg} → {new_reg}'
                })
                current_reg = new_reg
                continue
            else:
                # Register reassigned to something else — stop
                flow.append({
                    'offset': i,
                    'type': 'reassigned',
                    'line': line,
                    'detail': f'{current_reg} overwritten'
                })
                break

        # Check if register is used
        if not re.search(rf'\b{re.escape(current_reg)}\b', line):
            continue

        # Classify usage
        step = {'offset': i, 'line': line}

        if line.startswith('invoke-'):
            # Extract method being called
            m = re.search(r'(L\S+;)->(\S+)\(', line)
            if m:
                callee_class = m.group(1).replace('/', '.').lstrip('L').rstrip(';')
                callee_method = m.group(2)
                step['type'] = 'invoke'
                step['detail'] = f'{callee_class}.{callee_method}()'
            else:
                step['type'] = 'invoke'
                step['detail'] = line
        elif 'put-object' in line:
            m = re.search(r'(L\S+;)->(\S+):', line)
            if m:
                field_class = m.group(1).replace('/', '.').lstrip('L').rstrip(';')
                field_name = m.group(2)
                step['type'] = 'field_store'
                step['detail'] = f'{field_class}.{field_name}'
            else:
                step['type'] = 'field_store'
                step['detail'] = line
        elif line.startswith('if-eq') or line.startswith('if-ne'):
            step['type'] = 'branch'
            step['detail'] = line
        elif 'aput' in line:
            step['type'] = 'array_store'
            step['detail'] = line
        else:
            step['type'] = 'other'
            step['detail'] = line

        flow.append(step)

    return flow


def classify_enforcement(method_body_text):
    """Classify the enforcement pattern(s) present in a method body."""
    found = []
    for pattern_name, regexes in ENFORCEMENT_PATTERNS.items():
        for regex in regexes:
            if re.search(regex, method_body_text):
                found.append(pattern_name)
                break
    return found


def main():
    parser = argparse.ArgumentParser(description='Deep smali method analysis')
    parser.add_argument('--references', required=True, help='references.csv from Step 3')
    parser.add_argument('--smali-dir', required=True, help='Root smali directory')
    parser.add_argument('--output', required=True, help='Output directory')
    args = parser.parse_args()

    out_dir = Path(args.output)
    out_dir.mkdir(parents=True, exist_ok=True)

    # Load references
    refs = []
    with open(args.references) as f:
        reader = csv.DictReader(f)
        for row in reader:
            refs.append(row)

    print(f"[Step 4] Analyzing {len(refs)} references from Step 3.")

    # Cache loaded smali files
    file_cache = {}

    all_analyses = []

    for idx, ref in enumerate(refs):
        smali_file = ref['file']
        pkg = ref['package_name']
        line_num = int(ref['line'])
        register = ref['register']
        method_sig = ref['method_sig']
        method_name = ref['method_name']

        # Load smali file
        if smali_file not in file_cache:
            try:
                with open(smali_file, 'r', errors='replace') as f:
                    file_cache[smali_file] = f.readlines()
            except Exception as e:
                print(f"  WARN: Cannot read {smali_file}: {e}")
                continue

        smali_lines = file_cache[smali_file]

        # Find method start
        method_start = find_method_start(smali_lines, method_name, line_num)
        if method_start is None:
            print(f"  WARN: Cannot find method for {method_sig} at line {line_num}")
            continue

        # Extract full method body
        method_body = extract_method_body(smali_lines, method_start)
        method_body_text = ''.join(method_body)

        # Find the package name assignment within the method body
        pkg_offset = None
        for i, mline in enumerate(method_body):
            if f'"{pkg}"' in mline and register in mline:
                pkg_offset = i
                break

        # Trace register flow
        reg_flow = []
        if pkg_offset is not None:
            reg_flow = trace_register_flow(method_body, register, pkg_offset)

        # Classify enforcement patterns
        patterns = classify_enforcement(method_body_text)

        analysis = {
            'ref': ref,
            'method_body': method_body,
            'method_start_line': method_start + 1,
            'pkg_offset_in_method': pkg_offset,
            'register_flow': reg_flow,
            'enforcement_patterns': patterns,
        }
        all_analyses.append(analysis)

    print(f"[Step 4] Analyzed {len(all_analyses)} method bodies.\n")

    # ── Output 1: Detailed analysis report ──
    detail_path = out_dir / 'method_analysis.txt'
    with open(detail_path, 'w') as f:
        for i, a in enumerate(all_analyses):
            ref = a['ref']
            f.write(f"{'#'*80}\n")
            f.write(f"# Analysis #{i+1}: {ref['package_name']}\n")
            f.write(f"{'#'*80}\n\n")
            f.write(f"Package:     {ref['package_name']}\n")
            f.write(f"JAR:         {ref['jar']}\n")
            f.write(f"Class:       {ref['class']}\n")
            f.write(f"Method:      {ref['method_sig']}\n")
            f.write(f"Register:    {ref['register']} := \"{ref['package_name']}\"\n")
            f.write(f"Patterns:    {', '.join(a['enforcement_patterns']) or '(none detected)'}\n")
            f.write(f"\n")

            if a['register_flow']:
                f.write(f"Register flow ({ref['register']} → ...):\n")
                for step in a['register_flow']:
                    f.write(f"  +{step['offset']:3d} [{step['type']:15s}] {step['detail']}\n")
            else:
                f.write(f"Register flow: (could not trace)\n")

            f.write(f"\nFull method body ({len(a['method_body'])} lines):\n")
            f.write(f"{'-'*60}\n")
            for mline in a['method_body']:
                f.write(f"  {mline.rstrip()}\n")
            f.write(f"{'-'*60}\n\n\n")

    print(f"  Wrote: {detail_path}")

    # ── Output 2: Soot entry points file ──
    soot_path = out_dir / 'soot_entry_points.txt'
    unique_sigs = sorted(set(a['ref']['method_sig'] for a in all_analyses))
    with open(soot_path, 'w') as f:
        f.write("# Soot entry points — methods referencing hardcoded package names\n")
        f.write(f"# Generated from {len(all_analyses)} analyses\n")
        f.write(f"# Feed these to step5 --entry-points\n\n")
        for sig in unique_sigs:
            f.write(sig + '\n')
    print(f"  Wrote: {soot_path} ({len(unique_sigs)} entry points)")

    # ── Output 3: Enforcement pattern summary ──
    pattern_path = out_dir / 'enforcement_patterns.csv'
    with open(pattern_path, 'w', newline='') as f:
        writer = csv.writer(f)
        writer.writerow([
            'package_name', 'jar', 'class', 'method_sig',
            'patterns', 'register_flow_summary', 'method_line_count'
        ])
        for a in all_analyses:
            ref = a['ref']
            flow_summary = ' → '.join(
                f"[{s['type']}] {s['detail'][:60]}" for s in a['register_flow'][:5]
            )
            writer.writerow([
                ref['package_name'], ref['jar'], ref['class'], ref['method_sig'],
                ';'.join(a['enforcement_patterns']),
                flow_summary,
                len(a['method_body'])
            ])
    print(f"  Wrote: {pattern_path}")

    # ── Output 4: Per-pattern grouped report ──
    pattern_group_path = out_dir / 'by_pattern.txt'
    pattern_groups = defaultdict(list)
    for a in all_analyses:
        for p in a['enforcement_patterns']:
            pattern_groups[p].append(a)
        if not a['enforcement_patterns']:
            pattern_groups['(unclassified)'].append(a)

    with open(pattern_group_path, 'w') as f:
        for pattern in sorted(pattern_groups.keys()):
            analyses = pattern_groups[pattern]
            f.write(f"\n{'='*70}\n")
            f.write(f"Pattern: {pattern} ({len(analyses)} methods)\n")
            f.write(f"{'='*70}\n\n")
            for a in analyses:
                ref = a['ref']
                f.write(f"  {ref['package_name']:<45s} {ref['method_sig']}\n")
                f.write(f"    JAR: {ref['jar']}  Class: {ref['class']}\n")
                if a['register_flow']:
                    first_use = a['register_flow'][0]
                    f.write(f"    First use: [{first_use['type']}] {first_use['detail'][:80]}\n")
                f.write(f"\n")
    print(f"  Wrote: {pattern_group_path}")


if __name__ == '__main__':
    main()
