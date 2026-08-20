#!/usr/bin/env bash
# =============================================================================
# docker-setup.sh — build the pipeline image, start Ollama, register the model.
#
#   ./docker/docker-setup.sh          # default 24B model (Modelfile,  ~13 GB pull, needs ~18 GB RAM)
#   ./docker/docker-setup.sh --lite   # 8B model         (Modelfile.8b, ~5 GB pull, fits 16 GB RAM)
#
# Both register the model locally as "dolphin3-r1", so the pipeline command is
# identical either way. Run this once, then ./docker/docker-run-sample.sh.
# =============================================================================
set -euo pipefail
cd "$(dirname "$0")"

MODELFILE="/models/Modelfile"
LABEL="Dolphin 3.0 R1 24B"
if [[ "${1:-}" == "--lite" ]]; then
    MODELFILE="/models/Modelfile.8b"
    LABEL="Dolphin 3 8B (lite)"
fi

if ! docker compose version >/dev/null 2>&1; then
    echo "[docker-setup] ERROR: 'docker compose' not found."
    echo "  Install with: sudo apt-get install -y docker.io docker-compose-v2"
    exit 1
fi

echo "[docker-setup] Building the pipeline image and starting Ollama..."
docker compose up -d --build

echo "[docker-setup] Waiting for the Ollama API..."
for _ in $(seq 1 60); do
    docker compose exec -T ollama ollama list >/dev/null 2>&1 && break
    sleep 2
done
docker compose exec -T ollama ollama list >/dev/null 2>&1 \
    || { echo "[docker-setup] ERROR: Ollama API did not come up. See: docker compose logs ollama"; exit 1; }

echo "[docker-setup] Registering $LABEL as 'dolphin3-r1' (pulls the GGUF on first run — this can take a while)..."
docker compose exec -T ollama ollama create dolphin3-r1 -f "$MODELFILE"

echo "[docker-setup] Running a minimal inference test..."
if docker compose exec -T ollama ollama run dolphin3-r1 "Reply with exactly the word OK." 2>/dev/null | grep -qi "OK"; then
    echo "[docker-setup] Inference OK."
else
    echo "[docker-setup] ERROR: inference test failed."
    echo "  The 24B model may not fit in this machine's RAM — retry with:  ./docker/docker-setup.sh --lite"
    exit 1
fi

echo ""
echo "[docker-setup] Setup complete. Next:"
echo "  ./docker/docker-run-sample.sh"
