#!/usr/bin/env bash
# =============================================================================
# run_pipeline.sh — Full OEM framework analysis pipeline
#
# Takes a firmware dump directory and produces confirmed privilege deviations
# (CONF_H / CONF_M) in a claude_validated.json file.
#
# Pipeline stages:
#   Step 1    Find all .jar / .dex files in the firmware dump
#   Step 2    Decompile to smali with baksmali 2.5.2
#   Step 3    Discover all hardcoded package name references in smali
#   Step 3b   Filter: keep only packages that exist as real APKs in the wild
#             (queries Google Play, APKPure, APKMirror, APKFab, Aptoide, APKCombo)
#   Step 4    Analyze methods: trace variable flow, classify enforcement patterns
#   Step 5    Build smali call graph, trace forward/backward from seed methods (d=5)
#   Step 6    Synthesize per-package propagation chains from steps 3-5
#   Phase 1   Local LLM triage (Dolphin/Ollama) — assigns HIGH/MED/LOW
#   Phase 2   Cloud LLM validation (Claude Haiku, temperature=0.0) — confirms verdicts
#   Phase 2b  NI re-evaluation: re-runs Haiku on NEEDS_INVESTIGATION items with
#             full smali (no size budget); unresolved NI items escalated to Sonnet
#
# Output:
#   <work_dir>/<vendor>/triage.json            Phase 1 results (all items)
#   <work_dir>/<vendor>/claude_validated.json  Phase 2 results
#   <work_dir>/<vendor>/ni_recheck.json        Phase 2b NI re-evaluation results
#
# Usage:
#   ./run_pipeline.sh <dump_dir> <work_dir> <vendor_name> [options]
#
# Example:
#   ./run_pipeline.sh /data/dumps/samsung/ /data/work/ samsung
#   ./run_pipeline.sh /data/dumps/oneplus/ /data/work/ oneplus --skip-filter
#   ./run_pipeline.sh /data/dumps/nokia/   /data/work/ nokia   --skip-phase2
#
# Prerequisites:
#   - Run setup.sh first (creates .venv/ with all Python dependencies)
#   - Activate the venv:  source .venv/bin/activate
#   - baksmali 2.5.2 on PATH (installed by setup.sh into tools/)
#   - ollama running locally with dolphin3-r1 pulled (for Phase 1):
#       ollama pull dolphin3-r1
#   - ANTHROPIC_API_KEY set (for Phase 2 / 2b):
#       export ANTHROPIC_API_KEY="YOUR_API_KEY_HERE"
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARTIFACT_DIR="$(cd "$SCRIPT_DIR/../.." && pwd)"

# ── Activate venv if available ────────────────────────────────────────────────
if [[ -z "${VIRTUAL_ENV:-}" ]] && [[ -f "$ARTIFACT_DIR/.venv/bin/activate" ]]; then
    source "$ARTIFACT_DIR/.venv/bin/activate"
fi

# ── Add tools/ to PATH (baksmali, etc.) ──────────────────────────────────────
if [[ -d "$ARTIFACT_DIR/tools" ]]; then
    export PATH="$ARTIFACT_DIR/tools:$PATH"
fi

# ── Argument parsing ──────────────────────────────────────────────────────────

usage() {
    cat <<EOF
Usage: $0 <dump_dir> <work_dir> <vendor_name> [options]

  dump_dir      Root of extracted firmware files
  work_dir      Working directory (per-vendor subdirs created here)
  vendor_name   Label for this ROM (e.g., samsung, oneplus, nokia)

Options:
  --depth N         Call graph traversal depth (default: 5)
  --model MODEL     Phase 1 Ollama model (default: dolphin3-r1)
  --cloud-model M   Phase 2 Claude model (default: claude-haiku-4-5-20251001)
  --skip-filter     Skip step 3b (keep all discovered packages, no wild check)
  --skip-callgraph  Skip step 5 (call graph) and step 6 (propagation)
  --skip-phase1     Skip Phase 1 (requires existing triage.json)
  --skip-phase2     Skip Phase 2 (stop after Phase 1)
  --skip-ni-recheck Skip Phase 2b NI re-evaluation
  --resume          Resume Phase 1/2/2b from a previous partial run
  --workers N       Parallel workers for Phase 1 (default: 2)
  --min-priority P  Phase 2 minimum priority: HIGH or MEDIUM (default: MEDIUM)
  --sonnet-model M  Model for NI escalation in Phase 2b (default: claude-sonnet-4-6)
  --api-key KEY     Anthropic API key (overrides ANTHROPIC_API_KEY env var)
EOF
    exit 1
}

