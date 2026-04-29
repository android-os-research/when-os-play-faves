#!/usr/bin/env bash
# ============================================================================
# step1_find_jars.sh — Find all .jar files in a device dump
#
# Usage: ./step1_find_jars.sh <device_dump_dir> <output_file>
#
# Example:
#   ./step1_find_jars.sh /data/dumps/oneplus/ /data/work/oneplus/jars.txt
# ============================================================================
set -euo pipefail

DUMP_DIR="$1"
OUT_FILE="$2"

mkdir -p "$(dirname "$OUT_FILE")"

echo "[Step 1] Scanning for .jar files in: $DUMP_DIR"

find "$DUMP_DIR" -type f -name "*.jar" | sort > "$OUT_FILE"

TOTAL=$(wc -l < "$OUT_FILE")
echo "[Step 1] Found $TOTAL JAR files. List written to: $OUT_FILE"
echo ""

# Show breakdown by directory
echo "Breakdown by location:"
while IFS= read -r jar; do
    dirname "$jar"
done < "$OUT_FILE" | sort | uniq -c | sort -rn | head -20

echo ""
echo "Framework-relevant JARs (likely candidates):"
grep -iE '(services|framework|telephony|permission|package|pm\.|oplus|miui|vivo|samsung|huawei|nubia|coloros|oppo|oneplus)' "$OUT_FILE" || echo "(none matched filter)"
