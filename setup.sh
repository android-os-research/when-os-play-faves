#!/usr/bin/env bash
# =============================================================================
# setup.sh — Install all dependencies for the OEM Framework Analysis Pipeline
#
# Tested on:
#   - Ubuntu 22.04 / 24.04 LTS
#   - Debian 13
#
# Usage:
#   chmod +x setup.sh
#   ./setup.sh
#
# Optional:
#   ./setup.sh --lite
#       Use Dolphin 3 8B for setup/testing on memory-constrained systems.
#       The model is still registered locally as "dolphin3-r1", so the
#       analysis pipeline does not need a different model name.
#
#   ./setup.sh --with-rom-tools
#       Also install/build tools required for firmware/MIUI extraction.
#
#   ./setup.sh --github-token TOKEN
#
#   DOLPHIN_GGUF=<ollama/hf model reference> ./setup.sh
#       Override the default 24B GGUF/quantization.
#
# Default model:
#   Dolphin 3.0 R1 Mistral 24B
#
# Lite model:
#   Dolphin 3 8B
#
# The bundled AE sample does NOT require ROM extraction tools.
# =============================================================================

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROM_TOOLS_DIR="$SCRIPT_DIR/tools/rom_tools"
TOOLS_DIR="$SCRIPT_DIR/tools"
VENV_DIR="$SCRIPT_DIR/.venv"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log()  { echo -e "${GREEN}[setup]${NC} $*"; }
warn() { echo -e "${YELLOW}[setup]${NC} $*"; }
err()  { echo -e "${RED}[setup]${NC} $*" >&2; }

# =============================================================================
# Options
# =============================================================================

GITHUB_TOKEN=""
WITH_ROM_TOOLS=false
DOLPHIN_LITE=false

while [[ $# -gt 0 ]]; do
    case "$1" in
        --github-token)
            [[ $# -ge 2 ]] || {
                err "--github-token requires a value."
                exit 1
            }
            GITHUB_TOKEN="$2"
            shift 2
            ;;

        --with-rom-tools)
            WITH_ROM_TOOLS=true
            shift
            ;;

        --lite|--dolphin-8b)
            DOLPHIN_LITE=true
            shift
            ;;

        -h|--help)
            cat <<'EOF'
Usage:
  ./setup.sh [options]

Options:
  --lite, --dolphin-8b
      Install/register the smaller Dolphin 3 8B model.

  --with-rom-tools
      Build/install optional firmware extraction tools.

  --github-token TOKEN
      GitHub token for operations that may require authenticated access.

Environment:
  DOLPHIN_GGUF=<model-reference>
      Override the default 24B GGUF/quantization.
EOF
            exit 0
            ;;

        *)
            err "Unknown option: $1"
            exit 1
            ;;
    esac
done

# =============================================================================
# Platform
# =============================================================================

if [[ "$(uname -s)" != "Linux" ]]; then
    err "This setup script requires Linux."
    err "Detected: $(uname -s)"
    exit 1
fi

ARCH="$(uname -m)"
log "Detected architecture: $ARCH"

case "$ARCH" in
    x86_64|amd64)
        log "Architecture supported for the AE configuration."
        ;;
    aarch64|arm64)
        warn "ARM64 detected."
        warn "This is useful for development/testing, but the AE target is x86-64."
        ;;
    *)
        warn "Architecture '$ARCH' has not been tested."
        ;;
esac

if ! command -v apt-get >/dev/null 2>&1; then
    err "apt-get not found. Ubuntu/Debian is currently required."
    exit 1
fi

if ! command -v sudo >/dev/null 2>&1; then
    err "sudo is required for system package installation."
    exit 1
fi

# =============================================================================
# System packages
# =============================================================================

APT_PKGS=(
    openjdk-17-jre-headless
    python3
    python3-pip
    python3-venv
    unzip
    file
    wget
    curl
    jq
    axel
    brotli
    android-tools-adb
    git
)