if [[ $# -lt 3 ]]; then usage; fi

DUMP_DIR="$(realpath "$1")"
WORK_BASE="$(realpath "$2")"
VENDOR="$3"
shift 3

# Defaults
DEPTH=5
P1_MODEL="dolphin3-r1"
P2_MODEL="claude-haiku-4-5-20251001"
SKIP_FILTER=false
SKIP_CALLGRAPH=false
SKIP_PHASE1=false
SKIP_PHASE2=false
SKIP_NI_RECHECK=false
RESUME=false
WORKERS=2
MIN_PRIORITY="MEDIUM"
SONNET_MODEL="claude-sonnet-4-6"
API_KEY="${ANTHROPIC_API_KEY:-}"

while [[ $# -gt 0 ]]; do
    case "$1" in
        --depth)           DEPTH="$2";           shift 2 ;;
        --model)           P1_MODEL="$2";         shift 2 ;;
        --cloud-model)     P2_MODEL="$2";         shift 2 ;;
        --skip-filter)     SKIP_FILTER=true;       shift ;;
        --skip-callgraph)  SKIP_CALLGRAPH=true;    shift ;;
        --skip-phase1)     SKIP_PHASE1=true;       shift ;;
        --skip-phase2)     SKIP_PHASE2=true;       shift ;;
        --skip-ni-recheck) SKIP_NI_RECHECK=true;   shift ;;
        --resume)          RESUME=true;            shift ;;
        --workers)         WORKERS="$2";           shift 2 ;;
        --min-priority)    MIN_PRIORITY="$2";      shift 2 ;;
        --sonnet-model)    SONNET_MODEL="$2";      shift 2 ;;
        --api-key)         API_KEY="$2";           shift 2 ;;
        *) echo "Unknown option: $1"; usage ;;
    esac
done

# ── Directory layout ──────────────────────────────────────────────────────────

WORK_DIR="${WORK_BASE}/${VENDOR}"
SMALI_DIR="${WORK_DIR}/smali"
STEP3_DIR="${WORK_DIR}/step3_refs"
STEP3B_DIR="${WORK_DIR}/step3b_filtered"
STEP4_DIR="${WORK_DIR}/step4_analysis"
STEP5_DIR="${WORK_DIR}/step5_callgraph"
STEP6_DIR="${WORK_DIR}/step6_propagation"
JARS_LIST="${WORK_DIR}/step1_jars.txt"
TRIAGE_JSON="${WORK_DIR}/triage.json"
VALIDATED_JSON="${WORK_DIR}/claude_validated.json"

mkdir -p "$WORK_DIR"

# ── Banner ────────────────────────────────────────────────────────────────────

echo "================================================================"
echo "  OEM Framework Analysis Pipeline"
echo "================================================================"
echo "  Vendor:       $VENDOR"
echo "  Dump dir:     $DUMP_DIR"
echo "  Work dir:     $WORK_DIR"
echo "  CG depth:     $DEPTH"
echo "  Phase 1 model: $P1_MODEL (local Ollama)"
echo "  Phase 2 model: $P2_MODEL (Anthropic cloud, temp=0.0)"
echo "  NI escalation: $SONNET_MODEL"
echo "  Skip filter:  $SKIP_FILTER"
echo "  Skip CG:      $SKIP_CALLGRAPH"
echo "  Skip Phase 1: $SKIP_PHASE1"
echo "  Skip Phase 2: $SKIP_PHASE2"
echo "  Skip NI:      $SKIP_NI_RECHECK"
echo "================================================================"
echo ""

# ── Step 1: Find JARs ────────────────────────────────────────────────────────

if [[ "$SKIP_PHASE1" == false && "$SKIP_CALLGRAPH" == false ]] || [[ ! -f "$JARS_LIST" ]]; then
    echo "[ Step 1 ] Finding JAR/DEX files..."
    bash "${SCRIPT_DIR}/step1_find_jars.sh" "$DUMP_DIR" "$JARS_LIST"
    echo ""
