# OEM Framework Analysis Pipeline

End-to-end pipeline: Android firmware dump → confirmed privilege deviations (CONF_H / CONF_M).

## Prerequisites

| Tool | Purpose | Install |
|---|---|---|
| `baksmali` **3.0.9** | DEX → smali decompiler | Download `baksmali-3.0.9.jar` from [JesusFreke/smali releases](https://github.com/JesusFreke/smali/releases/tag/v3.0.9); alias to `java -jar baksmali-3.0.9.jar` |
| `ollama` + `dolphin3-r1` | Phase 1 local LLM triage | `brew install ollama && ollama pull dolphin3-r1` |
| Python 3.8+ | All analysis scripts | `pip install anthropic requests` |
| `ANTHROPIC_API_KEY` | Phase 2/2b cloud validation | export in shell or pass `--api-key` |
| `google_play_scraper` | Play Store lookups in Step 3b | `pip install google-play-scraper` |
| `apksearch` | Wild APK store lookups in Step 3b (APKMirror, APKPure, APKFab, Aptoide, APKCombo) | `pip install apksearch` |


## Quick start

```bash
# Full pipeline (firmware dump → confirmed findings)
./run_pipeline.sh /path/to/firmware_dump/ /data/work/ samsung

# Skip wild-APK filter (faster, more false positives)
./run_pipeline.sh /path/to/dump/ /data/work/ nokia --skip-filter

# Stop after Phase 1 (no Anthropic API needed)
./run_pipeline.sh /path/to/dump/ /data/work/ vivo --skip-phase2

# Resume a partial run
./run_pipeline.sh /path/to/dump/ /data/work/ samsung --resume
```

Output lands in `/data/work/samsung/claude_validated.json`.

## Pipeline stages

```
firmware dump/
│
├─ Step 1  step1_find_jars.sh
│          Find all .jar / .dex files
│          → step1_jars.txt
│
├─ Step 2  step2_decompile_jars.sh   (requires baksmali)
│          Decompile JARs to smali
│          → smali/
│
├─ Step 3  step3_find_package_refs.py
│          Scan every const-string for Android package names
│          → step3_refs/references.csv
│
├─ Step 3b step3b_filter_packages.py
│          Drop packages not found as real APKs in the wild
│          → step3b_filtered/references.csv
│
├─ Step 4  step4_analyze_methods.py
│          Trace variable flow, classify enforcement patterns
│          → step4_analysis/enforcement_patterns.csv
│          → step4_analysis/soot_entry_points.txt
│
├─ Step 5  step5_smali_callgraph.py
│          Build method-level call graph from invoke-* instructions
│          → step5_callgraph/
│
├─ Step 6  step6_propagation_tracker.py
│          Synthesize steps 3-5 into per-package propagation chains
│          → step6_propagation/per_package/*.txt
│
├─ Phase 1  phase1_llm_triage.py   (local Dolphin via Ollama)
│           Assigns HIGH / MEDIUM / LOW to each package finding
│           → triage.json
│
├─ Phase 2  phase2_llm_validate.py  (Claude Haiku, temp=0.0, via API)
│           Validates HIGH+MED findings against actual smali
│           → claude_validated.json
│              CONFIRMED_HIGH      — real privilege escalation / bypass
│              CONFIRMED_MEDIUM    — real but limited risk
│              NEEDS_INVESTIGATION — ambiguous or smali truncated
│              LIKELY_FP           — Binder plumbing, dead code, etc.
│
└─ Phase 2b phase2b_ni_recheck.py  (Haiku full smali + Sonnet escalation)
            Re-evaluates NEEDS_INVESTIGATION items with no smali size cap;
            items still unresolved are escalated to claude-sonnet-4-6
            → ni_recheck.json
```

## Input format

`dump_dir` should be a directory of files pulled from the device or extracted from a firmware image. The pipeline scans recursively for `.jar` files. Typical layout from `baksmali` extraction:

```
dump/
├── system/
│   ├── framework/
│   │   ├── services.jar
│   │   ├── framework.jar
│   │   └── telephony-common.jar
│   └── ...
└── vendor/
    └── ...
```

To pull from a live device use `collect_android_partition_artifacts.sh` (in `../`):
```bash
../collect_android_partition_artifacts.sh <adb-serial> /data/dumps/
```

## Output format

`claude_validated.json` is a list of objects with these key fields:

```json
{
  "package": "com.coloros.phonemanager",
  "verdict": "CONFIRMED_MEDIUM",
  "confirmed_tag": "PKG_MGMT",
  "confidence": 0.87,
  "threat_type": "pkg_mgmt_bypass",
  "privacy_impact": "...",
  "attack_surface": "...",
  "anchor_to_tag_path": ["methodA() [ANCHOR]", "→ methodB()", "→ grantPermission()"]
}
```

## Options reference

```
--depth N           Call graph traversal depth (default: 5)
--model MODEL       Phase 1 Ollama model (default: dolphin3-r1)
--cloud-model M     Phase 2 Claude model (default: claude-haiku-4-5-20251001)
--skip-filter       Keep all packages, skip wild APK check (step 3b)
--skip-callgraph    Skip call graph (steps 5-6); use step 3 output for LLM
--skip-phase1       Skip Phase 1; requires existing triage.json
--skip-phase2       Stop after Phase 1; no API key needed
--skip-ni-recheck   Skip Phase 2b NI re-evaluation
--resume            Resume from partial Phase 1/2/2b run
--workers N         Parallel workers for Phase 1 (default: 2)
--min-priority P    Phase 2 minimum: HIGH or MEDIUM (default: MEDIUM)
--sonnet-model M    Model for NI escalation in Phase 2b (default: claude-sonnet-4-6)
--api-key KEY       Anthropic API key
```

## Reproducing paper results

The paper analyzed 4 corpora. To reproduce a single vendor:

```bash
# Example: reproduce Samsung SM-A556E analysis
./run_pipeline.sh \
    /data/dumps/samsung_sm_a556e/ \
    /data/work/ \
    samsung \
    --depth 5 \
    --model dolphin3-r1 \
    --cloud-model claude-haiku-4-5-20251001
```

Expected output: ~55 confirmed findings (CONF_H + CONF_M) matching Table 2.