# Build dependencies are mainly useful for optional ROM tools, but keeping them
# available simplifies --with-rom-tools and avoids a second apt installation.
BUILD_PKGS=(
    build-essential
    autoconf
    automake
    libtool
    pkg-config
    libfuse-dev
    fuse
)

log "Updating apt package metadata..."

if ! sudo apt-get update -qq; then
    err "apt-get update failed."
    err "Check Internet connectivity and apt repository configuration."
    exit 1
fi

log "Installing required system packages..."

if ! sudo apt-get install -y -qq "${APT_PKGS[@]}" "${BUILD_PKGS[@]}"; then
    err "Failed to install required system packages."
    exit 1
fi

# Explicit sanity check after apt installation.
CORE_CMDS=(
    java
    python3
    pip3
    unzip
    file
    wget
    curl
    jq
    brotli
    git
)

for cmd in "${CORE_CMDS[@]}"; do
    if ! command -v "$cmd" >/dev/null 2>&1; then
        err "Required command '$cmd' is unavailable after installation."
        exit 1
    fi
done

# =============================================================================
# Python environment
# =============================================================================

log "Creating Python virtual environment at $VENV_DIR ..."

if [[ ! -d "$VENV_DIR" ]]; then
    python3 -m venv "$VENV_DIR"
fi

# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

log "Installing Python dependencies..."

python -m pip install --quiet --upgrade pip

python -m pip install --quiet \
    anthropic \
    requests \
    google-play-scraper \
    apksearch \
    protobuf \
    bsdiff4 \
    zstandard

# =============================================================================
# baksmali
# =============================================================================

mkdir -p "$TOOLS_DIR"

BAKSMALI_VERSION="2.5.2"
LOCAL_BAKSMALI="$TOOLS_DIR/baksmali-${BAKSMALI_VERSION}.jar"
BUNDLED_BAKSMALI="$ROM_TOOLS_DIR/tools/baksmali-${BAKSMALI_VERSION}.jar"

if [[ -s "$BUNDLED_BAKSMALI" ]]; then
    log "Installing bundled baksmali ${BAKSMALI_VERSION}..."
    cp "$BUNDLED_BAKSMALI" "$LOCAL_BAKSMALI"
fi

if [[ ! -s "$LOCAL_BAKSMALI" ]]; then
    log "Downloading baksmali ${BAKSMALI_VERSION}..."

    if ! wget -q -O "$LOCAL_BAKSMALI" \
        "https://github.com/JesusFreke/smali/releases/download/v${BAKSMALI_VERSION}/baksmali-${BAKSMALI_VERSION}.jar"; then

        err "Could not download baksmali ${BAKSMALI_VERSION}."
        exit 1
    fi
fi

if [[ ! -s "$LOCAL_BAKSMALI" ]]; then
    err "baksmali JAR is missing or empty:"
    err "  $LOCAL_BAKSMALI"
    exit 1
fi

cat > "$TOOLS_DIR/baksmali" <<WRAPPER
#!/usr/bin/env bash
SCRIPT_DIR="\$(cd "\$(dirname "\${BASH_SOURCE[0]}")" && pwd)"
exec java -jar "\$SCRIPT_DIR/baksmali-${BAKSMALI_VERSION}.jar" "\$@"
WRAPPER

chmod +x "$TOOLS_DIR/baksmali"

if ! "$TOOLS_DIR/baksmali" --version >/dev/null 2>&1; then
    err "baksmali installation verification failed."
    exit 1
fi

log "baksmali ${BAKSMALI_VERSION} ready."

# =============================================================================
# Optional ROM extraction tools
# =============================================================================

if [[ "$WITH_ROM_TOOLS" != true ]]; then

    log "Skipping optional ROM extraction tool builds."
    log "The bundled AE sample is already extracted."
    log "Use ./setup.sh --with-rom-tools for firmware/MIUI extraction."

