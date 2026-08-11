#!/usr/bin/env bash
# =============================================================================
# extract_miui.sh — Extract a MIUI firmware zip into a pipeline-ready dump
#
# MIUI firmware zips contain either:
#   a) payload.bin (A/B OTA update) — needs payload_dumper
#   b) system.new.dat + system.transfer.list (legacy) — needs sdat2img
#   c) super.img (dynamic partitions) — needs lpunpack
#
# This script handles all three formats using the bundled rom_tools.
#
# Usage:
#   ./extract_miui.sh <miui_firmware.zip> <output_dir>
#
# Example:
#   ./extract_miui.sh /data/miui/miui_MARBLE_OS1.0.3.0.TMRMIXM_13.0.zip /data/dumps/xiaomi_marble/
#
# Prerequisites:
#   Run ./setup.sh first to build the ROM extraction tools.
#   Some operations require sudo (mounting filesystem images).
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ARTIFACT_DIR="$(dirname "$SCRIPT_DIR")"
ROM_TOOLS="$ARTIFACT_DIR/tools/rom_tools"

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log()  { echo -e "${GREEN}[miui-extract]${NC} $*"; }
warn() { echo -e "${YELLOW}[miui-extract]${NC} $*"; }
err()  { echo -e "${RED}[miui-extract]${NC} $*" >&2; }

# ── Argument parsing ─────────────────────────────────────────────────────────
if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <miui_firmware.zip> <output_dir>"
    exit 1
fi

MIUI_ZIP="$(realpath "$1")"
OUTPUT_DIR="$(realpath "$2" 2>/dev/null || echo "$2")"

if [[ ! -f "$MIUI_ZIP" ]]; then
    err "MIUI zip not found: $MIUI_ZIP"
    exit 1
fi

# ── Check tools ──────────────────────────────────────────────────────────────
if [[ ! -f "$ROM_TOOLS/rom.sh" ]]; then
    err "ROM tools not found at: $ROM_TOOLS"
    err "Run ./setup.sh first to install dependencies."
    exit 1
fi

# Check that rom.sh dependencies are built
MISSING_TOOLS=0
for tool in \
    "$ROM_TOOLS/payload_dumper/payload_dumper.py" \
    "$ROM_TOOLS/tools/deimg.sh" \
    "$ROM_TOOLS/tools/devdex.sh"; do
    if [[ ! -f "$tool" ]]; then
        err "Missing: $tool"
        MISSING_TOOLS=1
    fi
done

if [[ $MISSING_TOOLS -eq 1 ]]; then
    err "Some ROM tools are missing. Run ./setup.sh first."
    exit 1
fi

# ── Extract using rom.sh ────────────────────────────────────────────────────
# rom.sh expects: rom.sh <input.zip> <output_dir>
# It handles: unzip → payload_dumper / sdat2img / lpunpack → mount → deodex

log "Extracting MIUI firmware: $(basename "$MIUI_ZIP")"
log "Output directory: $OUTPUT_DIR"
log ""
log "This process may take 10-30 minutes depending on image size."
log "Some steps require sudo for mounting filesystem images."
log ""

mkdir -p "$OUTPUT_DIR"

# Activate venv if available (ensures payload_dumper finds bsdiff4, protobuf, etc.)
if [[ -f "$ARTIFACT_DIR/.venv/bin/activate" ]]; then
    source "$ARTIFACT_DIR/.venv/bin/activate"
fi

# rom.sh uses $MYDIR-relative paths to find its tools
# It expects to be run from its own directory
# sudo env PATH=... preserves the venv's python so payload_dumper finds its deps
cd "$ROM_TOOLS"
sudo env PATH="$PATH" bash "$ROM_TOOLS/rom.sh" "$MIUI_ZIP" "$OUTPUT_DIR"
cd "$ARTIFACT_DIR"

