#!/usr/bin/env bash
# =============================================================================
# docker-run-sample.sh — run the bundled-sample analysis inside the containers.
#
# Runs Steps 1-6 + Phase 1 local triage (--skip-filter uses the bundled
# APK-store cache; --skip-phase2 skips cloud validation, so no API key needed).
# Results are written to ./docker-work/samsung/ on the host.
#
# Run ./docker/docker-setup.sh [--lite] first.
# =============================================================================
set -euo pipefail
cd "$(dirname "$0")"

if ! docker compose ps --status running pipeline 2>/dev/null | grep -q pipeline; then
    echo "[docker-run] The pipeline container is not running."
    echo "  Run ./docker/docker-setup.sh [--lite] first."
    exit 1
fi

mkdir -p ../docker-work

echo "[docker-run] Running the bundled sample (Steps 1-6 + Phase 1)..."
docker compose exec -T pipeline \
    bash scripts/pipeline/run_pipeline.sh \
        examples/sample_device/ /artifact/work/ samsung \
        --skip-filter --skip-phase2

echo ""
echo "[docker-run] Done. Host outputs under ./docker-work/samsung/ :"
ls -la ../docker-work/samsung/ 2>/dev/null || true
echo ""
echo "Inspect the Tier-1 triage with:"
echo "  python3 -m json.tool docker-work/samsung/triage.json | head -40"
