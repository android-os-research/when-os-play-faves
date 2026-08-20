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
AVAIL_GB="$(df -P -BG "$DOCKER_ROOT" 2>/dev/null | awk 'NR==2{gsub(/G/,"",$4); print $4+0}')"
if [[ -n "$AVAIL_GB" && "$AVAIL_GB" -lt "$REQUIRED_GB" && "${SKIP_SPACE_CHECK:-}" != "1" ]]; then
    echo "[docker-setup] ERROR: only ${AVAIL_GB} GB free on Docker's data dir ($DOCKER_ROOT); need ~${REQUIRED_GB} GB."
    echo "  Docker keeps its images and the Ollama model here, so a small/full partition fails mid-pull."
    echo "  Fix one of:"
    echo "    - Free space, or move Docker to a partition with room:"
    echo "        sudo systemctl stop docker docker.socket"
    echo "        echo '{ \"data-root\": \"/PATH/WITH/SPACE/docker\" }' | sudo tee /etc/docker/daemon.json"
    echo "        sudo systemctl restart docker"
    [[ "${1:-}" != "--lite" ]] && echo "    - Use the smaller 8B model:  ./docker-setup.sh --lite  (needs ~15 GB)"
    echo "    - Images already built? Bypass this check:  SKIP_SPACE_CHECK=1 ./docker-setup.sh ${1:-}"
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
