#!/usr/bin/env python3
"""
normalize_vuln_reports.py
=========================
Reads all vulnerability report .md files from all source directories,
deduplicates by (package, vendor), normalizes to a canonical format,
and writes vuln-NNN.md files into reproducibility/vuln/.

Source directories:
  miui_vuln_directory/          — MIUI filename-based format
  vuln_report/                  — vendor-subdir format (all 5 devices + FirmwareScanner)
  all_dumps_vuln_report/        — vendor-subdir format
  firmware_scanner_vuln_report/ — vendor-subdir format (server batch)

NI recheck JSONs (promoted NI → CONFIRMED entries):
  ni_recheck_oneplus.json

Usage:
    python3 scripts/normalize_vuln_reports.py
"""

import json, os, re, sys
from pathlib import Path
from collections import defaultdict

# ── Vendor name normalization ─────────────────────────────────────────────────
VENDOR_MAP = {
    # Xiaomi family — Redmi/Poco/Xiaomi share the same MIUI framework customizations;
    # group all sub-brands under a single MIUI label so one package → one canonical file.
    'Xiaomi_Redmi':           'MIUI',
    'Xiaomi (Redmi)':         'MIUI',
    'Xiaomi_MIUI':            'MIUI',
    'Xiaomi (MIUI)':          'MIUI',
    'Xiaomi_Firmware':        'MIUI',
    'Xiaomi_FirmwareScanner': 'MIUI',
    'Xiaomi (Mi)':            'MIUI',
    'Xiaomi (POCO)':          'MIUI',
    'Xiaomi_Poco':            'MIUI',
    # Other vendors
    'Fairphone_4':            'Fairphone',
    'Fairphone_5':            'Fairphone',
    'Lenovo_ZUI':             'Lenovo',
    'Lenovo (ZUI)':           'Lenovo',
    'OnePlus':                'OnePlus',
    'OnePlus (Oplus)':        'OnePlus',
    'Unknown_DSB0230':        'Unknown (DSB0230)',
    'Unknown_A200Pro':        'Unknown (A200Pro)',
    'Unknown_GS5':            'Unknown (GS5)',
    'Unknown_GX4Pro':         'Unknown (GX4Pro)',
    'Unisoc_Tab15':           'Unisoc',
    'Firmware_Standalone':    'Unknown (Standalone)',
}

def normalize_vendor(v):
    return VENDOR_MAP.get(v, v)

# ── Paths ─────────────────────────────────────────────────────────────────────
# Paths are relative to this script's location (scripts/ → when-os-play-faves/ → CCS-Paper/)
_CCS_PAPER = Path(__file__).resolve().parent.parent.parent
BASE = _CCS_PAPER / 'Android-devices' / 'vuln_reports'

# MIUI filename-based format (group by package, aggregate firmware versions)
MIUI_DIRS = [
    BASE / 'miui_vuln_directory',
    BASE / 'Untitled',
]

# Vendor-subdir format (one file per package per vendor)
FS_DIRS = [
    BASE / 'vuln_report',
    BASE / 'all_dumps_vuln_report',
    BASE / 'firmware_scanner_vuln_report',
]

OUT_DIR = _CCS_PAPER / 'Android-Framework-Customizations---CCS' / 'reproducibility' / 'vuln'

# NI recheck JSONs: dict of { package → {new_verdict, parsed, ...} }
# Format: {package: {new_verdict, parsed: {verdict, confirmed_tag, confidence, threat_type,
#           privacy_impact, attack_surface, anchor_to_tag_path}, ...}}
NI_RECHECK_FILES = [
    (BASE.parent / 'ni_recheck_oneplus.json', 'OnePlus (Oplus)'),
]

OUT_DIR.mkdir(parents=True, exist_ok=True)

# ── Helpers ───────────────────────────────────────────────────────────────────

def parse_metadata_table(text):
    """Extract key→value pairs from a markdown table like | Key | Value |"""
    meta = {}
    for line in text.splitlines():
        m = re.match(r'\|\s*([^|]+?)\s*\|\s*([^|]+?)\s*\|', line)
        if m:
            key = m.group(1).strip().lower().replace(' ', '_')
            val = m.group(2).strip().strip('`*')
            if key not in ('field', '---'):
                meta[key] = val
    return meta

def extract_section(text, header):
    """Return the text of a ## Section, or empty string.
    Matches any ## heading that starts with `header` (allows suffix text like
    '(hardcoded value → security tag)' after the keyword)."""
    pattern = rf'##\s+{re.escape(header)}[^\n]*\n(.*?)(?=\n##|\Z)'
    m = re.search(pattern, text, re.DOTALL | re.IGNORECASE)
    return m.group(1).strip() if m else ''

