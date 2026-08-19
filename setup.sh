#!/usr/bin/env bash
# =============================================================================
# setup.sh — Install all dependencies for the OEM Framework Analysis Pipeline
#
# Tested on: Ubuntu 22.04/24.04 LTS, Debian 13 (x86-64)
#
# Usage:
#   chmod +x setup.sh
#   ./setup.sh [--github-token TOKEN]
#
# This script installs:
#   - baksmali 2.5.2 (DEX → smali decompiler)
#   - Python 3 dependencies (anthropic, requests, google-play-scraper, apksearch)
#   - Ollama + Dolphin 3.0 R1 (dphn/Dolphin3.0-R1-Mistral-24B) for Phase 1 triage
#   - ROM extraction tools (payload_dumper, sdat2img, erofs-utils, e2fsprogs)
#   - Android platform tools (adb, for live device mode)
# =============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROM_TOOLS_DIR="$SCRIPT_DIR/tools/rom_tools"

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

log()  { echo -e "${GREEN}[setup]${NC} $*"; }
warn() { echo -e "${YELLOW}[setup]${NC} $*"; }
err()  { echo -e "${RED}[setup]${NC} $*" >&2; }

GITHUB_TOKEN=""
WITH_ROM_TOOLS=false
DOLPHIN_LITE=false
while [[ $# -gt 0 ]]; do
    case "$1" in
        --github-token)      GITHUB_TOKEN="$2"; shift 2 ;;
        --with-rom-tools)    WITH_ROM_TOOLS=true; shift ;;
        --lite|--dolphin-8b) DOLPHIN_LITE=true; shift ;;
        *) err "Unknown option: $1"; exit 1 ;;
    esac
done

# ── Check OS ─────────────────────────────────────────────────────────────────
if [[ "$(uname -s)" != "Linux" ]]; then
    err "This setup script is designed for Linux (Ubuntu 22.04/24.04)."
    err "Detected: $(uname -s). Aborting."
    exit 1
fi

# ── System packages ──────────────────────────────────────────────────────────
# Core tools needed for the bundled E1 reproduction (Steps 1-6 + LLM phases).
# fuse/build tools below are only required with --with-rom-tools (firmware
# extraction), so they are not part of this core check.
CORE_CMDS=(java python3 pip3 unzip file wget curl jq brotli git)
MISSING_CMDS=()
for c in "${CORE_CMDS[@]}"; do command -v "$c" &>/dev/null || MISSING_CMDS+=("$c"); done

APT_PKGS="openjdk-17-jre-headless python3 python3-pip python3-venv \
unzip file wget curl jq axel brotli libfuse-dev fuse android-tools-adb \
git build-essential autoconf automake libtool pkg-config"