else
    echo "[ Step 1 ] Skipped (existing jars list: $JARS_LIST)"
fi

# ── Step 2: Decompile to smali ───────────────────────────────────────────────

if [[ "$SKIP_PHASE1" == false ]] || [[ ! -d "$SMALI_DIR" ]]; then
    echo "[ Step 2 ] Decompiling JARs to smali..."
    bash "${SCRIPT_DIR}/step2_decompile_jars.sh" "$JARS_LIST" "$SMALI_DIR"
    echo ""
else
    echo "[ Step 2 ] Skipped (existing smali dir: $SMALI_DIR)"
fi

# ── Step 3: Discover package references ─────────────────────────────────────

if [[ ! -f "${STEP3_DIR}/references.csv" ]]; then
    echo "[ Step 3 ] Scanning smali for hardcoded package names..."
    python3 "${SCRIPT_DIR}/step3_find_package_refs.py" \
        --smali-dir "$SMALI_DIR" \
        --output    "$STEP3_DIR"
    echo ""
else
    echo "[ Step 3 ] Skipped (existing: ${STEP3_DIR}/references.csv)"
fi

REFS_CSV="${STEP3_DIR}/references.csv"

# ── Step 3b: Filter by APK existence in the wild ────────────────────────────

if [[ "$SKIP_FILTER" == true ]]; then
    # Check for pre-computed filter cache bundled with the sample
    DUMP_DIR_RESOLVED="$(cd "$DUMP_DIR" && pwd)"
    PRECOMPUTED_SCAN="${DUMP_DIR_RESOLVED}/step3b_scan_cache/found_anywhere.txt"
    if [[ -f "$PRECOMPUTED_SCAN" ]]; then
        echo "[ Step 3b ] Using pre-computed APK filter cache from sample"
        echo "           ($PRECOMPUTED_SCAN)"
        mkdir -p "${STEP3B_DIR}/scan_results"
        cp "$PRECOMPUTED_SCAN" "${STEP3B_DIR}/scan_results/found_anywhere.txt"
        python3 "${SCRIPT_DIR}/step3b_filter_packages.py" \
            --references "$REFS_CSV" \
            --output     "$STEP3B_DIR" \
            --existing-scan "${STEP3B_DIR}/scan_results"
        REFS_FOR_STEP4="${STEP3B_DIR}/references.csv"
    else
        echo "[ Step 3b ] Skipped (--skip-filter)"
        REFS_FOR_STEP4="$REFS_CSV"
    fi
elif [[ -f "${STEP3B_DIR}/references.csv" ]]; then
    echo "[ Step 3b ] Skipped (existing: ${STEP3B_DIR}/references.csv)"
    REFS_FOR_STEP4="${STEP3B_DIR}/references.csv"
else
    echo "[ Step 3b ] Filtering packages by wild APK existence..."
    echo "           This queries external app stores (~5s per package)."
    echo "           Use --skip-filter to skip (uses pre-computed cache if available)."
    python3 "${SCRIPT_DIR}/step3b_filter_packages.py" \
        --references "$REFS_CSV" \
        --output     "$STEP3B_DIR" \
        --scan-script "${SCRIPT_DIR}/scan_wild_for_packages.py" \
        --scan-out   "${STEP3B_DIR}/scan_results"
    REFS_FOR_STEP4="${STEP3B_DIR}/references.csv"
    echo ""
fi

# ── Step 4: Method analysis ──────────────────────────────────────────────────

if [[ ! -f "${STEP4_DIR}/soot_entry_points.txt" ]]; then
    echo "[ Step 4 ] Analyzing methods and variable flow..."
    python3 "${SCRIPT_DIR}/step4_analyze_methods.py" \
        --references "$REFS_FOR_STEP4" \
        --smali-dir  "$SMALI_DIR" \
        --output     "$STEP4_DIR"
    echo ""
else
    echo "[ Step 4 ] Skipped (existing: ${STEP4_DIR}/soot_entry_points.txt)"
fi

# ── Step 5: Build call graph ─────────────────────────────────────────────────