def normalize_call_graph(raw):
    """Normalize call graph to consistent bullet format."""
    lines = [l.strip() for l in raw.splitlines() if l.strip()]
    out = []
    for l in lines:
        # Remove leading numbers like "1." or "2."
        l = re.sub(r'^\d+\.\s*', '', l)
        # Normalize → and -> to consistent arrow
        l = l.replace('->', '→').replace('-->', '→')
        if not l.startswith('-') and not l.startswith('→'):
            l = '- ' + l
        out.append(l)
    return '\n'.join(out)

def firmware_from_filename(filename):
    """Extract firmware label from MIUI-style filename."""
    # e.g. MED__org_ifaa_aidl_manager__POCO_X3_Pro_Russia_V13_0_3_0_SJURUXM_output.md
    parts = filename.replace('.md', '').split('__')
    if len(parts) >= 3:
        fw = parts[2]
        # Convert underscores back to spaces/dots for readability
        fw = re.sub(r'_output$', '', fw)
        fw = fw.replace('_', ' ')
        return fw
    return None

def build_canonical(meta, privacy, attack, callgraph, firmware_list, vendor_override=None):
    vendor = vendor_override or meta.get('vendor', 'Unknown')
    package = meta.get('package', '?')
    verdict = meta.get('verdict', '?').replace('**', '')
    tag = meta.get('confirmed_tag', meta.get('confirmed tag', '?'))
    confidence = meta.get('confidence', '?')
    threat = meta.get('threat_type', meta.get('threat type', '?'))
    fw_count = len(firmware_list) if firmware_list else '?'

    fw_section = ''
    if firmware_list:
        fw_section = '\n## Affected Firmware Images\n' + \
                     '\n'.join(f'- {fw}' for fw in sorted(set(firmware_list)))

    return (package, vendor, verdict, tag, confidence, threat,
            privacy, attack, callgraph, fw_section)

# ── Parse MIUI-style directories ─────────────────────────────────────────────
# Group by package name; collect firmware versions across all MIUI dirs
miui_groups = defaultdict(lambda: {
    'meta': {}, 'privacy': '', 'attack': '', 'callgraph': '', 'firmware_list': []
})

for miui_dir in MIUI_DIRS:
    if not miui_dir.exists():
        continue
    for f in sorted(miui_dir.glob('*.md')):
        if f.name.lower() in ('index.md',):
            continue
        text = f.read_text(errors='replace')
        meta = parse_metadata_table(text)
        pkg = meta.get('package', '').strip('`')
        if not pkg:
            parts = f.name.split('__')
            pkg = parts[1].replace('_', '.') if len(parts) >= 2 else f.stem

        fw = meta.get('firmware', firmware_from_filename(f.name))
        g = miui_groups[pkg]

        # First file wins for prose content
        if not g['meta']:
            g['meta'] = meta
            g['privacy'] = extract_section(text, 'Privacy Impact')
            g['attack'] = extract_section(text, 'Attack Surface')
            cg_raw = extract_section(text, 'Call Graph')
            g['callgraph'] = normalize_call_graph(cg_raw)

        if fw:
            g['firmware_list'].append(fw)

# ── Parse vendor-subdir directories ──────────────────────────────────────────
fs_entries = []  # list of (package, vendor, meta, privacy, attack, callgraph)

for fs_dir in FS_DIRS:
    if not fs_dir.exists():
        continue
    for vendor_dir in sorted(fs_dir.iterdir()):
        if not vendor_dir.is_dir():
            continue
        vendor_name = vendor_dir.name.replace('_', ' ')
        for f in sorted(vendor_dir.glob('*.md')):
            text = f.read_text(errors='replace')
            meta = parse_metadata_table(text)
            pkg = meta.get('package', f.stem.replace('_', '.'))
            # Strip hash suffix from filename-based package names (e.g. com.foo__abc123)
            pkg = re.sub(r'__[0-9a-f]{6,}$', '', pkg)
            vendor = normalize_vendor(meta.get('vendor', vendor_dir.name))
            privacy = extract_section(text, 'Privacy Impact')
            attack = extract_section(text, 'Attack Surface')
            cg_raw = extract_section(text, 'Call Graph')
            callgraph = normalize_call_graph(cg_raw)
            fs_entries.append((pkg, vendor, meta, privacy, attack, callgraph))

# ── Parse NI recheck JSONs ────────────────────────────────────────────────────
ni_entries = []  # list of dicts with same shape as all_findings

