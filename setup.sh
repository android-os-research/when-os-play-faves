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
#   - Ollama + dolphin3-r1 model (Phase 1 local LLM triage)
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
while [[ $# -gt 0 ]]; do
    case "$1" in
        --github-token) GITHUB_TOKEN="$2"; shift 2 ;;
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
log "Installing system packages..."
sudo apt-get update -qq
sudo apt-get install -y -qq \
    openjdk-17-jre-headless \
    python3 python3-pip python3-venv \
    unzip wget curl jq axel brotli \
    libfuse-dev fuse \
    android-tools-adb \
    git build-essential autoconf automake libtool pkg-config \
    2>/dev/null

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
if [[ -d "$ROM_TOOLS_DIR" ]]; then
    log "Building ROM extraction tools..."

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

# ── Ollama + Dolphin (Phase 1 local LLM) ────────────────────────────────────
log "Setting up Ollama for Phase 1 local LLM triage..."
if ! command -v ollama &>/dev/null; then
    log "  Installing Ollama..."
    curl -fsSL https://ollama.ai/install.sh | sh
fi

log "  Pulling dolphin3-r1 model (this may take a while on first run)..."
ollama pull dolphin3-r1 2>/dev/null || warn "Could not pull dolphin3-r1. Phase 1 requires Ollama running with this model."

# ── Validation ───────────────────────────────────────────────────────────────
echo ""
log "============================================"
log "  Installation Validation"
log "============================================"

PASS=0
FAIL=0

check() {
    local name="$1"
    local cmd="$2"
    if eval "$cmd" &>/dev/null; then
        echo -e "  ${GREEN}✓${NC} $name"
        ((PASS++))
    else
        echo -e "  ${RED}✗${NC} $name"
        ((FAIL++))
    fi
}

check "Java 17+"              "java -version 2>&1 | grep -q '17\|18\|19\|20\|21\|22\|23'"
check "baksmali"               "test -f '$SCRIPT_DIR/tools/baksmali' && '$SCRIPT_DIR/tools/baksmali' --version >/dev/null 2>&1"
check "Python 3 (venv)"       "python3 --version"
check "anthropic (Python)"    "python3 -c 'import anthropic'"
check "requests (Python)"     "python3 -c 'import requests'"
check "google-play-scraper"   "python3 -c 'import google_play_scraper'"
check "apksearch"             "python3 -c 'import apksearch'"
check "bsdiff4 (ROM tools)"   "python3 -c 'import bsdiff4'"
check "protobuf (ROM tools)"  "python3 -c 'import google.protobuf'"
check "Ollama"                "command -v ollama"
check "adb"                   "command -v adb"

if [[ -d "$ROM_TOOLS_DIR" ]]; then
    check "payload_dumper"    "test -f '$ROM_TOOLS_DIR/payload_dumper/payload_dumper.py'"
    check "sdat2img"          "test -d '$ROM_TOOLS_DIR/sdat2img'"
    check "erofs-utils"       "test -f '$ROM_TOOLS_DIR/erofs-utils/fuse/erofsfuse' || test -d '$ROM_TOOLS_DIR/erofs-utils'"
    check "e2fsprogs"         "test -f '$ROM_TOOLS_DIR/e2fsprogs/misc/fuse2fs' || test -d '$ROM_TOOLS_DIR/e2fsprogs'"
fi

echo ""
if [[ $FAIL -eq 0 ]]; then
    log "All checks passed ($PASS/$PASS). Setup complete!"
else
    warn "$PASS passed, $FAIL failed. See above for details."
    warn "The pipeline may still work for some input modes."
fi

echo ""
log "Next steps:"
log "  1. Activate the virtual environment:  source .venv/bin/activate"
log "  2. Set your Anthropic API key:        export ANTHROPIC_API_KEY=\"YOUR_API_KEY_HERE\""
log "  3. Start Ollama:                      ollama serve  (in another terminal)"
log "  4. Run the pipeline:                  ./scripts/pipeline/run_pipeline.sh <dump_dir> <work_dir> <vendor>"
log ""
log "  Or use the extraction helpers first:"
log "    ./scripts/extract_adb.sh <serial> <output_dir>          # Live device via ADB"
log "    ./scripts/extract_android_dumps.sh <tar.gz> <output_dir> # Android Dumps archive"
log "    ./scripts/extract_miui.sh <miui.zip> <output_dir>        # MIUI firmware zip"