if [[ "$SKIP_CALLGRAPH" == true ]]; then
    echo "[ Step 5 ] Skipped (--skip-callgraph)"
elif [[ -d "$STEP5_DIR" && -n "$(ls -A "$STEP5_DIR" 2>/dev/null)" ]]; then
    echo "[ Step 5 ] Skipped (existing: $STEP5_DIR)"
else
    ENTRY_POINTS="${STEP4_DIR}/soot_entry_points.txt"
    if [[ -f "$ENTRY_POINTS" && $(wc -l < "$ENTRY_POINTS") -gt 2 ]]; then
        echo "[ Step 5 ] Building smali call graph (depth=$DEPTH)..."
        python3 "${SCRIPT_DIR}/step5_smali_callgraph.py" \
            --smali-dir    "$SMALI_DIR" \
            --entry-points "$ENTRY_POINTS" \
            --output       "$STEP5_DIR" \
            --depth        "$DEPTH"
        echo ""
    else
        echo "[ Step 5 ] No entry points from Step 4 — skipping."
    fi
fi

# ── Step 6: Propagation tracker ──────────────────────────────────────────────

PROP_DIR="${STEP6_DIR}/per_package"

if [[ "$SKIP_CALLGRAPH" == true ]]; then
    echo "[ Step 6 ] Skipped (--skip-callgraph)"
    # Fall back: use step3 output directly as per-package dir for Phase 1
    PROP_DIR="$STEP3_DIR"
elif [[ -d "$PROP_DIR" && -n "$(ls -A "$PROP_DIR" 2>/dev/null)" ]]; then
    echo "[ Step 6 ] Skipped (existing: $PROP_DIR)"
else
    echo "[ Step 6 ] Building per-package propagation chains..."
    python3 "${SCRIPT_DIR}/step6_propagation_tracker.py" \
        --work-dir "$WORK_DIR" \
        --output   "$STEP6_DIR"
    echo ""
fi

# ── Phase 1: Local LLM triage (Dolphin / Ollama) ────────────────────────────

if [[ "$SKIP_PHASE1" == true ]]; then
    echo "[ Phase 1 ] Skipped (--skip-phase1)"
    if [[ ! -f "$TRIAGE_JSON" ]]; then
        echo "ERROR: --skip-phase1 requires an existing $TRIAGE_JSON"
        exit 1
    fi
