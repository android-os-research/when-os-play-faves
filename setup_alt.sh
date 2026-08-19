#!/usr/bin/env bash
# =============================================================================
# setup_alt.sh — Lite setup for low-RAM hosts (e.g. a 16 GB VM)
#
# Identical to setup.sh, but registers the Phase 1 triage model 'dolphin3-r1'
# from the smaller Dolphin 3.0 8B model (Modelfile.8b, FROM dolphin3, ~5 GB)
# instead of the faithful 24B R1 model (~13 GB, needs ~18 GB RAM to run).
#
# This is a thin wrapper so it never drifts from setup.sh. It is exactly:
#     ./setup.sh --lite
#
# Usage:
#   chmod +x setup_alt.sh
#   ./setup_alt.sh                 # lite install + verification
#   ./setup_alt.sh --with-rom-tools  # extra flags pass through to setup.sh
#
# Note: Phase 1 is non-deterministic triage, so the 8B model is fine for the
# scaled-down E1 demonstration. Use ./setup.sh (no --lite) for the paper's
# exact 24B model.
# =============================================================================
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
exec "$SCRIPT_DIR/setup.sh" --lite "$@"