if [[ ${#MISSING_CMDS[@]} -eq 0 ]]; then
    log "Core system tools already present — skipping apt-get."
elif command -v sudo &>/dev/null && { sudo -n true 2>/dev/null || [[ -t 0 ]]; }; then
    # Passwordless sudo, or an interactive terminal where the user can type a
    # password. (The [[ -t 0 ]] guard avoids hanging on a password prompt when
    # this script is run non-interactively, e.g. piped or over a headless SSH.)
    log "Installing system packages (missing: ${MISSING_CMDS[*]})..."
    sudo apt-get update -qq || warn "apt-get update failed (continuing)."
    sudo apt-get install -y -qq $APT_PKGS 2>/dev/null \
        || warn "apt-get install reported errors (continuing)."
else
    warn "Missing tools (${MISSING_CMDS[*]}) and sudo is unavailable (or this is a"
    warn "non-interactive run). Install them manually, then re-run this script:"
    warn "  sudo apt-get install -y $APT_PKGS"
fi

# ── Python dependencies ─────────────────────────────────────────────────────
VENV_DIR="$SCRIPT_DIR/.venv"
log "Creating Python virtual environment at $VENV_DIR ..."
python3 -m venv "$VENV_DIR"
source "$VENV_DIR/bin/activate"

log "Installing Python dependencies into venv..."
pip install --quiet --upgrade pip
pip install --quiet \
    anthropic requests google-play-scraper apksearch \
    protobuf bsdiff4 zstandard

# ── baksmali ─────────────────────────────────────────────────────────────────
BAKSMALI_JAR=""
mkdir -p "$SCRIPT_DIR/tools"

# Prefer bundled 2.5.2 from rom_tools
if [[ -f "$ROM_TOOLS_DIR/tools/baksmali-2.5.2.jar" ]]; then
    BAKSMALI_JAR="$SCRIPT_DIR/tools/baksmali-2.5.2.jar"
    cp "$ROM_TOOLS_DIR/tools/baksmali-2.5.2.jar" "$BAKSMALI_JAR" 2>/dev/null || true
fi

# Fallback: try downloading from GitHub
if [[ ! -f "$BAKSMALI_JAR" ]] || [[ ! -s "$BAKSMALI_JAR" ]]; then
    log "Downloading baksmali 2.5.2..."
    wget -q -O "$SCRIPT_DIR/tools/baksmali-2.5.2.jar" \
        "https://github.com/JesusFreke/smali/releases/download/v2.5.2/baksmali-2.5.2.jar" 2>/dev/null
    if [[ -s "$SCRIPT_DIR/tools/baksmali-2.5.2.jar" ]]; then
        BAKSMALI_JAR="$SCRIPT_DIR/tools/baksmali-2.5.2.jar"
    fi
fi

if [[ -n "$BAKSMALI_JAR" ]] && [[ -s "$BAKSMALI_JAR" ]]; then
    # Create wrapper script
    BAKSMALI_BASENAME="$(basename "$BAKSMALI_JAR")"
    cat > "$SCRIPT_DIR/tools/baksmali" << WRAPPER
#!/usr/bin/env bash
SCRIPT_DIR="\$(cd "\$(dirname "\${BASH_SOURCE[0]}")" && pwd)"
java -jar "\$SCRIPT_DIR/$BAKSMALI_BASENAME" "\$@"
WRAPPER
    chmod +x "$SCRIPT_DIR/tools/baksmali"
    log "baksmali installed: $BAKSMALI_BASENAME"
else
    warn "Could not install baksmali. Please download manually from:"
    warn "  https://github.com/JesusFreke/smali/releases"
    warn "  Place the JAR in tools/ and create a wrapper script."
fi

# ── ROM extraction tools (build from source) ─────────────────────────────────
# Only needed for firmware/MIUI extraction (Mode C). The bundled E1 sample is
# already extracted, so these heavy source builds are OFF by default. Enable
# with --with-rom-tools.
if [[ "$WITH_ROM_TOOLS" != true ]]; then
    log "Skipping ROM-tool source builds (not needed for the bundled E1 sample)."
    log "  Re-run with --with-rom-tools for MIUI/firmware extraction (Mode C)."
elif [[ -d "$ROM_TOOLS_DIR" ]]; then
    log "Building ROM extraction tools (--with-rom-tools)..."

    # Build erofs-utils (for EROFS filesystem images)
    if [[ ! -f "$ROM_TOOLS_DIR/erofs-utils/fuse/erofsfuse" ]]; then
        log "  Building erofs-utils..."
        cd "$ROM_TOOLS_DIR"
        if [[ ! -d lz4 ]]; then
            git clone --depth 1 https://github.com/lz4/lz4 -b dev 2>/dev/null
        fi
        make BUILD_SHARED=no -C lz4 -j"$(nproc)" 2>/dev/null
        lz4libdir="$(pwd)/lz4/lib"

        if [[ ! -d erofs-utils ]]; then
            git clone --depth 1 git://git.kernel.org/pub/scm/linux/kernel/git/xiang/erofs-utils.git -b dev 2>/dev/null
        fi
        cd erofs-utils
        ./autogen.sh 2>/dev/null
        ./configure --enable-fuse --with-lz4-incdir="${lz4libdir}" --with-lz4-libdir="${lz4libdir}" 2>/dev/null
        make -j"$(nproc)" 2>/dev/null
        cd "$SCRIPT_DIR"
    fi

    # Build e2fsprogs (for ext4 filesystem images)
    if [[ ! -f "$ROM_TOOLS_DIR/e2fsprogs/misc/fuse2fs" ]]; then
        log "  Building e2fsprogs..."
        cd "$ROM_TOOLS_DIR"
        if [[ ! -d e2fsprogs ]]; then
            git clone --depth 1 https://git.kernel.org/pub/scm/fs/ext2/e2fsprogs.git 2>/dev/null
        fi
        cd e2fsprogs
        ./configure 2>/dev/null
        make -j"$(nproc)" 2>/dev/null
        cd "$SCRIPT_DIR"
    fi

    # Build vdexExtractor (for deodexing)
    if [[ ! -f "$ROM_TOOLS_DIR/vdexExtractor/bin/vdexExtractor" ]]; then
        log "  Building vdexExtractor..."
        cd "$ROM_TOOLS_DIR"
        if [[ ! -d vdexExtractor ]]; then
            git clone --depth 1 https://github.com/anestisb/vdexExtractor 2>/dev/null
        fi
        cd vdexExtractor
        ./make.sh 2>/dev/null
        cd "$SCRIPT_DIR"
    fi

    # Build oatdumpdexloc
    if [[ ! -f "$ROM_TOOLS_DIR/oatdumpdexloc/oatdumpdexloc" ]]; then
        if [[ -d "$ROM_TOOLS_DIR/oatdumpdexloc" ]] && [[ -f "$ROM_TOOLS_DIR/oatdumpdexloc/Makefile" ]]; then
            log "  Building oatdumpdexloc..."
            make -C "$ROM_TOOLS_DIR/oatdumpdexloc" 2>/dev/null || warn "oatdumpdexloc build failed (optional)"
        fi
    fi

    # Install payload_dumper Python deps (into venv)
    if [[ -f "$ROM_TOOLS_DIR/payload_dumper/requirements.txt" ]]; then
        pip install --quiet -r "$ROM_TOOLS_DIR/payload_dumper/requirements.txt"
    fi

    # Download simg2img via otatools if not present
    if [[ ! -f "$ROM_TOOLS_DIR/otatools/bin/simg2img" ]]; then
        log "  Downloading Android OTA tools (simg2img, lpunpack)..."
        mkdir -p "$ROM_TOOLS_DIR/otatools"
        URL_CI_ANDROID="https://ci.android.com/builds/latest/branches/aosp-master/targets/aosp_arm64-userdebug/view/BUILD_INFO"
        RURL_CI_ANDROID=$(curl -Ls -o /dev/null -w '%{url_effective}' "${URL_CI_ANDROID}")
        wget -nv "${RURL_CI_ANDROID%/view/BUILD_INFO}/raw/otatools.zip" -O /tmp/otatools.zip 2>/dev/null || true
        if [[ -f /tmp/otatools.zip ]]; then
            unzip -q -o /tmp/otatools.zip -d "$ROM_TOOLS_DIR/otatools"
            rm /tmp/otatools.zip
        else
            warn "Could not download otatools. simg2img may not be available."
            warn "Install manually: sudo apt-get install android-sdk-libsparse-utils"
        fi
    fi

    # Download AIK-Linux (boot image unpacker — optional)
    if [[ ! -d "$ROM_TOOLS_DIR/AIK-Linux" ]]; then
        log "  Downloading AIK-Linux (optional, for boot images)..."
        wget -q -O /tmp/AIK-Linux.tar.gz \
            "https://forum.xda-developers.com/attachments/aik-linux-v3-8-all-tar-gz.5300923/" 2>/dev/null || true
        if [[ -f /tmp/AIK-Linux.tar.gz ]]; then
            tar -xzf /tmp/AIK-Linux.tar.gz -C "$ROM_TOOLS_DIR/"
            rm /tmp/AIK-Linux.tar.gz
        else
            warn "Could not download AIK-Linux (optional, not needed for framework analysis)."
        fi
    fi
else
    warn "ROM tools directory not found at: $ROM_TOOLS_DIR"
    warn "MIUI zip extraction will not be available."
fi

# ── Ollama + Dolphin 3.0 R1 (Phase 1 local LLM) ──────────────────────────────
# The paper uses dphn/Dolphin3.0-R1-Mistral-24B. Ollama has no first-party tag
# for it, so we register it locally as "dolphin3-r1" (the pipeline's default
# --model) from the vendored upstream Modelfile. That Modelfile's FROM pulls the
# GGUF build (bartowski/cognitivecomputations_Dolphin3.0-R1-Mistral-24B-GGUF:Q4_0,
# ~13 GB) from Hugging Face and carries the correct ChatML template and params.
# Source: https://huggingface.co/dphn/Dolphin3.0-R1-Mistral-24B
#
# Low on RAM (16 GB host)? Use the lite 8B model — ./setup.sh --lite (or
# setup_alt.sh), which registers dolphin3-r1 from Modelfile.8b (FROM dolphin3,
# ~5 GB). Alternatively keep the 24B and point DOLPHIN_GGUF at a smaller quant:
#   DOLPHIN_GGUF=hf.co/bartowski/cognitivecomputations_Dolphin3.0-R1-Mistral-24B-GGUF:Q3_K_M ./setup.sh
DOLPHIN_GGUF="${DOLPHIN_GGUF:-}"

log "Setting up Ollama for Phase 1 local LLM triage..."
if ! command -v ollama &>/dev/null; then
    log "  Installing Ollama..."
    curl -fsSL https://ollama.com/install.sh | sh
fi

# 'ollama create' needs a reachable server. The Linux installer normally starts
# a systemd service; if not, start one in the background.
if ! curl -fsS http://localhost:11434/api/tags &>/dev/null; then
    log "  Starting Ollama server in the background..."
    ( ollama serve >/tmp/ollama-serve.log 2>&1 & ) || true
    for _ in $(seq 1 30); do
        curl -fsS http://localhost:11434/api/tags &>/dev/null && break
        sleep 1
    done
fi

# Pick the Modelfile that defines the local 'dolphin3-r1' model:
#   --lite  → Modelfile.8b  (FROM dolphin3, ~5 GB, fits a 16 GB host)
#   default → Modelfile     (24B R1 GGUF, ~13 GB; DOLPHIN_GGUF can swap the quant)
if [[ "$DOLPHIN_LITE" == true ]]; then
    DOLPHIN_MODELFILE="$SCRIPT_DIR/Modelfile.8b"
    DOLPHIN_DESC="Dolphin 3.0 (8B, lite) as 'dolphin3-r1' (~5 GB, fits 16 GB RAM)"
    if [[ ! -f "$DOLPHIN_MODELFILE" ]]; then
        err "Modelfile.8b not found at $DOLPHIN_MODELFILE — cannot register the lite model."
    fi
else
    DOLPHIN_MODELFILE="$SCRIPT_DIR/Modelfile"
    DOLPHIN_DESC="Dolphin 3.0 R1 (24B) as 'dolphin3-r1' (pulls ~13 GB GGUF on first run)"
    if [[ ! -f "$DOLPHIN_MODELFILE" ]]; then
        err "Modelfile not found at $DOLPHIN_MODELFILE — cannot register dolphin3-r1."
    elif [[ -n "$DOLPHIN_GGUF" ]]; then
        DOLPHIN_MODELFILE="$(mktemp)"
        sed "s#^FROM .*#FROM ${DOLPHIN_GGUF}#" "$SCRIPT_DIR/Modelfile" > "$DOLPHIN_MODELFILE"
    fi
fi

if [[ -f "$DOLPHIN_MODELFILE" ]]; then
    log "  Registering $DOLPHIN_DESC..."
    if ! ollama create dolphin3-r1 -f "$DOLPHIN_MODELFILE"; then
        warn "Could not create 'dolphin3-r1'. Phase 1 needs Ollama running with this model."
        if [[ "$DOLPHIN_LITE" != true ]]; then
            warn "  Low on RAM (16 GB)? Use the lite 8B model instead:"
            warn "    ./setup.sh --lite      (or run setup_alt.sh)"
            warn "  Or a smaller 24B quant:"
            warn "    DOLPHIN_GGUF=hf.co/bartowski/cognitivecomputations_Dolphin3.0-R1-Mistral-24B-GGUF:Q3_K_M ./setup.sh"
        fi
    fi
fi

# ── Verification ─────────────────────────────────────────────────────────────
echo ""
echo "=== Artifact Setup Verification ==="
echo ""

PYBIN="$VENV_DIR/bin/python"
[[ -x "$PYBIN" ]] || PYBIN="python3"

FAIL=0
verify() {
    local name="$1" cmd="$2"
    if eval "$cmd" &>/dev/null; then
        echo "[OK] $name"
    else
        echo "[MISSING] $name"
        FAIL=$((FAIL+1))
    fi
}

verify "Java"                       "java -version 2>&1 | grep -qE '(1[7-9]|[2-9][0-9])'"
verify "Python"                     "$PYBIN --version"
verify "Python virtual environment" "test -f '$VENV_DIR/bin/activate'"
verify "baksmali"                   "test -x '$SCRIPT_DIR/tools/baksmali' && '$SCRIPT_DIR/tools/baksmali' --version >/dev/null 2>&1"
verify "Ollama"                     "command -v ollama"
verify "Dolphin model"              "ollama list 2>/dev/null | grep -qi dolphin3-r1"
verify "unzip"                      "command -v unzip"
verify "file"                       "command -v file"
verify "Python dependencies"        "$PYBIN -c 'import anthropic, requests, google_play_scraper, apksearch, bsdiff4, google.protobuf'"
verify "Sample framework"           "test -d '$SCRIPT_DIR/examples/sample_device/system/system/framework'"
verify "Reference outputs"          "test -f '$SCRIPT_DIR/examples/sample_device/sample_device_results_claude_validated.json'"

echo ""
if [[ $FAIL -eq 0 ]]; then
    echo "Setup complete."
else
    echo "Setup finished with $FAIL missing component(s) — see [MISSING] lines above."
fi

echo ""
echo "Next:"
echo "  source .venv/bin/activate"
echo "  ollama serve                                  # if not already running as a service"
echo "  export ANTHROPIC_API_KEY=\"YOUR_KEY_HERE\"       # for Phase 2 / 2b (cloud validation)"
echo "  ./scripts/pipeline/run_pipeline.sh examples/sample_device/ /tmp/work/ samsung --skip-filter --skip-phase2"
echo ""
echo "  (Firmware/MIUI extraction is optional — re-run: ./setup.sh --with-rom-tools)"
