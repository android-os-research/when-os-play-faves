# Reproducibility Artifact — OEM Framework Privilege Deviation Analysis

This repository contains the analysis pipeline, LLM prompts, and per-finding reports for the paper. It supports two levels of reproduction:

- **Reading findings only** — browse `reproducibility/vuln/` (no setup required)
- **Re-running the full pipeline** — requires firmware images, a local GPU for Phase 1, and an Anthropic API key for Phase 2

---

## Repository structure

```
when-os-play-faves/
├── scripts/
│   ├── pipeline/               # Full analysis pipeline (Steps 1–6 + Phases 1, 2, 2b)
│   │   ├── run_pipeline.sh     # Entry point — runs the full pipeline for one firmware dump
│   │   ├── step1_find_jars.sh
│   │   ├── step2_decompile_jars.sh
│   │   ├── step3_find_package_refs.py
│   │   ├── step3b_filter_packages.py
│   │   ├── step4_analyze_methods.py
│   │   ├── step5_smali_callgraph.py
│   │   ├── step6_propagation_tracker.py
│   │   ├── phase1_llm_triage.py
│   │   ├── phase2_llm_validate.py
│   │   ├── phase2b_ni_recheck.py
│   │   └── README.md           # Full pipeline documentation (start here)
│   └── normalize_vuln_reports.py   # Post-processing: JSON results → vuln-NNN.md reports
└── reproducibility/
    └── vuln/                   # Per-finding markdown reports (vuln-001.md … vuln-NNN.md)
```

---

## Level 1 — Reading findings (no setup)

The `reproducibility/vuln/` directory contains one markdown file per confirmed finding. Each report includes:

- **Vendor and package** — which OEM and allowlisted package name
- **Verdict** — `CONFIRMED_HIGH` or `CONFIRMED_MEDIUM`
- **Privacy impact and attack surface** — plain-language description
- **Call graph** — the smali call chain from hardcoded reference to privilege sink
- **Affected firmware images** — which corpus entries triggered the finding

These reports correspond directly to the confirmed deviations discussed in the paper. The paper's case studies (§5) are drawn from this set.

---

## Level 2 — Re-running the pipeline

### Prerequisites

| Requirement | Details |
|---|---|
| **baksmali 3.0.9** | Download from [JesusFreke/smali releases](https://github.com/JesusFreke/smali/releases/tag/v3.0.9); alias `java -jar baksmali-3.0.9.jar` as `baksmali` |
| **ollama** + `dolphin3-r1` | Phase 1 local LLM — `brew install ollama && ollama pull dolphin3-r1` |
| **Python 3.8+** | `pip install anthropic requests google-play-scraper apksearch` |
| **Anthropic API key** | Phase 2 / 2b cloud validation — `export ANTHROPIC_API_KEY=sk-...` |
| **Firmware images** | See [Obtaining firmware](#obtaining-firmware) below |

### Quick start

```bash
cd scripts/pipeline/

# Full pipeline: firmware dump → confirmed findings
./run_pipeline.sh /path/to/firmware_dump/ /data/work/ samsung

# Stop after Phase 1 (no API key needed)
./run_pipeline.sh /path/to/dump/ /data/work/ samsung --skip-phase2

# Resume a partial run
./run_pipeline.sh /path/to/dump/ /data/work/ samsung --resume
```

Output: `/data/work/samsung/claude_validated.json`

See `scripts/pipeline/README.md` for the full options reference and per-stage documentation.

### Pipeline overview

```
firmware dump
    │
    ├─ Steps 1–2   Find JARs → decompile to smali (baksmali 3.0.9)
    ├─ Steps 3–3b  Scan for hardcoded package names → filter by APK store presence
    ├─ Steps 4–6   Method analysis → call graph → per-package propagation reports
    │
    ├─ Phase 1     Local LLM triage (Dolphin 3.0 R1 / Ollama)
    │              Assigns HIGH / MEDIUM / LOW to each candidate
    │              → triage.json
    │
    ├─ Phase 2     Advanced LLM validation (Claude Haiku, temp=0.0)
    │              Validates HIGH+MED against actual smali; checks AOSP absence
    │              → claude_validated.json
    │              Verdicts: CONFIRMED_HIGH · CONFIRMED_MEDIUM · NEEDS_INVESTIGATION · LIKELY_FP
    │
    └─ Phase 2b    NI re-evaluation (Haiku full smali + Sonnet escalation)
                   Re-runs unresolved NEEDS_INVESTIGATION items without smali size cap
                   → ni_recheck.json
```

### Expected outputs (paper numbers)

When run on the datasets described in the paper, the pipeline produces:

| Dataset | Images | CONF\_H | CONF\_M | Total confirmed |
|---|---|---|---|---|
| FirmwareScanner (IMDEA) | 4,585 | 4 | 29 | 33 |
| MIUI official builds | 565 | 1 | 403 | 404 |
| Android Dumps community | 55 | 19 | 181 | 200 |
| **Dedup-confirmed total** | **5,205** | **47** | **660** | **707** |

Five purchased devices were re-processed individually after hardware acquisition; their counts are included within the Android Dumps rows above and deduplicated in the total.

### Cost estimate

- **Phase 1** (local Dolphin/Ollama): $0 — runs entirely on analyst hardware
- **Phase 2** (Claude Haiku): ~$67.91 total across all 21,284 promoted candidates
- **Phase 2b** (NI recheck, Haiku + Sonnet): included in the Phase 2 figure above

Running a single vendor (e.g., one Samsung or OnePlus device) costs approximately $0.50–$2.00 depending on the number of candidates promoted by Phase 1.

### Obtaining firmware

The paper used three corpora:

1. **IMDEA FirmwareScanner** (4,585 images) — the FirmwareScanner platform ([firmware.re](https://firmware.re)) collects firmware images from devices worldwide and provides access for academic research. Researchers can request a data-sharing agreement directly through the platform website.

2. **MIUI official builds** (565 images) — publicly available from [miuirom.org](https://miuirom.org). The specific build list used in the paper is included in `reproducibility/` (see below).

3. **Android Dumps community** (55 images) — publicly available from the Android Dumps community repository. Images are identified by device codename and build fingerprint.

To pull a live device image for the five dynamically validated devices, use:
```bash
adb pull /system /data/dumps/device_name/system/
adb pull /system_ext /data/dumps/device_name/system_ext/
# OTA images: extract payload.bin with payload-dumper before running the pipeline
```

### Normalizing results to vuln reports

After running the pipeline, convert JSON output to the `reproducibility/vuln/` markdown format:

```bash
python3 scripts/normalize_vuln_reports.py
```

This reads from the JSON output directories and writes `vuln-NNN.md` files to `reproducibility/vuln/`. Paths are configured relative to this repository root — no editing required.

---

## Verifying a specific finding

Each finding in the paper references a smali call chain. To verify manually:

1. Decompile the firmware image with baksmali (Steps 1–2 above).
2. Locate the anchor class/method listed in the `vuln-NNN.md` call graph.
3. Confirm the hardcoded package name appears as a `const-string` literal.
4. Trace the call chain to the privilege sink (e.g., `grantRuntimePermission`, `shouldAbortBackgroundActivityStart`).
5. Compare against the AOSP source for the same Android version — the OEM branch should be absent from stock.

AOSP source tags used for comparison:
- Android 12: `android-12.0.0_r34`
- Android 13: `android-13.0.0_r82`
- Android 14: `android-14.0.0_r61`
- Android 15: `android-15.0.0_r20`

---

## Questions and issues

Please open an issue in this repository. For findings related to specific vendors, see `reproducibility/vuln/` for the full call-chain evidence supporting each claim.