for ni_path, vendor in NI_RECHECK_FILES:
    if not Path(ni_path).exists():
        print(f'  [warn] NI recheck file not found: {ni_path}', file=sys.stderr)
        continue
    ni_data = json.load(open(ni_path))
    for pkg, record in ni_data.items():
        if record.get('new_verdict', '') != 'CONFIRMED_MEDIUM' and \
           record.get('new_verdict', '') != 'CONFIRMED_HIGH':
            continue
        p = record.get('parsed', {})
        cg_raw = p.get('anchor_to_tag_path', [])
        if isinstance(cg_raw, list):
            cg_raw = '\n'.join(cg_raw)
        ni_entries.append({
            'package':  pkg,
            'vendor':   normalize_vendor(vendor),
            'verdict':  p.get('verdict', record.get('new_verdict', '?')),
            'tag':      p.get('confirmed_tag', '?'),
            'confidence': str(p.get('confidence', '?')),
            'threat':   p.get('threat_type', '?'),
            'privacy':  p.get('privacy_impact', ''),
            'attack':   p.get('attack_surface', ''),
            'callgraph': normalize_call_graph(cg_raw),
            'firmware_list': [],
        })

# ── Deduplicate across both sources ──────────────────────────────────────────
seen = set()
all_findings = []  # list of dicts

# MIUI entries
for pkg, g in sorted(miui_groups.items()):
    meta = g['meta']
    vendor = normalize_vendor(meta.get('vendor', 'Xiaomi_MIUI'))
    key = (pkg, vendor)
    if key in seen:
        continue
    seen.add(key)
    all_findings.append({
        'package':  pkg,
        'vendor':   vendor,
        'verdict':  meta.get('verdict', '?').replace('**', ''),
        'tag':      meta.get('confirmed_tag', meta.get('confirmed tag', '?')),
        'confidence': meta.get('confidence', '?'),
        'threat':   meta.get('threat_type', meta.get('threat type', '?')),
        'privacy':  g['privacy'],
        'attack':   g['attack'],
        'callgraph': g['callgraph'],
        'firmware_list': g['firmware_list'],
    })

# NI recheck promoted entries
for entry in ni_entries:
    key = (entry['package'], entry['vendor'])
    if key in seen:
        continue
    seen.add(key)
    all_findings.append(entry)

# FirmwareScanner entries
for pkg, vendor, meta, privacy, attack, callgraph in fs_entries:
    key = (pkg, vendor)
    if key in seen:
        continue
    seen.add(key)
    all_findings.append({
        'package':  pkg,
        'vendor':   vendor,
        'verdict':  meta.get('verdict', '?').replace('**', ''),
        'tag':      meta.get('confirmed_tag', meta.get('confirmed tag', '?')),
        'confidence': meta.get('confidence', '?'),
        'threat':   meta.get('threat_type', meta.get('threat type', '?')),
        'privacy':  privacy,
        'attack':   attack,
        'callgraph': callgraph,
        'firmware_list': [],
    })

# ── Write canonical vuln-NNN.md files ────────────────────────────────────────
TEMPLATE = """\
---
id: {vid}
vendor: {vendor}
package: {package}
verdict: {verdict}
tag: {tag}
category: {threat}
---

# {vid} · `{package}` · {vendor_display}

## Metadata
| Field | Value |
|---|---|
| Vendor | {vendor_display} |
| Package | `{package}` |
| Verdict | **{verdict}** |
| Confirmed tag | `{tag}` |
| Confidence | {confidence} |
| Threat type | {threat} |{fw_row}

## Privacy Impact
{privacy}

## Attack Surface
{attack}

## Call Graph
```
{callgraph}
```
{fw_section}
"""

for i, f in enumerate(all_findings, start=1):
    vid = f'vuln-{i:03d}'
    fw_row = f'\n| Affected firmware | {len(f["firmware_list"])} images |' if f['firmware_list'] else ''
    fw_section = ''
    if f['firmware_list']:
        fw_section = '\n## Affected Firmware Images\n' + \
                     '\n'.join(f'- {fw}' for fw in sorted(set(f['firmware_list'])))

    vendor_display = 'MIUI (Xiaomi · Redmi · Poco)' if f['vendor'] == 'MIUI' else f['vendor']
    content = TEMPLATE.format(
        vid=vid,
        vendor=f['vendor'],
        vendor_display=vendor_display,
        package=f['package'],
        verdict=f['verdict'],
        tag=f['tag'],
        confidence=f['confidence'],
        threat=f['threat'],
        privacy=f['privacy'] or '_Not recorded._',
        attack=f['attack'] or '_Not recorded._',
        callgraph=f['callgraph'] or '_Not recorded._',
        fw_row=fw_row,
        fw_section=fw_section,
    )
    (OUT_DIR / f'{vid}.md').write_text(content)

print(f'Written {len(all_findings)} canonical vuln files to {OUT_DIR}')
print(f'  MIUI-style unique packages: {len(miui_groups)}')
print(f'  Vendor-subdir entries:      {len(fs_entries)}')
print(f'  NI recheck promoted:        {len(ni_entries)}')
print(f'  Total after dedup:          {len(all_findings)}')