# ── Post-processing ─────────────────────────────────────────────────────────
# rom.sh produces:
#   <output>/rom/          — extracted raw filesystem
#   <output>/rom-deodexed/ — deodexed JARs and APKs
#
# The pipeline expects system/framework/*.jar at the top level.
# Use the rom-deodexed output if available, as it has the DEX code merged
# back into the JARs (required for baksmali).

DUMP_DIR=""
if [[ -d "$OUTPUT_DIR/rom-deodexed" ]]; then
    DUMP_DIR="$OUTPUT_DIR/rom-deodexed"
    log "Using deodexed output: $DUMP_DIR"
elif [[ -d "$OUTPUT_DIR/rom" ]]; then
    DUMP_DIR="$OUTPUT_DIR/rom"
    log "Using raw ROM output (not deodexed): $DUMP_DIR"
    warn "JARs may be odexed — baksmali may find empty DEX files."
    warn "Consider re-running with a full rom_tools setup."
fi

# Handle system/system/ double path (normalize)
if [[ -d "$DUMP_DIR/system/system" ]]; then
    log "Detected system/system/ layout — normalizing..."
    mv "$DUMP_DIR/system" "$DUMP_DIR/system_root"
    mv "$DUMP_DIR/system_root/system" "$DUMP_DIR/system"
    # Move any remaining system_root contents into system
    if [[ -d "$DUMP_DIR/system_root" ]]; then
        for item in "$DUMP_DIR/system_root"/*; do
            if [[ -e "$item" ]]; then
                mv "$item" "$DUMP_DIR/system/" 2>/dev/null || true
            fi
        done
        rmdir "$DUMP_DIR/system_root" 2>/dev/null || true
    fi
fi

# ── Extract device info from build.prop ──────────────────────────────────────
if [[ -n "$DUMP_DIR" ]]; then
    BUILD_PROP=""
    for prop_path in \
        "$DUMP_DIR/system/build.prop" \
        "$DUMP_DIR/vendor/build.prop"; do
        if [[ -f "$prop_path" ]]; then
            BUILD_PROP="$prop_path"
            break
        fi
    done

    if [[ -n "$BUILD_PROP" ]]; then
        FINGERPRINT=$(grep -m1 'ro.build.fingerprint=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
        MODEL=$(grep -m1 'ro.product.model=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
        SDK=$(grep -m1 'ro.build.version.sdk=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
        MIUI_VER=$(grep -m1 'ro.miui.ui.version.name=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")

        log "Device: Xiaomi $MODEL (SDK $SDK, MIUI $MIUI_VER)"
        log "Fingerprint: $FINGERPRINT"

        cat > "$OUTPUT_DIR/device_info.txt" << EOF
brand=Xiaomi
model=$MODEL
sdk_version=$SDK
miui_version=$MIUI_VER
fingerprint=$FINGERPRINT
source_zip=$(basename "$MIUI_ZIP")
extraction_date=$(date -u +%Y-%m-%dT%H:%M:%SZ)
extraction_method=miui_rom_tools
EOF
    fi
fi

# ── Summary ──────────────────────────────────────────────────────────────────
if [[ -n "$DUMP_DIR" ]]; then
    JAR_COUNT=$(find "$DUMP_DIR" -name "*.jar" 2>/dev/null | wc -l)
    TOTAL_SIZE=$(du -sh "$DUMP_DIR" 2>/dev/null | cut -f1)

    log ""
    log "============================================"
    log "  MIUI Extraction Complete"
    log "============================================"
    log "  Dump dir:   $DUMP_DIR"
    log "  Size:       $TOTAL_SIZE"
    log "  JAR files:  $JAR_COUNT"
    log ""
    log "  Next: run the analysis pipeline:"
    log "    ./scripts/pipeline/run_pipeline.sh $DUMP_DIR <work_dir> xiaomi"
else
    err "Extraction produced no output. Check rom.sh logs above."
    exit 1
fi
