# Artifact — When the OS Plays Favorites

Artifact for NDSS 2027 paper: *"When the OS Plays Favorites: Systematic Analysis of Privilege Deviations in Android OEM Frameworks."*

This repository contains the complete analysis pipeline that takes an Android firmware image (or a live device) and identifies OEM-introduced privilege deviations — cases where third-party apps receive undocumented permissions, enforcement exemptions, or special treatment hardcoded into framework code.

---

## Quick Start (Kick-the-Tires, ~30 minutes)

For a quick functionality check without needing firmware images:

```bash
# 1. Install dependencies
chmod +x setup.sh && ./setup.sh

# 2. Activate the virtual environment
source .venv/bin/activate

# 3. Run on the bundled minimal example (Samsung Galaxy A22 5G, Android 13)
#    --skip-filter skips APK store lookups (saves ~4 hours, see note below)
cd scripts/pipeline/
./run_pipeline.sh ../../examples/sample_device/ /tmp/work/ samsung --skip-filter --skip-phase2

# 4. Check output
cat /tmp/work/samsung/triage.json | python3 -m json.tool | head -40
```

This runs Steps 1–6 + Phase 1 (local LLM triage) on a small pre-extracted device dump. No API keys or firmware downloads needed.

To also run Phase 2 (cloud LLM validation):
```bash
export ANTHROPIC_API_KEY="YOUR_API_KEY_HERE"   # standard key (sk-ant-api03-*) or OAuth token (sk-ant-oat01-*)
./run_pipeline.sh ../../examples/sample_device/ /tmp/work/ samsung --skip-filter
cat /tmp/work/samsung/claude_validated.json | python3 -m json.tool
```

Phase 2 uses Claude Haiku by default. Candidates marked `NEEDS_INVESTIGATION` can be escalated to Phase 2b, which re-evaluates them with expanded smali context and optionally escalates to Claude Sonnet for higher-quality reasoning:
```bash
cd scripts/pipeline/
python3 phase2b_ni_recheck.py \
  --validated /tmp/work/samsung/claude_validated.json \
  --smali-dir /tmp/work/samsung/smali \
  --output /tmp/work/samsung/ni_recheck.json \
  --api-key "$ANTHROPIC_API_KEY" \
  --escalate-model claude-sonnet-4-5-20250514
```

### Step 3b: APK store filtering

Step 3b checks whether each discovered package name exists as a real app in Google Play, APKMirror, APKPure, and other sources. This reduces false positives (internal framework strings that look like package names) but queries external APIs at ~5 seconds per package. For the bundled sample (~3,500 packages to check), a live scan takes **approximately 4–5 hours**.

The bundled sample ships with a **pre-computed filter cache** (`examples/sample_device/step3b_scan_cache/`). When you use `--skip-filter`, the pipeline automatically detects and uses this cache — giving you the same filtered results without any API queries.

- **Recommended for evaluation:** use `--skip-filter` (uses the bundled cache, no wait).
- **Full live scan:** omit `--skip-filter` to re-run the APK store lookups from scratch.

---

## Repository Structure