elif [[ ! -d "$ROM_TOOLS_DIR" ]]; then

    warn "ROM tools directory not found:"
    warn "  $ROM_TOOLS_DIR"
    warn "Firmware/MIUI extraction will be unavailable."

else

    log "Setting up optional ROM extraction tools..."

    # -------------------------------------------------------------------------
    # LZ4 + erofs-utils
    # -------------------------------------------------------------------------

    if [[ ! -f "$ROM_TOOLS_DIR/erofs-utils/fuse/erofsfuse" ]]; then
        log "Building erofs-utils..."

        cd "$ROM_TOOLS_DIR"

        if [[ ! -d lz4 ]]; then
            git clone --depth 1 https://github.com/lz4/lz4 -b dev
        fi

        make BUILD_SHARED=no -C lz4 -j"$(nproc)"

        lz4libdir="$(pwd)/lz4/lib"

        if [[ ! -d erofs-utils ]]; then
            git clone --depth 1 \
                git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git \
                -b dev
        fi

        cd erofs-utils

        ./autogen.sh

        ./configure \
            --enable-fuse \
            --with-lz4-incdir="${lz4libdir}" \
            --with-lz4-libdir="${lz4libdir}"

        make -j"$(nproc)"

        cd "$SCRIPT_DIR"
    fi

    # -------------------------------------------------------------------------
    # e2fsprogs
    # -------------------------------------------------------------------------

    if [[ ! -f "$ROM_TOOLS_DIR/e2fsprogs/misc/fuse2fs" ]]; then
        log "Building e2fsprogs..."

        cd "$ROM_TOOLS_DIR"

        if [[ ! -d e2fsprogs ]]; then
            git clone --depth 1 \
                https://git.kernel.org/pub/scm/fs/ext2/e2fsprogs.git
        fi

        cd e2fsprogs
        ./configure
        make -j"$(nproc)"

        cd "$SCRIPT_DIR"
    fi

    # -------------------------------------------------------------------------
    # vdexExtractor
    # -------------------------------------------------------------------------

    if [[ ! -f "$ROM_TOOLS_DIR/vdexExtractor/bin/vdexExtractor" ]]; then
        log "Building vdexExtractor..."

        cd "$ROM_TOOLS_DIR"

        if [[ ! -d vdexExtractor ]]; then
            git clone --depth 1 https://github.com/anestisb/vdexExtractor
        fi

        cd vdexExtractor
        ./make.sh

        cd "$SCRIPT_DIR"
    fi

    # -------------------------------------------------------------------------
    # oatdumpdexloc
    # -------------------------------------------------------------------------

    if [[ ! -f "$ROM_TOOLS_DIR/oatdumpdexloc/oatdumpdexloc" ]]; then
        if [[ -f "$ROM_TOOLS_DIR/oatdumpdexloc/Makefile" ]]; then
            log "Building oatdumpdexloc..."

            if ! make -C "$ROM_TOOLS_DIR/oatdumpdexloc"; then
                warn "oatdumpdexloc build failed; continuing because it is optional."
            fi
        fi
    fi

    # -------------------------------------------------------------------------
    # payload_dumper
    # -------------------------------------------------------------------------

    if [[ -f "$ROM_TOOLS_DIR/payload_dumper/requirements.txt" ]]; then
        log "Installing payload_dumper Python dependencies..."

        python -m pip install --quiet \
            -r "$ROM_TOOLS_DIR/payload_dumper/requirements.txt"
    fi

    # -------------------------------------------------------------------------
    # OTA tools
    # -------------------------------------------------------------------------

    if [[ ! -f "$ROM_TOOLS_DIR/otatools/bin/simg2img" ]]; then
        log "Downloading Android OTA tools..."

        mkdir -p "$ROM_TOOLS_DIR/otatools"

        URL_CI_ANDROID="https://ci.android.com/builds/latest/branches/aosp-master/targets/aosp_arm64-userdebug/view/BUILD_INFO"

        RURL_CI_ANDROID="$(
            curl -Ls \
                -o /dev/null \
                -w '%{url_effective}' \
                "$URL_CI_ANDROID"
        )"

        if wget -nv \
            "${RURL_CI_ANDROID%/view/BUILD_INFO}/raw/otatools.zip" \
            -O /tmp/otatools.zip; then

            unzip -q -o \
                /tmp/otatools.zip \
                -d "$ROM_TOOLS_DIR/otatools"

            rm -f /tmp/otatools.zip
        else
            warn "Could not download Android OTA tools."
            warn "These are optional for the bundled AE reproduction."
        fi
    fi

    # -------------------------------------------------------------------------
    # AIK-Linux
    # -------------------------------------------------------------------------

    if [[ ! -d "$ROM_TOOLS_DIR/AIK-Linux" ]]; then
        log "Downloading AIK-Linux (optional)..."

        if wget -q \
            -O /tmp/AIK-Linux.tar.gz \
            "https://forum.xda-developers.com/attachments/aik-linux-v3-8-all-tar-gz.5300923/"; then

            tar -xzf \
                /tmp/AIK-Linux.tar.gz \
                -C "$ROM_TOOLS_DIR"

            rm -f /tmp/AIK-Linux.tar.gz
        else
            warn "Could not download AIK-Linux."
            warn "This does not affect the bundled AE reproduction."
        fi
    fi
