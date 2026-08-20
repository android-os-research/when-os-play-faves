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

REQUIRED_GB=25
[[ "${1:-}" == "--lite" ]] && REQUIRED_GB=15
DOCKER_ROOT="$(docker info --format '{{.DockerRootDir}}' 2>/dev/null || echo /var/lib/docker)"
AVAIL_GB=""
STORE_DIR="$DOCKER_ROOT"
for d in "$DOCKER_ROOT" /var/lib/containerd; do
    [[ -d "$d" ]] || continue
    a="$(df -Pk "$d" 2>/dev/null | awk 'NR==2{print int($4/1048576)}')"
    [[ -n "$a" ]] || continue
    if [[ -z "$AVAIL_GB" || "$a" -lt "$AVAIL_GB" ]]; then AVAIL_GB="$a"; STORE_DIR="$d"; fi
done
if [[ -n "$AVAIL_GB" && "$AVAIL_GB" -lt "$REQUIRED_GB" && "${SKIP_SPACE_CHECK:-}" != "1" ]]; then
    echo "[docker-setup] ERROR: only ${AVAIL_GB} GB free on the Docker image store ($STORE_DIR); need ~${REQUIRED_GB} GB."
    echo "  Images and the Ollama model land here, so a small/full partition fails mid-pull."
    echo "  If $STORE_DIR is /var/lib/containerd, it is containerd's store (separate from Docker's data-root)."
    echo "  Fix one of:"
    echo "    - Give that filesystem room, or move the store to a bigger partition:"
    echo "        sudo systemctl stop docker docker.socket containerd"
    echo "        sudo mv $STORE_DIR /BIG/DISK/\$(basename $STORE_DIR)"
    echo "        sudo ln -s /BIG/DISK/\$(basename $STORE_DIR) $STORE_DIR"
    echo "        sudo systemctl start containerd docker"
    [[ "${1:-}" != "--lite" ]] && echo "    - Use the smaller 8B model:  ./docker-setup.sh --lite  (needs ~15 GB)"
    echo "    - Images already built? Bypass this check:  SKIP_SPACE_CHECK=1 ./docker-setup.sh ${1:-}"
    exit 1
fi

echo "[docker-setup] Building the pipeline image and starting Ollama..."
mkdir -p ../docker-work   # ensure the bind-mount source exists before the container is created (macOS)
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
INFER_OUT="$(docker compose exec -T pipeline \
    curl -sS --max-time 180 http://localhost:11434/api/generate \
    -d '{"model":"dolphin3-r1","prompt":"Reply with exactly the word OK.","stream":false}' 2>/dev/null || true)"
if echo "$INFER_OUT" | grep -q '"done":true'; then
    echo "[docker-setup] Inference OK."
else
    echo "[docker-setup] ERROR: inference test failed (model did not respond)."
    echo "  If using the default 24B model it may not fit in RAM — retry with:  ./docker-setup.sh --lite"
    exit 1
fi

echo ""
echo "[docker-setup] Setup complete. Next:"
echo "  ./docker/docker-run-sample.sh"