```
artifacts/
├── setup.sh                        # One-command dependency installer (Ubuntu 22.04/24.04)
├── README.md                       # This file
├── examples/
│   └── sample_device/              # Samsung Galaxy A22 5G (Android 13) framework JARs
│       └── system/framework/...    # 91 JARs, ~100MB — kick-the-tires test
├── scripts/
│   ├── extract_adb.sh              # Mode A: pull from live ADB device
│   ├── extract_android_dumps.sh    # Mode B: extract Android Dumps tar.gz
│   ├── extract_miui.sh             # Mode C: extract MIUI firmware zip
│   ├── normalize_vuln_reports.py   # Convert JSON results → vuln-NNN.md reports
│   └── pipeline/                   # Core analysis pipeline
│       ├── run_pipeline.sh         # Entry point — full pipeline for one device
│       ├── step1_find_jars.sh      # Find JAR/DEX files
│       ├── step2_decompile_jars.sh # Decompile to smali (baksmali 2.5.2)
│       ├── step3_find_package_refs.py    # Scan for hardcoded package references
│       ├── step3b_filter_packages.py     # Filter by APK store presence
│       ├── step4_analyze_methods.py      # Variable flow + enforcement patterns
│       ├── step5_smali_callgraph.py      # Method-level call graph
│       ├── step6_propagation_tracker.py  # Per-package propagation chains
│       ├── phase1_llm_triage.py          # Local LLM triage (Ollama/Dolphin)
│       ├── phase2_llm_validate.py        # Cloud LLM validation (Claude Haiku)
│       ├── phase2b_ni_recheck.py         # NI re-evaluation (Haiku + Sonnet)
│       └── README.md                     # Detailed pipeline documentation
├── tools/
│   ├── baksmali-2.5.2.jar          # Downloaded by setup.sh
│   ├── baksmali                    # Wrapper script
│   └── rom_tools/                  # Firmware extraction toolchain
│       ├── rom.sh                  # Universal ROM extractor
│       ├── payload_dumper/         # OTA payload.bin extractor
│       ├── sdat2img/               # system.new.dat converter
│       ├── splituapp/              # Huawei UPDATE.APP splitter
│       ├── tools/                  # deimg.sh, devdex.sh, etc.
│       └── setup.sh               # Build erofs-utils, e2fsprogs, vdexExtractor
├── reproducibility/
│   └── vuln/                       # 286 per-finding markdown reports
│       ├── Cat1/                   # Category 1 case studies (§5.1)
│       ├── Cat2/                   # Category 2 case studies (§5.2)
│       └── vuln-001.md … vuln-286.md  # All confirmed deviations
├── poc-videos/                     # Proof-of-concept demonstration videos
│   ├── cat1_nokia_integrator_content_provider.mp4
│   ├── cat2_oneplus_silent_sms.mp4
│   ├── cat2_vivo_bal_bypass.mp4
│   └── cat2_xiaomi_installer_bypass.mp4
└── LICENSE
```

---

## System Requirements

| Resource | Requirement |
|----------|-------------|
| **OS** | Ubuntu 22.04/24.04 LTS or Debian 13 (x86-64) |
| **CPU** | 8+ cores recommended |
| **RAM** | 16 GB minimum |
| **Disk** | 50 GB free (for firmware extraction + working files) |
| **Java** | JRE 17+ (installed by `setup.sh`) |
| **Python** | 3.10+ (venv created by `setup.sh`) |
| **Network** | Required for Phase 2 (Anthropic API) and Step 3b (APK store lookups) |
| **GPU** | Optional — Phase 1 (Ollama) benefits from GPU but works on CPU |

**API costs:** Running Phase 2 on a single device costs ~$0.50–$2.00 (Claude Haiku).

---

## Installation

```bash
git clone <this-repo>
cd artifacts/
chmod +x setup.sh
./setup.sh
```

The setup script installs all dependencies and validates the installation. It will report which components are ready.

### Manual prerequisites (if not using setup.sh)