fi

# Return to repository root after any optional builds.
cd "$SCRIPT_DIR"

# =============================================================================
# Ollama
# =============================================================================

OLLAMA_API="http://127.0.0.1:11434"

log "Setting up Ollama..."

if ! command -v ollama >/dev/null 2>&1; then
    log "Installing Ollama..."

    if ! curl -fsSL https://ollama.com/install.sh | sh; then
        err "Ollama installation failed."
        exit 1
    fi
else
    log "Ollama CLI already installed."
fi

ollama_api_ready() {
    curl -fsS "$OLLAMA_API/api/tags" >/dev/null 2>&1
}

# Give an installer-created service a moment to come online.
for _ in $(seq 1 5); do
    ollama_api_ready && break
    sleep 1
done

if ollama_api_ready; then

    log "Ollama server is already running."

elif command -v systemctl >/dev/null 2>&1 \
    && systemctl list-unit-files \
        | grep -q '^ollama\.service'; then

    log "Starting Ollama using systemd..."

    sudo systemctl reset-failed ollama >/dev/null 2>&1 || true

    if ! sudo systemctl start ollama; then
        err "Could not start ollama.service."
        sudo systemctl --no-pager --full status ollama || true
        exit 1
    fi

    for _ in $(seq 1 30); do
        ollama_api_ready && break
        sleep 1
    done

    if ! ollama_api_ready; then
        err "ollama.service started, but the API is not reachable on port 11434."
        sudo systemctl --no-pager --full status ollama || true
        exit 1
    fi

else

    # Useful for containers/minimal installations without systemd.
    log "No systemd Ollama service available."
    log "Starting standalone Ollama server..."

    nohup ollama serve \
        >/tmp/ollama-serve.log \
        2>&1 &

    OLLAMA_PID=$!

    for _ in $(seq 1 30); do

        ollama_api_ready && break

        if ! kill -0 "$OLLAMA_PID" >/dev/null 2>&1; then
            err "Standalone Ollama server exited unexpectedly."

            if [[ -f /tmp/ollama-serve.log ]]; then
                tail -50 /tmp/ollama-serve.log >&2
            fi

            exit 1
        fi

        sleep 1
    done

    if ! ollama_api_ready; then
        err "Ollama API did not become reachable within 30 seconds."

        if [[ -f /tmp/ollama-serve.log ]]; then
            tail -50 /tmp/ollama-serve.log >&2
        fi

        exit 1
    fi
