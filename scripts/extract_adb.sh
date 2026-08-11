#!/usr/bin/env bash
# =============================================================================
# extract_adb.sh — Pull framework files from a live Android device via ADB
#
# Extracts the system framework JARs and related files needed by the pipeline.
# The device must be connected via USB with ADB debugging enabled.
#
# Usage:
#   ./extract_adb.sh [adb-serial] <output_dir>
#
# Examples:
#   ./extract_adb.sh /data/dumps/my_device/
#   ./extract_adb.sh SERIAL123 /data/dumps/my_device/
#
# Output:
#   <output_dir>/system/framework/          — framework JARs
#   <output_dir>/system_ext/framework/      — extended framework JARs (if present)
#   <output_dir>/vendor/                    — vendor partition files
#   <output_dir>/product/                   — product partition files (if present)
#   <output_dir>/device_info.txt            — device fingerprint and metadata
# =============================================================================
set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log()  { echo -e "${GREEN}[adb-extract]${NC} $*"; }
warn() { echo -e "${YELLOW}[adb-extract]${NC} $*"; }
err()  { echo -e "${RED}[adb-extract]${NC} $*" >&2; }

# ── Argument parsing ─────────────────────────────────────────────────────────
ADB_SERIAL=""
OUTPUT_DIR=""

if [[ $# -eq 1 ]]; then
    OUTPUT_DIR="$1"
elif [[ $# -eq 2 ]]; then
    ADB_SERIAL="$1"
    OUTPUT_DIR="$2"
else
    echo "Usage: $0 [adb-serial] <output_dir>"
    exit 1
fi

ADB_CMD="adb"
if [[ -n "$ADB_SERIAL" ]]; then
    ADB_CMD="adb -s $ADB_SERIAL"
fi

# ── Check ADB connectivity ──────────────────────────────────────────────────
log "Checking ADB connection..."
if ! $ADB_CMD get-state &>/dev/null; then
    err "No device found. Make sure:"
    err "  1. USB debugging is enabled on the device"
    err "  2. The device is connected via USB"
    err "  3. You have authorized the computer on the device"
    if [[ -n "$ADB_SERIAL" ]]; then
        err "  4. Serial '$ADB_SERIAL' matches the device (check: adb devices)"
    fi
    exit 1
fi

# ── Collect device info ──────────────────────────────────────────────────────
mkdir -p "$OUTPUT_DIR"

FINGERPRINT=$($ADB_CMD shell getprop ro.build.fingerprint 2>/dev/null || echo "unknown")
MODEL=$($ADB_CMD shell getprop ro.product.model 2>/dev/null || echo "unknown")
BRAND=$($ADB_CMD shell getprop ro.product.brand 2>/dev/null || echo "unknown")
SDK=$($ADB_CMD shell getprop ro.build.version.sdk 2>/dev/null || echo "unknown")
ANDROID_VER=$($ADB_CMD shell getprop ro.build.version.release 2>/dev/null || echo "unknown")

log "Device: $BRAND $MODEL"
log "Android: $ANDROID_VER (SDK $SDK)"
log "Fingerprint: $FINGERPRINT"

cat > "$OUTPUT_DIR/device_info.txt" << EOF
brand=$BRAND
model=$MODEL
android_version=$ANDROID_VER
sdk_version=$SDK
fingerprint=$FINGERPRINT
extraction_date=$(date -u +%Y-%m-%dT%H:%M:%SZ)
extraction_method=adb_pull
EOF

# ── Pull partitions ──────────────────────────────────────────────────────────
PARTITIONS=(
    "/system"
    "/system_ext"
    "/vendor"
    "/product"
)

for partition in "${PARTITIONS[@]}"; do
    part_name=$(basename "$partition")

    # Check if partition exists on device
    if $ADB_CMD shell "ls $partition/" &>/dev/null; then
        log "Pulling $partition/ ..."
        mkdir -p "$OUTPUT_DIR/$part_name"
        $ADB_CMD pull "$partition/" "$OUTPUT_DIR/$part_name/" 2>&1 | tail -1

        # adb pull can create a nested path (e.g. system/system/) — normalize
        if [[ -d "$OUTPUT_DIR/$part_name/$part_name" ]]; then
            log "  Normalizing $part_name/$part_name/ layout..."
            mv "$OUTPUT_DIR/$part_name" "$OUTPUT_DIR/${part_name}_raw"
            mv "$OUTPUT_DIR/${part_name}_raw/$part_name" "$OUTPUT_DIR/$part_name"
            for item in "$OUTPUT_DIR/${part_name}_raw"/*; do
                [[ -e "$item" ]] && mv "$item" "$OUTPUT_DIR/$part_name/" 2>/dev/null || true
            done
            rmdir "$OUTPUT_DIR/${part_name}_raw" 2>/dev/null || true
        fi

        log "  Done: $partition"
    else
        warn "Partition $partition not found on device (skipping)"
    fi
done

# ── Summary ──────────────────────────────────────────────────────────────────
JAR_COUNT=$(find "$OUTPUT_DIR" -name "*.jar" 2>/dev/null | wc -l)
TOTAL_SIZE=$(du -sh "$OUTPUT_DIR" 2>/dev/null | cut -f1)

log ""
log "============================================"
log "  Extraction Complete"
log "============================================"
log "  Output:     $OUTPUT_DIR"
log "  Size:       $TOTAL_SIZE"
log "  JAR files:  $JAR_COUNT"
log ""
log "  Next: run the analysis pipeline:"
log "    ./scripts/pipeline/run_pipeline.sh $OUTPUT_DIR <work_dir> $BRAND"