- **baksmali 2.5.2**: Bundled in `tools/rom_tools/tools/`; or download from [JesusFreke/smali releases](https://github.com/JesusFreke/smali/releases/tag/v2.5.2)
- **Ollama + dolphin3-r1**: `curl -fsSL https://ollama.ai/install.sh | sh && ollama pull dolphin3-r1`
- **Python 3.10+**: `python3 -m venv .venv && source .venv/bin/activate && pip install anthropic requests google-play-scraper apksearch protobuf bsdiff4 zstandard`
- **ROM tools** (for MIUI extraction): `sudo apt install libfuse-dev fuse brotli` + build erofs-utils, e2fsprogs

---

## Three Input Modes

The pipeline analyzes any Android device firmware. There are three ways to obtain a dump:

### Mode A: Live Device via ADB

Connect an Android device with USB debugging enabled:

```bash
./scripts/extract_adb.sh [SERIAL] /data/dumps/my_device/
./scripts/pipeline/run_pipeline.sh /data/dumps/my_device/ /data/work/ <vendor>
```

### Mode B: Android Dumps Archive

Download a device dump from [Android Dumps](https://dumps.tadiphone.dev/) as a `.tar.gz`:

```bash
./scripts/extract_android_dumps.sh /path/to/device.tar.gz /data/dumps/device/
./scripts/pipeline/run_pipeline.sh /data/dumps/device/ /data/work/ <vendor>

# Fast mode: extract only framework JARs (~50-200MB instead of full dump)
./scripts/extract_android_dumps.sh /path/to/device.tar.gz /data/dumps/device/ --framework-only
```

### Mode C: MIUI Firmware Zip

Download a MIUI ROM from [xiaomifirmwareupdater.com](https://xiaomifirmwareupdater.com/):

```bash
./scripts/extract_miui.sh /path/to/miui_firmware.zip /data/dumps/xiaomi_device/
./scripts/pipeline/run_pipeline.sh /data/dumps/xiaomi_device/rom-deodexed/ /data/work/ xiaomi
```

**Note:** MIUI extraction requires `sudo` for mounting filesystem images. The `rom.sh` toolchain handles payload.bin, sparse images, EROFS, and deodexing automatically.

---

## Pipeline Overview

```
Input: firmware dump directory (from any of the three modes above)
       │
       ├─ Step 1   Find all .jar/.dex files in the dump
       ├─ Step 2   Decompile JARs to smali bytecode (baksmali 2.5.2)
       ├─ Step 3   Scan smali for hardcoded third-party package names (const-string)
       ├─ Step 3b  Filter: keep only packages that exist as real APKs in app stores
       ├─ Step 4   Analyze methods: variable flow, enforcement pattern classification
       ├─ Step 5   Build method-level call graph from invoke-* instructions
       ├─ Step 6   Synthesize per-package propagation chains (steps 3–5)
       │
       ├─ Phase 1  Local LLM triage (Dolphin 3.0 R1 via Ollama)
       │           Assigns HIGH / MEDIUM / LOW to each candidate → triage.json
       │
       ├─ Phase 2  Cloud LLM validation (Claude Haiku, temperature=0.0)
       │           Confirms findings against actual smali + AOSP absence check
       │           → claude_validated.json
       │
       └─ Phase 2b NI re-evaluation (Haiku full smali + Sonnet escalation)
                   Re-runs NEEDS_INVESTIGATION with no size cap → ni_recheck.json

Output: claude_validated.json with verdicts:
        CONFIRMED_HIGH     — real privilege escalation / bypass
        CONFIRMED_MEDIUM   — real but limited risk
        NEEDS_INVESTIGATION — ambiguous or evidence truncated
        LIKELY_FP          — Binder plumbing, dead code, etc.
```

### Running the pipeline

```bash
# Full pipeline
./scripts/pipeline/run_pipeline.sh <dump_dir> <work_dir> <vendor_name>

# Stop after Phase 1 (no API key needed, $0 cost)
./scripts/pipeline/run_pipeline.sh <dump_dir> <work_dir> <vendor> --skip-phase2

# Skip APK store lookups (faster, more false positives)
./scripts/pipeline/run_pipeline.sh <dump_dir> <work_dir> <vendor> --skip-filter

# Resume a partial run
./scripts/pipeline/run_pipeline.sh <dump_dir> <work_dir> <vendor> --resume
```

See `scripts/pipeline/README.md` for the full options reference.

---

## Mapping Paper Claims to Experiments

The table below maps key paper claims to reproducible experiments. Each can be validated by running the pipeline on the specified input.

| # | Paper Claim (Section) | Experiment | Expected Output |
|---|----------------------|------------|-----------------|
| C1 | Pipeline identifies hardcoded package references in OEM framework code (§3) | Run Steps 1–3 on any OEM device dump | `step3_refs/references.csv` lists all discovered package references with locations |
| C2 | APK store filtering reduces false positives from internal packages (§3.2) | Run Step 3b after Step 3 | Compare row count of `step3_refs/references.csv` vs `step3b_filtered/references.csv` |
| C3 | Local LLM triage effectively separates HIGH/MED from LOW candidates (§3.3) | Run Phase 1 on Step 6 output | `triage.json` with priority distribution; paper reports ~86% classified as LOW |
| C4 | Cloud LLM validation confirms true positives with high precision (§3.4) | Run Phase 2 on a device with known findings | `claude_validated.json` should contain CONFIRMED entries matching `reproducibility/vuln/` |
| C5 | OEM framework code grants undocumented permissions to named packages (§4, §5) | Browse `reproducibility/vuln/Cat1/` reports | Each report shows the smali call chain from hardcoded package name to `grantRuntimePermission` |
| C6 | OEM code provides enforcement bypasses to named packages (§4, §5) | Browse `reproducibility/vuln/Cat2/` reports | Each report shows bypass logic (BAL, CTS checks, installer restrictions) |
| C7 | 707 confirmed deviations across 28 OEMs, 353 unique patterns (§4) | Run on full corpus (see paper datasets) | Dedup output matches Table 2 totals |
| C8 | Dynamic validation on purchased devices confirms static findings (§5) | Run pipeline on ADB dump from an affected device; compare with PoC videos | `poc-videos/` demonstrates exploitation of confirmed findings |

**Minimal validation (Claims C1–C4):** Run the full pipeline on a single device (~1–4 hours).
**Finding verification (Claims C5–C6):** Read `reproducibility/vuln/` reports (no setup needed).
**Full reproduction (Claim C7):** Requires access to all three corpora.

---

## Expected Outputs (Paper Numbers)

When run on the full datasets described in the paper:

| Dataset | Images | CONF_H | CONF_M | Total confirmed |
|---------|--------|--------|--------|-----------------|
| FirmwareScanner (IMDEA) | 4,585 | 4 | 29 | 33 |
| MIUI official builds | 565 | 1 | 403 | 404 |
| Android Dumps community | 55 | 19 | 181 | 200 |
| **Dedup total** | **5,205** | **47** | **660** | **707** |

After vendor-level deduplication: **353 unique patterns** across **28 OEMs**.

### Cost estimate

| Phase | Method | Cost |
|-------|--------|------|
| Steps 1–6 | Local computation | $0 |
| Phase 1 | Local LLM (Ollama) | $0 |
| Phase 2 | Claude Haiku API | ~$0.50–$2.00 per device |
| Phase 2b | Haiku + Sonnet API | included above |
| **Full corpus** | All 5,205 images | **~$67.91** |

---

## Obtaining Firmware

### For artifact evaluation (single-device reproduction)

Any Android 12+ OEM device can be used. Options:

1. **Live device**: Use Mode A (ADB pull) with any available Android phone
2. **Android Dumps**: Download a free device dump from [dumps.tadiphone.dev](https://dumps.tadiphone.dev/)
3. **MIUI ROM**: Download from [xiaomifirmwareupdater.com](https://xiaomifirmwareupdater.com/)

### For full reproduction (paper corpus)

1. **IMDEA FirmwareScanner** (4,585 images): Request access via [firmware.re](https://firmware.re)
2. **MIUI builds** (565 images): Public downloads from [xiaomifirmwareupdater.com](https://xiaomifirmwareupdater.com/)
3. **Android Dumps** (55 images): Public downloads from [dumps.tadiphone.dev](https://dumps.tadiphone.dev/)

---

## Verifying Individual Findings

Each `reproducibility/vuln/vuln-NNN.md` report contains the full evidence chain. To verify manually:

1. Decompile the firmware image with baksmali (Steps 1–2)
2. Locate the anchor class/method listed in the report's call graph
3. Confirm the hardcoded package name appears as a `const-string` literal
4. Trace the call chain to the privilege sink (e.g., `grantRuntimePermission`)
5. Compare against AOSP source for the same Android version — the OEM code should be absent from stock

For a detailed guide on reading smali bytecode with real examples from this artifact, see **[docs/SMALI_VERIFICATION_GUIDE.md](docs/SMALI_VERIFICATION_GUIDE.md)**. The guide covers:
- A 5-minute smali primer (types, registers, instructions)
- A full walkthrough verifying a real CONFIRMED_HIGH finding (Samsung Pay background allowlist)
- Common patterns to recognize (allowlists, permission grants, AppOps bypasses, UID checks)
- Useful grep commands for navigating smali output
- How to compare findings against AOSP source

AOSP source tags used for comparison:
- Android 12: `android-12.0.0_r34`
- Android 13: `android-13.0.0_r82`
- Android 14: `android-14.0.0_r61`
- Android 15: `android-15.0.0_r20`

---

## Proof-of-Concept Videos

The `poc-videos/` directory contains demonstration videos for selected findings:

| Video | Finding | Description |
|-------|---------|-------------|
| `cat1_nokia_integrator_content_provider.mp4` | Cat1 — Nokia | Integrator content provider grants |
| `cat2_oneplus_silent_sms.mp4` | Cat2 — OnePlus | Silent SMS sending bypass |
| `cat2_vivo_bal_bypass.mp4` | Cat2 — Vivo | Background activity launch bypass |
| `cat2_xiaomi_installer_bypass.mp4` | Cat2 — Xiaomi | Package installer restriction bypass |

---

## Troubleshooting

| Issue | Solution |
|-------|----------|
| `baksmali: command not found` | Run `./setup.sh` or set `export PATH=$PWD/tools:$PATH` |
| Ollama connection refused | Start Ollama: `ollama serve` (in separate terminal) |
| Phase 2 HTTP 401 | Check `ANTHROPIC_API_KEY` is set and valid |
| MIUI extraction fails | Ensure ROM tools are built: `cd tools/rom_tools && ./setup.sh` |
| EROFS mount fails | Install FUSE: `sudo apt install fuse libfuse-dev` and rebuild erofs-utils |
| Out of disk space | A single device needs ~5–20 GB working space; use `--framework-only` for Android Dumps |
| Step 3b slow (store lookups) | Use `--skip-filter` to skip APK store checks (faster, more FPs) |

---

## Documentation

Detailed guides for artifact evaluators are available in the `docs/` directory:

| Guide | Description |
|-------|-------------|
| [Smali Verification Guide](docs/SMALI_VERIFICATION_GUIDE.md) | How to read smali bytecode and manually verify findings — includes a full walkthrough with a real CONFIRMED_HIGH example |
| [Pipeline Output Guide](docs/PIPELINE_OUTPUT_GUIDE.md) | Field-by-field reference for `triage.json`, `claude_validated.json`, and propagation traces — how to interpret every output |
| [Firmware Extraction Guide](docs/FIRMWARE_EXTRACTION_GUIDE.md) | Step-by-step instructions for all three input modes (ADB, Android Dumps, MIUI) with common pitfalls |
| [LLM Prompt Transparency](docs/LLM_PROMPT_TRANSPARENCY.md) | Full disclosure of every LLM prompt used in Phases 1, 2, and 2b — system prompts, user messages, pre-filtering logic, and multi-pass design |

---

## Artifact Availability

This artifact is associated with NDSS 2027 submission #711. We commit to uploading the artifact to a permanent public archive (e.g., Zenodo) backed by a Digital Object Identifier (DOI) upon badge award. This repository serves as the primary mutable source during the evaluation period.

**License:** See [LICENSE](LICENSE).

---

## Questions and Issues

Please open an issue in this repository. For findings related to specific vendors, see `reproducibility/vuln/` for the full call-chain evidence supporting each claim.