fi

log "Ollama API ready at $OLLAMA_API."

# =============================================================================
# Dolphin model
# =============================================================================

# Both configurations are deliberately registered as:
#
#   dolphin3-r1
#
# This keeps the pipeline command/configuration identical.
#
# Default:
#   Modelfile    -> Dolphin 3.0 R1 Mistral 24B
#
# --lite:
#   Modelfile.8b -> Dolphin 3 8B
#
# The lite mode is intended for setup/debugging or memory-constrained
# machines. AE result reproduction should use the documented/default model
# unless otherwise explicitly stated.

DOLPHIN_GGUF="${DOLPHIN_GGUF:-}"
TEMP_MODELFILE=""

if [[ "$DOLPHIN_LITE" == true ]]; then

    DOLPHIN_MODELFILE="$SCRIPT_DIR/Modelfile.8b"
    DOLPHIN_DESCRIPTION="Dolphin 3 8B (lite)"

    log "Lite mode selected."

else

    DOLPHIN_MODELFILE="$SCRIPT_DIR/Modelfile"
    DOLPHIN_DESCRIPTION="Dolphin 3.0 R1 Mistral 24B"

fi

if [[ ! -f "$DOLPHIN_MODELFILE" ]]; then
    err "Required model definition not found:"
    err "  $DOLPHIN_MODELFILE"
    exit 1
fi

# Allow the quant/model backing the 24B Modelfile to be overridden.
if [[ "$DOLPHIN_LITE" != true ]] && [[ -n "$DOLPHIN_GGUF" ]]; then

    log "Overriding default Dolphin GGUF with:"
    log "  $DOLPHIN_GGUF"

    TEMP_MODELFILE="$(mktemp)"

    sed \
        "s#^FROM .*#FROM ${DOLPHIN_GGUF}#" \
        "$SCRIPT_DIR/Modelfile" \
        > "$TEMP_MODELFILE"

    DOLPHIN_MODELFILE="$TEMP_MODELFILE"
fi

# Re-register explicitly.
#
# This is intentional: during clean-environment testing we observed that an
# installed Ollama CLI/server could exist while the expected model was absent
# from that server's model store. Running `ollama create` here makes the
# evaluator-facing setup deterministic and then verification checks the model
# through the same server the pipeline will use.

log "Registering $DOLPHIN_DESCRIPTION as 'dolphin3-r1'..."

if ! ollama create dolphin3-r1 -f "$DOLPHIN_MODELFILE"; then
    err "Failed to register Dolphin as 'dolphin3-r1'."

    if [[ "$DOLPHIN_LITE" != true ]]; then
        warn ""
        warn "For a memory-constrained setup/debug machine, try:"
        warn "  ./setup.sh --lite"
    fi

    [[ -n "$TEMP_MODELFILE" ]] && rm -f "$TEMP_MODELFILE"
    exit 1
fi

[[ -n "$TEMP_MODELFILE" ]] && rm -f "$TEMP_MODELFILE"

# Make sure the active Ollama server can actually see the model.
if ! ollama list 2>/dev/null \
    | awk 'NR > 1 {print $1}' \
    | grep -q '^dolphin3-r1:'; then

    err "Dolphin registration completed, but the active Ollama server"
    err "does not list 'dolphin3-r1'."
    err ""
    err "Current Ollama models:"
    ollama list >&2 || true

    exit 1
fi

log "Dolphin model is registered and visible to the active Ollama server."

# =============================================================================
# Minimal inference test
# =============================================================================

log "Running a minimal Dolphin inference test..."

INFERENCE_OUTPUT="$(
    timeout 300 \
        ollama run dolphin3-r1 \
        "Reply with exactly the word OK and nothing else." \
        </dev/null \
        2>/tmp/dolphin-inference.err \
        || true
)"