else
    echo "[ Phase 1 ] Running local LLM triage ($P1_MODEL)..."
    echo "  Input:  $PROP_DIR"
    echo "  Output: $TRIAGE_JSON"

    RESUME_ARG=""
    if [[ "$RESUME" == true && -f "$TRIAGE_JSON" ]]; then
        RESUME_ARG="--resume"
    fi

    python3 "${SCRIPT_DIR}/phase1_llm_triage.py" \
        "$PROP_DIR" \
        --model   "$P1_MODEL" \
        --output  "$TRIAGE_JSON" \
        --workers "$WORKERS" \
        $RESUME_ARG

    CONF=$(python3 -c "
import json
data = json.load(open('$TRIAGE_JSON'))
h = sum(1 for x in data if x.get('priority')=='HIGH')
m = sum(1 for x in data if x.get('priority')=='MEDIUM')
print(f'HIGH={h}, MEDIUM={m}, total={len(data)}')
" 2>/dev/null || echo "see $TRIAGE_JSON")
    echo "  Phase 1 complete: $CONF"
    echo ""
fi

# ── Phase 2: Cloud LLM validation (Claude Haiku/Sonnet) ─────────────────────

if [[ "$SKIP_PHASE2" == true ]]; then
    echo "[ Phase 2 ] Skipped (--skip-phase2)"
    echo ""
    echo "================================================================"
    echo "  DONE — Phase 1 results: $TRIAGE_JSON"
    echo "================================================================"
    exit 0
fi

if [[ -z "$API_KEY" ]]; then
    echo "ERROR: ANTHROPIC_API_KEY not set. Pass --api-key or export ANTHROPIC_API_KEY."
    exit 1
fi

echo "[ Phase 2 ] Running cloud LLM validation ($P2_MODEL)..."
echo "  Input:  $TRIAGE_JSON"
echo "  Smali:  $SMALI_DIR"
echo "  Output: $VALIDATED_JSON"

RESUME_ARG=""
if [[ "$RESUME" == true && -f "$VALIDATED_JSON" ]]; then
    RESUME_ARG="--resume"
fi

python3 "${SCRIPT_DIR}/phase2_llm_validate.py" \
    --triage      "$TRIAGE_JSON" \
    --prop-dir    "$PROP_DIR" \
    --smali-dir   "$SMALI_DIR" \
    --output      "$VALIDATED_JSON" \
    --model       "$P2_MODEL" \
    --api-key     "$API_KEY" \
    --min-priority "$MIN_PRIORITY" \
    $RESUME_ARG

echo ""

# ── Phase 2b: NI re-evaluation (full smali, then Sonnet escalation) ──────────

NI_JSON="${WORK_DIR}/ni_recheck.json"

if [[ "$SKIP_NI_RECHECK" == true ]]; then
    echo "[ Phase 2b ] Skipped (--skip-ni-recheck)"
else
    # Check if there are any NI items to re-evaluate
    NI_COUNT=$(python3 -c "
import json, sys
try:
    data = json.load(open('$VALIDATED_JSON'))
    print(sum(1 for x in data if x.get('verdict','') in ('NEEDS_INVESTIGATION','NEEDS_INV')))
except: print(0)
" 2>/dev/null || echo 0)

    if [[ "$NI_COUNT" -eq 0 ]]; then
        echo "[ Phase 2b ] No NEEDS_INVESTIGATION items — skipping."
    else
        echo "[ Phase 2b ] Re-evaluating $NI_COUNT NI items with full smali (no size budget)..."
        echo "  Input:  $VALIDATED_JSON"
        echo "  Sonnet escalation model: $SONNET_MODEL"
        echo "  Output: $NI_JSON"

        RESUME_ARG=""
        if [[ "$RESUME" == true && -f "$NI_JSON" ]]; then
            RESUME_ARG="--resume"
        fi

        python3 "${SCRIPT_DIR}/phase2b_ni_recheck.py" \
            --validated  "$VALIDATED_JSON" \
            --prop-dir   "$PROP_DIR" \
            --smali-dir  "$SMALI_DIR" \
            --output     "$NI_JSON" \
            --api-key    "$API_KEY" \
            --sonnet-model "$SONNET_MODEL" \
            --file-budget 0 \
            --max-files   0 \
            $RESUME_ARG

        echo ""
    fi
fi

# ── Summary ───────────────────────────────────────────────────────────────────

python3 - "$VALIDATED_JSON" "$NI_JSON" "$VENDOR" <<'PY'
import json, sys, os
v2_path, ni_path, vendor = sys.argv[1], sys.argv[2], sys.argv[3]
try:
    data = json.load(open(v2_path))
    ch = sum(1 for x in data if x.get('verdict') == 'CONFIRMED_HIGH')
    cm = sum(1 for x in data if x.get('verdict') == 'CONFIRMED_MEDIUM')
    ni = sum(1 for x in data if x.get('verdict') in ('NEEDS_INVESTIGATION','NEEDS_INV'))
    fp = sum(1 for x in data if x.get('verdict') == 'LIKELY_FP')

    ni_promoted = 0
    if os.path.exists(ni_path):
        ni_data = json.load(open(ni_path))
        ni_promoted = sum(1 for x in ni_data if x.get('verdict','').startswith('CONFIRMED'))

    print("================================================================")
    print(f"  Pipeline complete: {vendor}")
    print("================================================================")
    print(f"  Phase 2  CONFIRMED_HIGH:      {ch}")
    print(f"  Phase 2  CONFIRMED_MEDIUM:    {cm}")
    print(f"  Phase 2  NEEDS_INVESTIGATION: {ni}  (re-evaluated in Phase 2b)")
    print(f"  Phase 2  LIKELY_FP:           {fp}")
    if ni_promoted:
        print(f"  Phase 2b NI promoted:         {ni_promoted}")
    total = ch + cm + ni_promoted
    print(f"  Total confirmed:              {total}")
    print(f"  Phase 2 output:  {v2_path}")
    if os.path.exists(ni_path):
        print(f"  Phase 2b output: {ni_path}")
    print("================================================================")
except Exception as e:
    print(f"Could not parse output: {e}")
PY
