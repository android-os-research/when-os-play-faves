#!/usr/bin/env bash
# ============================================================================
# step2_decompile_jars.sh — Decompile JAR/DEX files to smali
#
# Usage: ./step2_decompile_jars.sh <jars_list.txt> <smali_output_dir>
#
# Expects baksmali to be on PATH (or set BAKSMALI env var).
# Handles JARs containing classes.dex, multi-dex, and raw .dex files.
#
# Example:
#   ./step2_decompile_jars.sh /data/work/oneplus/jars.txt /data/work/oneplus/smali/
# ============================================================================
set -euo pipefail

JARS_LIST="$1"
SMALI_DIR="$2"

BAKSMALI="${BAKSMALI:-baksmali}"
TMPDIR_BASE="/tmp/oem_decompile_$$"

# Verify baksmali is available before starting
if ! command -v "$BAKSMALI" &>/dev/null; then
    echo "[Step 2] ERROR: baksmali not found on PATH."
    echo "  Run setup.sh first, or set BAKSMALI=/path/to/baksmali"
    exit 1
fi

mkdir -p "$SMALI_DIR" "$TMPDIR_BASE"

TOTAL=$(wc -l < "$JARS_LIST")
echo "[Step 2] Decompiling $TOTAL JAR files to smali..."
echo "  Output: $SMALI_DIR"
echo ""

SUCCESS=0
FAILED=0
SKIPPED=0

while IFS= read -r jar_path; do
    jar_name=$(basename "$jar_path" .jar)
    out_dir="${SMALI_DIR}/${jar_name}"

    # Skip if already decompiled
    if [[ -d "$out_dir" && -n "$(ls -A "$out_dir" 2>/dev/null)" ]]; then
        SKIPPED=$((SKIPPED + 1))
        continue
    fi

    mkdir -p "$out_dir"
    tmp_extract="${TMPDIR_BASE}/${jar_name}"
    mkdir -p "$tmp_extract"

    echo -n "  Decompiling: $jar_name ... "

    # Extract DEX files from the JAR
    # A JAR is just a ZIP; extract any .dex files inside
    if unzip -q -o "$jar_path" "*.dex" -d "$tmp_extract" 2>/dev/null; then
        dex_files=$(find "$tmp_extract" -name "*.dex" -type f 2>/dev/null)

        if [[ -z "$dex_files" ]]; then
            # No .dex inside — try treating the JAR itself as a DEX
            if file "$jar_path" | grep -q "Dalvik dex"; then
                dex_files="$jar_path"
            else
                echo "SKIP (no DEX content)"
                SKIPPED=$((SKIPPED + 1))
                continue
            fi
        fi

        # Decompile each DEX
        dex_idx=0
        all_ok=true
        for dex in $dex_files; do
            dex_basename=$(basename "$dex" .dex)
            sub_out="${out_dir}"

            # For multi-dex, use subdirectories
            if [[ $dex_idx -gt 0 ]]; then
                sub_out="${out_dir}/classes${dex_idx}"
                mkdir -p "$sub_out"
            fi

            if $BAKSMALI d "$dex" -o "$sub_out" 2>/dev/null; then
                dex_idx=$((dex_idx + 1))
            else
                all_ok=false
            fi
        done

        if $all_ok; then
            class_count=$(find "$out_dir" -name "*.smali" | wc -l)
            echo "OK ($class_count classes)"
            SUCCESS=$((SUCCESS + 1))
        else
            echo "PARTIAL"
            SUCCESS=$((SUCCESS + 1))
        fi
    else
        # unzip failed — try as raw DEX
        if file "$jar_path" | grep -q "Dalvik dex"; then
            if $BAKSMALI d "$jar_path" -o "$out_dir" 2>/dev/null; then
                class_count=$(find "$out_dir" -name "*.smali" | wc -l)
                echo "OK (raw DEX, $class_count classes)"
                SUCCESS=$((SUCCESS + 1))
            else
                echo "FAILED"
                FAILED=$((FAILED + 1))
            fi
        else
            echo "SKIP (not a JAR/DEX)"
            SKIPPED=$((SKIPPED + 1))
        fi
    fi
done < "$JARS_LIST"

rm -rf "$TMPDIR_BASE"

echo ""
echo "[Step 2] Done."
echo "  Success: $SUCCESS | Failed: $FAILED | Skipped: $SKIPPED"
echo "  Smali output: $SMALI_DIR"

# Write manifest of decompiled JARs
MANIFEST="${SMALI_DIR}/MANIFEST.txt"
echo "# Decompiled JARs manifest" > "$MANIFEST"
echo "# Generated: $(date -u)" >> "$MANIFEST"
for d in "$SMALI_DIR"/*/; do
    jar_name=$(basename "$d")
    class_count=$(find "$d" -name "*.smali" 2>/dev/null | wc -l)
    echo "$jar_name: $class_count classes" >> "$MANIFEST"
done
echo "  Manifest: $MANIFEST"