if ! grep -qi '\bOK\b' <<< "$INFERENCE_OUTPUT"; then

    err "Dolphin is registered, but the minimal inference test failed."

    if [[ -s /tmp/dolphin-inference.err ]]; then
        err "Ollama error output:"
        tail -50 /tmp/dolphin-inference.err >&2
    fi

    err ""
    err "Model output:"
    echo "$INFERENCE_OUTPUT" >&2

    exit 1
fi

rm -f /tmp/dolphin-inference.err

log "Dolphin inference succeeded."

# =============================================================================
# Final verification
# =============================================================================

echo ""
echo "=== Artifact Setup Verification ==="
echo ""

PYBIN="$VENV_DIR/bin/python"

if [[ ! -x "$PYBIN" ]]; then
    PYBIN="python3"
fi

FAIL=0

verify() {
    local name="$1"
    local command="$2"

    if eval "$command" >/dev/null 2>&1; then
        echo "[OK] $name"
    else
        echo "[MISSING] $name"
        FAIL=$((FAIL + 1))
    fi
}

verify \
    "Java" \
    "java -version 2>&1 | grep -qE '(1[7-9]|[2-9][0-9])'"

verify \
    "Python" \
    "'$PYBIN' --version"

verify \
    "Python virtual environment" \
    "test -f '$VENV_DIR/bin/activate'"

verify \
    "baksmali" \
    "test -x '$TOOLS_DIR/baksmali' && '$TOOLS_DIR/baksmali' --version"

verify \
    "Ollama CLI" \
    "command -v ollama"

verify \
    "Ollama server" \
    "curl -fsS '$OLLAMA_API/api/tags'"

verify \
    "Dolphin model" \
    "ollama list | awk 'NR > 1 {print \$1}' | grep -q '^dolphin3-r1:'"

verify \
    "unzip" \
    "command -v unzip"

verify \
    "file" \
    "command -v file"

verify \
    "Python dependencies" \
    "'$PYBIN' -c 'import anthropic, requests, google_play_scraper, apksearch, bsdiff4, zstandard, google.protobuf'"

verify \
    "Sample framework" \
    "test -d '$SCRIPT_DIR/examples/sample_device/system/system/framework'"

verify \
    "Reference outputs" \
    "test -f '$SCRIPT_DIR/examples/sample_device/sample_device_results_claude_validated.json'"

echo ""

if [[ $FAIL -ne 0 ]]; then
    err "Setup finished with $FAIL missing component(s)."
    err "Resolve the [MISSING] entries before running the pipeline."
    exit 1
fi

echo "Setup complete."
echo "All components required for the bundled reproduction are ready."

if [[ "$DOLPHIN_LITE" == true ]]; then
    echo ""
    echo "NOTE:"
    echo "  Dolphin lite mode is active."
    echo "  The local model is registered as: dolphin3-r1"
    echo "  This mode is intended for setup/testing on constrained machines."
    echo "  Use the default ./setup.sh configuration for the documented"
    echo "  full-model reproduction."
fi

# =============================================================================
# Next steps
# =============================================================================

echo ""
echo "Next:"
echo ""
echo "  source .venv/bin/activate"
echo ""
echo "  # Minimal working example; no Anthropic API key required:"
echo "  ./scripts/pipeline/run_pipeline.sh \\"
echo "      examples/sample_device/ \\"
echo "      /tmp/work/ \\"
echo "      samsung \\"
echo "      --skip-filter \\"
echo "      --skip-phase2"
echo ""
echo "  # Optional Phase 2 / 2b cloud validation:"
echo "  export ANTHROPIC_API_KEY=\"YOUR_KEY_HERE\""
echo ""
echo "Ollama is already running and verified by setup.sh."
echo ""
echo "Firmware/MIUI extraction is optional."
echo "Install/build those components with:"
echo ""
echo "  ./setup.sh --with-rom-tools"
echo ""