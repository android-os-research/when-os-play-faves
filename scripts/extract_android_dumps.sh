#!/usr/bin/env bash
# =============================================================================
# extract_android_dumps.sh — Extract an Android Dumps tar.gz archive
#
# Android Dumps (https://dumps.tadiphone.dev/) distributes device firmware as
# tar.gz archives containing the full filesystem. This script extracts the
# relevant partitions (system, system_ext, vendor, product) that the analysis
# pipeline needs.
#
# Usage:
#   ./extract_android_dumps.sh <archive.tar.gz> <output_dir> [--framework-only]
#
# Options:
#   --framework-only   Only extract framework/ directories (much faster, ~50-200MB)
#
# Examples:
#   ./extract_android_dumps.sh /data/asus_ai2202.tar.gz /data/dumps/asus/
#   ./extract_android_dumps.sh /data/asus_ai2202.tar.gz /data/dumps/asus/ --framework-only
# =============================================================================
set -euo pipefail

GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log()  { echo -e "${GREEN}[android-dumps]${NC} $*"; }
warn() { echo -e "${YELLOW}[android-dumps]${NC} $*"; }
err()  { echo -e "${RED}[android-dumps]${NC} $*" >&2; }

# ── Argument parsing ─────────────────────────────────────────────────────────
if [[ $# -lt 2 ]]; then
    echo "Usage: $0 <archive.tar.gz> <output_dir> [--framework-only]"
    exit 1
fi

ARCHIVE="$1"
OUTPUT_DIR="$2"
FRAMEWORK_ONLY=0

if [[ "${3:-}" == "--framework-only" ]]; then
    FRAMEWORK_ONLY=1
fi

if [[ ! -f "$ARCHIVE" ]]; then
    err "Archive not found: $ARCHIVE"
    exit 1
fi

mkdir -p "$OUTPUT_DIR"

# ── Detect archive structure ─────────────────────────────────────────────────
# Android Dumps archives typically have a top-level directory named after the
# device codename (e.g., asus_ai2202/system/...). We need to detect this and
# strip it during extraction so the output has system/ at the top level.

log "Detecting archive structure..."
TOP_DIR=$(tar tzf "$ARCHIVE" 2>/dev/null | head -1 | cut -d'/' -f1)
log "  Top-level directory: $TOP_DIR"

# ── Extract ──────────────────────────────────────────────────────────────────
if [[ $FRAMEWORK_ONLY -eq 1 ]]; then
    log "Extracting framework directories only (fast mode)..."

    # Android Dumps can have system/system/framework/ (double system) or system/framework/
    # Extract both patterns
    tar xzf "$ARCHIVE" -C "$OUTPUT_DIR" --strip-components=1 \
        --wildcards \
        "*system/framework/*.jar" \
        "*system/framework/*.vdex" \
        "*system/framework/*.oat" \
        "*system_ext/framework/*.jar" \
        "*system_ext/framework/*.vdex" \
        "*system_ext/framework/*.oat" \
        "*vendor/framework/*.jar" \
        "*product/framework/*.jar" \
        "*build*.prop" \
        2>/dev/null || true
else
    log "Extracting full archive (this may take a while for large dumps)..."

    # Extract relevant partitions, stripping the top-level directory
    tar xzf "$ARCHIVE" -C "$OUTPUT_DIR" --strip-components=1 \
        --wildcards \
        "$TOP_DIR/system/*" \
        "$TOP_DIR/system_ext/*" \
        "$TOP_DIR/vendor/*" \
        "$TOP_DIR/product/*" \
        2>/dev/null || {
            # Fallback: try without wildcards (extract everything, strip top dir)
            warn "Selective extraction failed, extracting all contents..."
            tar xzf "$ARCHIVE" -C "$OUTPUT_DIR" --strip-components=1
        }
fi

# ── Handle double system/ path ───────────────────────────────────────────────
# Android Dumps often has system/system/framework/ instead of system/framework/
if [[ -d "$OUTPUT_DIR/system/system" ]]; then
    log "Detected system/system/ layout — normalizing..."
    mv "$OUTPUT_DIR/system" "$OUTPUT_DIR/system_root"
    mv "$OUTPUT_DIR/system_root/system" "$OUTPUT_DIR/system"
    for item in "$OUTPUT_DIR/system_root"/*; do
        [[ -e "$item" ]] && mv "$item" "$OUTPUT_DIR/system/" 2>/dev/null || true
    done
    rmdir "$OUTPUT_DIR/system_root" 2>/dev/null || true
fi

# ── Extract device info from build.prop ──────────────────────────────────────
BUILD_PROP=""
for prop_path in \
    "$OUTPUT_DIR/system/build.prop" \
    "$OUTPUT_DIR/system/system/build.prop" \
    "$OUTPUT_DIR/vendor/build.prop"; do
    if [[ -f "$prop_path" ]]; then
        BUILD_PROP="$prop_path"
        break
    fi
done

if [[ -n "$BUILD_PROP" ]]; then
    FINGERPRINT=$(grep -m1 'ro.build.fingerprint=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
    MODEL=$(grep -m1 'ro.product.model=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
    BRAND=$(grep -m1 'ro.product.brand=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")
    SDK=$(grep -m1 'ro.build.version.sdk=' "$BUILD_PROP" 2>/dev/null | cut -d= -f2 || echo "unknown")

    log "Device: $BRAND $MODEL (SDK $SDK)"
    log "Fingerprint: $FINGERPRINT"

    cat > "$OUTPUT_DIR/device_info.txt" << EOF
brand=$BRAND
model=$MODEL
sdk_version=$SDK
fingerprint=$FINGERPRINT
source_archive=$(basename "$ARCHIVE")
extraction_date=$(date -u +%Y-%m-%dT%H:%M:%SZ)
extraction_method=android_dumps_tar
EOF
fi

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
VENDOR_GUESS="${BRAND:-$(basename "$ARCHIVE" .tar.gz)}"
log "    ./scripts/pipeline/run_pipeline.sh $OUTPUT_DIR <work_dir> $VENDOR_GUESS"
