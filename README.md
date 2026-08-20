# Artifact — NDSS 2027 Paper #711
Artifact for the NDSS 2027 paper:
**“User-denied, System-approved: A Security Analysis of OEM Subversions on Android’s Access Control”**
This artifact supports our analysis of OEM framework-level access-control
subversions in Android. These subversions arise when OEM framework
customizations introduce identity-specific privilege decisions that differ
from AOSP, allowing selected applications to obtain, retain, or bypass access
to security-sensitive resources.
The artifact provides:
1. the static-analysis pipeline used to discover OEM-selected application
   identities and trace identity-specific framework logic to security-sensitive
   enforcement surfaces;
2. 286 consolidated framework-evidence reports prepared from findings examined
   during the study;
3. supporting documentation for independently auditing the underlying smali
   evidence; and
4. dynamic-validation materials for representative findings reproduced on
   production devices.
The repository also contains a bundled Samsung Galaxy A22 5G framework sample
for a scaled-down reproduction of the analysis workflow.
---
# Quick Start — Docker (Recommended)

Docker is the recommended way to reproduce the bundled experiment: it provides
all pipeline dependencies and isolates the analysis from the host system.

```bash
git clone https://github.com/android-os-research/when-os-play-faves.git
cd when-os-play-faves/docker
docker version
docker compose version          # must report Compose v2
./docker-setup.sh --lite
./docker-run-sample.sh
```

If these commands complete successfully, the bundled reproduction is ready
(Phase-1 output in `docker-work/samsung/triage.json`). If setup reports an
error, see **Docker Setup** and **Docker Troubleshooting** below.

---
# Docker Setup

Docker provides the pipeline dependencies and isolates the analysis environment
from the host system.

## Requirements
- Docker Engine 24+ or Docker Desktop
- Docker Compose v2 (`docker compose`, not the legacy `docker-compose`)
- At least 4 CPU cores (8 recommended)
- At least 16 GB RAM for the `--lite` reproduction
- At least 20 GB free disk space
- Internet access during initial setup

Verify Docker and Compose before continuing:
```bash
docker version
docker compose version
```
The second command should report Docker Compose v2. If `docker compose` is
unavailable, install/update Docker Desktop or the Docker Compose plugin.

## macOS with Colima
On macOS, Docker Desktop can be used directly. We also tested the artifact with
Colima, which allows the Docker VM resources to be configured explicitly:
```bash
brew install colima docker
colima start --cpu 4 --memory 16 --disk 40
```
Verify the resources visible to Docker:
```bash
docker info | grep -E 'CPUs|Total Memory'
```
Check available disk space from the pipeline container after setup:
```bash
docker compose exec pipeline df -h /artifact
```

## Build the artifact
Clone the repository and enter the Docker directory:
```bash
git clone https://github.com/android-os-research/when-os-play-faves.git
cd when-os-play-faves/docker
```
For machines with approximately 16 GB RAM, use the lite configuration:
```bash
./docker-setup.sh --lite
```
This performs the following operations:
1. checks the Docker/Compose environment;
2. builds the pipeline image;
3. starts the required services;
4. downloads the Dolphin 3 8B model;
5. registers it as `dolphin3-r1`;
6. verifies that the model is visible to Ollama; and
7. performs a minimal inference test.

The `--lite` model makes the bundled reproduction practical on
memory-constrained evaluator machines. The 8B triage over-triages relative to
the 24B paper model; for paper-matching confirmed counts use the cloud
validation below with the bundled 24B triage.

TODO-AE: state whether the `--lite` output should be compared directly with the
paper-model Phase-1 results, or is intended for execution/testing only.

## Run the bundled experiment
```bash
./docker-run-sample.sh
```
This runs Steps 1–6 and the local Phase-1 triage on the bundled Samsung Galaxy
A22 5G framework sample, skipping the external package-store filter and the
cloud-assisted Phase 2. Outputs are written under `docker-work/samsung/`, with
Phase-1 output at `docker-work/samsung/triage.json` and the Steps 1–6
intermediates retained alongside it. 8B triage on CPU takes ~30–60 min and is
quiet between checkpoints (`wc -l docker-work/samsung/triage.json`).

## Optional cloud-assisted validation
Phase 2/2b requires an Anthropic credential (API key or OAuth token) and is not
required for the default bundled reproduction. Set it in the host shell and run
the cloud step with the bundled 24B triage (`--skip-phase1`, no local model):
```bash
export ANTHROPIC_API_KEY="<your-key>"

# Ensure the work directory is mounted (re-binds if a stale container is missing it).
mkdir -p ../docker-work
docker compose exec -T pipeline test -d /artifact/work 2>/dev/null \
  || docker compose up -d --force-recreate pipeline

# Use the bundled 24B triage: drop any leftover triage from a prior run so
# --skip-phase1 loads examples/sample_device/precomputed/triage.json.
docker compose exec -T pipeline rm -f /artifact/work/samsung/triage.json

docker compose exec -T -e ANTHROPIC_API_KEY="$ANTHROPIC_API_KEY" pipeline \
  bash scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ /artifact/work/ samsung \
    --skip-filter --skip-phase1
```
Near the top of the output, confirm it reports `Triage: 779 total` — that means
the bundled 24B triage loaded (a much smaller number means a stale triage from an
earlier run was reused, which the `rm` step above prevents). This run lands in
the ~100–105 confirmed range (see the reproduced-counts note). Do not store API
credentials in the repository, Dockerfile, Compose file, or command examples.

## Full pipeline (both LLM phases)
To exercise both LLM stages in one pass — local Phase 1 (Dolphin) **and** cloud
Phase 2/2b (Claude) — drop both skip flags and keep only `--skip-filter`. This
requires a registered local model (`./docker-setup.sh --lite`) and an Anthropic
credential.

```bash
export ANTHROPIC_API_KEY="<your-key>"

# ensure the work mount, then start Phase 1 from a clean triage
mkdir -p ../docker-work
docker compose exec -T pipeline test -d /artifact/work 2>/dev/null \
  || docker compose up -d --force-recreate pipeline
docker compose exec -T pipeline rm -rf /artifact/work/samsung

docker compose exec -T -e ANTHROPIC_API_KEY="$ANTHROPIC_API_KEY" pipeline \
  bash scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ /artifact/work/ samsung \
    --skip-filter
```

This runs Steps 1–6 → Phase 1 (local model) → Phase 2 (Haiku) → Phase 2b
(Sonnet), writing `triage.json`, `claude_validated.json`, and `ni_recheck.json`
under `docker-work/samsung/`. It confirms both LLM stages work end-to-end but is
**not** a paper-numbers run: the `--lite` 8B model over-triages, so Phase 2
validates a larger, different hot-spot set and the confirmed count will not match
the paper. It is also slower (Phase 1 over ~778 items on CPU) and costs more in
API calls. For paper-matching confirmed counts (~100–105), use the
`--skip-phase1` cloud validation above with the bundled 24B triage.

## Docker Troubleshooting

**`docker compose` is not recognized.** The artifact uses Compose v2; note the
space between `docker` and `compose`:
```bash
docker compose version
```
The legacy standalone `docker-compose` is not required. On Linux, install the
Docker Compose plugin; current macOS Docker Desktop releases include Compose v2.

**Check available resources.**
```bash
docker info | grep -E 'CPUs|Total Memory'    # resources visible to Docker
docker compose exec pipeline free -h         # memory inside the container
docker compose exec pipeline df -h /artifact  # disk
docker stats                                  # live usage during a run
```

**No live output / appears stuck at "Verifying API key".** `docker compose exec
-T` allocates no TTY, so Python block-buffers stdout and progress only appears
when the run ends — the pipeline is running, not hung. A freshly built image
carries `PYTHONUNBUFFERED=1` (set in the Dockerfile) and streams normally; against
an older image, rebuild (`docker compose build pipeline`) or add
`-e PYTHONUNBUFFERED=1` to the exec:
```bash
docker compose exec -T -e PYTHONUNBUFFERED=1 -e ANTHROPIC_API_KEY="$ANTHROPIC_API_KEY" pipeline \
  bash scripts/pipeline/run_pipeline.sh examples/sample_device/ /artifact/work/ samsung --skip-filter --skip-phase1
```

**Model is listed but inference fails (e.g. `EOF` from `/api/generate`).**
First confirm Ollama sees the model:
```bash
docker compose exec ollama ollama list
```
If the model is present but inference terminates with an error, the model may
not fit in the Docker VM's memory. Check memory (`docker info | grep 'Total
Memory'`, `docker stats`); for a 16 GB-class environment use
`./docker-setup.sh --lite`. The original 24B configuration has substantially
higher memory requirements.

TODO-AE: insert the tested minimum RAM for the 24B model after the
clean-environment experiment.

**`ollama serve` reports "address already in use".** Do not start a second
Ollama server manually — the Compose environment manages it. Check with:
```bash
docker compose ps
docker compose exec ollama ollama list
```

**Completely clean and rebuild.** Remove this artifact's containers and volumes:
```bash
docker compose down -v --remove-orphans
```
To additionally remove unused Docker images and build cache (this also affects
Docker resources outside this artifact):
```bash
docker system prune -a --volumes
```
For a fresh Colima environment:
```bash
colima stop && colima delete
colima start --cpu 4 --memory 16 --disk 40
```
Then clone the repository again and repeat the setup.

---
# Quick Start — Fresh Ubuntu Machine
The following commands are intended to be copy-pasted on a fresh Ubuntu
22.04/24.04 installation.
The only package installed manually before cloning the artifact is Git.
All remaining artifact dependencies are installed by `setup.sh`.
```bash
# 1. Update package metadata and install Git
sudo apt-get update
sudo apt-get install -y git
# 2. Clone the public artifact repository
git clone https://github.com/android-os-research/when-os-play-faves.git
cd when-os-play-faves
# 3. Install and verify artifact dependencies
chmod +x setup.sh
./setup.sh
# 4. Activate the Python virtual environment
source .venv/bin/activate
# 5. Run the bundled artifact reproduction
./scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ \
    /tmp/work/ \
    samsung \
    --skip-filter \
    --skip-phase2
# 6. Inspect the Tier-1 output
python3 -m json.tool /tmp/work/samsung/triage.json | head -40
```

The default setup uses the original Dolphin 3.0 R1 Mistral 24B
configuration.

No Anthropic API key is required for the command above.

The bundled sample contains pre-extracted framework artifacts from a Samsung
Galaxy A22 5G running Android 13, so no firmware download or extraction is
required for the basic reproduction.


# Setup Modes

### Default — Original 24B Model

The normal evaluator configuration is:
```bash
./setup.sh
```
This installs and registers the original local model configuration used by the
pipeline:
```bash
Dolphin 3.0 R1 Mistral 24B
```
The model is registered in Ollama under the local name:
```bash
dolphin3-r1
```
The pipeline therefore does not require any additional model argument.

### Lite — 8B Model

For memory-constrained machines, the setup script also supports:
```bash
./setup.sh --lite
```
This loads the smaller Dolphin 8B configuration from Modelfile.8b and
registers it under the same local model name:
```bash
dolphin3-r1
```
This allows the same pipeline command to be used in both configurations.

--lite is intended primarily for functionality testing on constrained
machines. Unless otherwise stated, reproduction results should be obtained
using the default 24B configuration.

Note on lite-mode triage quality: the 8B model over-triages. On the bundled
sample it classified 564/34/4 as HIGH/MEDIUM/LOW, versus 159/60/380 for the
default 24B model (the deterministic SKIP count, 175, is identical). This does
not lose findings — Tier-1 only triages, and everything HIGH/MEDIUM is forwarded
to Tier-2 for validation, so over-triaging costs extra Tier-2 calls rather than
dropping candidates — but the lite Tier-1 distribution is not representative of
the paper's. On a memory-constrained machine, prefer `--skip-phase1` with the
bundled precomputed 24B triage (see "Skipping the Local Triage" below) to obtain
the representative Tier-1 result without running the 24B model locally.


## What setup.sh Installs

A normal evaluator should not need to install artifact dependencies manually.

setup.sh installs and verifies:

* Java;
* Python and an isolated virtual environment;
* required Python packages;
* baksmali 2.5.2;
* Ollama;
* the selected Dolphin model;
* standard Linux utilities required by the pipeline;
* the bundled sample framework; and
* bundled reference outputs.

The setup script also:

* starts or verifies the Ollama service;
* registers the model as dolphin3-r1;
* confirms that the Ollama API is reachable; and
* performs a minimal model-inference sanity check.

A successful setup ends with a verification block in which all required
components are reported as [OK].

For example:
```bash
=== Artifact Setup Verification ===
[OK] Java
[OK] Python
[OK] Python virtual environment
[OK] baksmali
[OK] Ollama CLI
[OK] Ollama server
[OK] Dolphin model
[OK] unzip
[OK] file
[OK] Python dependencies
[OK] Sample framework
[OK] Reference outputs
Setup complete.
```
There is normally no need to run:
```bash
ollama serve
```
manually after a successful setup. The setup script starts and verifies the
service.

The Ollama installation can be checked independently with:
```bash
systemctl status ollama --no-pager
ollama list
```
The model list should contain:
```bash
dolphin3-r1
```

# Bundled Reproduction

The recommended artifact-evaluation command is:
```bash
source .venv/bin/activate
./scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ \
    /tmp/work/ \
    samsung \
    --skip-filter \
    --skip-phase2
```
This exercises:

* framework discovery;
* DEX recovery and smali disassembly;
* hardcoded identity discovery;
* method-level enforcement analysis;
* method-level call-graph construction;
* identity propagation to security-sensitive enforcement surfaces; and
* local Dolphin-based Tier-1 triage.

No cloud API key is required.

## Expected runtime

TODO-AE: Replace these values after the clean x86-64/24B and ARM64/8B runs
complete.

Current test environments:

### Environment A

* OS: Ubuntu 24.04.3 LTS
* Architecture: x86-64
* vCPUs: 12
* RAM: 32 GB
* Model: Dolphin 3.0 R1 Mistral 24B
* GPU: none
* Status: TEST IN PROGRESS

### Environment B

* OS: Ubuntu VM on Apple Silicon
* Architecture: ARM64
* Model: Dolphin 8B (--lite)
* GPU: none
* Status: TEST IN PROGRESS

### Reproduced output counts (bundled Samsung A22 5G sample)

These counts are model/sample-dependent, not hardware-dependent. They were
produced by the full default (24B) pipeline on the reference run:

| Stage | Output |
|---|---|
| Framework JARs (Step 1) | 91 |
| Identity references / unique packages (Step 3) | 26,051 / 5,247 |
| Per-package propagation reports (Step 6) | 779 |
| Tier-1 — HIGH / MEDIUM / LOW / SKIP | 159 / 60 / 380 / 175 |
| Tier-2 — CONFIRMED_HIGH / CONFIRMED_MEDIUM / LIKELY_FP | 36 / 68 / 495 |
| Total confirmed (after Phase 2b) | 104 |

For comparison, the paper's own run of this sample reported 37 / 66 / 497 (103
confirmed), and the AEC-spec 16 GB VM run via `--skip-phase1` reported 102
(39 CONFIRMED_HIGH / 62 CONFIRMED_MEDIUM / 1 promoted in Phase 2b). The small
differences reflect local-LLM (Tier-1) and cloud-LLM (Tier-2) non-determinism:
even at temperature 0 the cloud models are not bit-exact run to run, and the
NEEDS_INVESTIGATION → Sonnet escalation adds a branch. Expect a total in the
range of roughly 100–105 confirmed, not an exact 103 — a count in that band
reproduces the paper and does not indicate a failed run.

TODO-AE: Add per-machine total/Tier-1 runtime and peak RAM for Environments A
and B once those runs complete. A completed high-core reference run is recorded
in the Tested Environments table below.


## APK-Store Filtering

Step 3b attempts to distinguish real application identities from internal
framework strings that resemble package names by querying external application
sources.

A live Step 3b execution is substantially slower than the remaining
deterministic stages because the lookups are network-bound and rate-limited.

The bundled sample includes a pre-computed package-filter cache under:
```bash
examples/sample_device/step3b_scan_cache/
```
For artifact evaluation, we recommend:
```bash
--skip-filter
```
to avoid long-running external lookups.

To explicitly exercise the live package-store filtering stage, omit
--skip-filter:
```bash
source .venv/bin/activate
./scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ \
    /tmp/work/ \
    samsung \
    --skip-phase2
```
Internet access is required for this mode.

On the reference full run, the live Step 3b filter (3,524 candidate packages)
took approximately 4.5 hours, which is why `--skip-filter` is recommended for
evaluation. With `--skip-filter`, the bundled cache reproduces the same filtered
package set without any external queries.

## Optional Cloud-Assisted Validation

The cloud-assisted validation stages are optional for the basic bundled
reproduction.

To enable them:
```bash
export ANTHROPIC_API_KEY="YOUR_API_KEY"
```
Then run the pipeline without --skip-phase2:
```bash
source .venv/bin/activate
./scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ \
    /tmp/work/ \
    samsung \
    --skip-filter
```
The validation results are written under the device work directory, including:
```bash
/tmp/work/samsung/claude_validated.json
```
Reference cloud-validation output for the bundled sample is included in the
artifact, so evaluators can inspect the results of this stage without supplying
an API key.

The pipeline also includes a re-evaluation stage for unresolved candidates
using expanded smali context.

It can be executed independently with:
```bash
python3 scripts/pipeline/phase2b_ni_recheck.py \
    --validated /tmp/work/samsung/claude_validated.json \
    --prop-dir  /tmp/work/samsung/step6_propagation/per_package \
    --smali-dir /tmp/work/samsung/smali \
    --output    /tmp/work/samsung/ni_recheck.json \
    --api-key   "$ANTHROPIC_API_KEY" \
    --sonnet-model claude-sonnet-4-6
```

Phase 2 and the re-evaluation stage accept either a funded Anthropic API key
(`sk-ant-api03-…`) or an OAuth token with API access (`sk-ant-oat01-…`); both
are passed the same way, via `ANTHROPIC_API_KEY` or `--api-key`.

A plain API key is billed per token. Our reference runs instead use an OAuth
token, because it draws on an existing Claude plan and therefore avoids
additional per-usage API charges. Reviewers may use whichever credential is
more cost-effective for them — an OAuth token if it is covered by an existing
plan, or a funded API key otherwise; both produce identical results.

## Skipping the Local Triage (Precomputed Tier-1)

The local Tier-1 triage (Phase 1) is the slowest stage on a CPU-only machine.
To skip it, the artifact bundles a precomputed Tier-1 triage produced with the
default 24B model:
```bash
examples/sample_device/precomputed/triage.json
```
Run the pipeline with `--skip-phase1` to use it. The deterministic Steps 1–6
still run (a few minutes with `--skip-filter`), but the multi-hour local-LLM
triage is replaced by the bundled result:
```bash
source .venv/bin/activate
export ANTHROPIC_API_KEY="YOUR_API_KEY_OR_OAUTH_TOKEN"
./scripts/pipeline/run_pipeline.sh \
    examples/sample_device/ \
    /tmp/work/ \
    samsung \
    --skip-filter \
    --skip-phase1
```
Because the bundled triage is the 24B output, this path yields the same Tier-1
quality even on a memory-constrained machine that would otherwise use `--lite`.
It requires no Ollama or GPU. Add `--skip-phase2` to stop after loading the
precomputed triage (no cloud validation).

Expect a total of roughly 100–105 confirmed findings, not an exact number: Phase 2
and Phase 2b are cloud-LLM calls that are not bit-exact run to run (even at
temperature 0), so counts vary slightly between runs. The AEC-spec 16 GB VM run
of this path produced 102 confirmed; the reference 24B run produced 104. Any
count in that band reproduces the paper.

## Repository Structure
```bash
when-os-play-faves/
├── setup.sh
├── Modelfile
├── Modelfile.8b
├── README.md
│
├── examples/
│   └── sample_device/
│       ├── system/...
│       ├── step3b_scan_cache/
│       ├── precomputed/triage.json          # precomputed Tier-1 (--skip-phase1)
│       └── sample_device_results_claude_validated.json
│
├── scripts/
│   ├── extract_adb.sh
│   ├── extract_android_dumps.sh
│   ├── extract_miui.sh
│   ├── normalize_vuln_reports.py
│   │
│   └── pipeline/
│       ├── run_pipeline.sh
│       ├── step1_find_jars.sh
│       ├── step2_decompile_jars.sh
│       ├── step3_find_package_refs.py
│       ├── step3b_filter_packages.py
│       ├── step4_analyze_methods.py
│       ├── step5_smali_callgraph.py
│       ├── step6_propagation_tracker.py
│       ├── phase1_llm_triage.py
│       ├── phase2_llm_validate.py
│       ├── phase2b_ni_recheck.py
│       └── README.md
│
├── reproducibility/
│   └── vuln/
│       └── 286 consolidated framework-evidence reports
│
├── poc-videos/
│   └── representative dynamic-validation videos
│
├── docs/
│   ├── SMALI_VERIFICATION_GUIDE.md
│   ├── PIPELINE_OUTPUT_GUIDE.md
│   ├── FIRMWARE_EXTRACTION_GUIDE.md
│   └── LLM_PROMPT_TRANSPARENCY.md
│
├── tools/
│   ├── baksmali-2.5.2.jar
│   ├── baksmali
│   └── rom_tools/
│
└── LICENSE
```

## System Requirements

The bundled reproduction is designed for a standard Linux machine.

| Resource | Requirement |
|---|---|
| **OS** | Ubuntu 22.04/24.04 LTS or Debian 13 |
| **Architecture** | x86-64 recommended for artifact evaluation |
| **CPU** | 8+ cores recommended |
| **RAM — default model** | 32 GB currently recommended; final requirement pending clean 24B reproduction |
| **RAM — lite mode** | 16 GB recommended |
| **Disk** | 30–50 GB free recommended |
| **GPU** | Not required |
| **Network** | Required during setup; additionally required for live Step 3b and optional cloud validation |

Java, Python, baksmali, Ollama, and Python dependencies are installed by
setup.sh.

### Tested Environments

This table should only list configurations that have actually completed the
documented reproduction.

| Environment | Architecture | Model | Status |
|---|---|---|---|
| Debian 13 server (128 cores, 251 GB) | x86-64 | Dolphin R1 24B | **COMPLETED** — output counts reproduced (above) |
| Ubuntu 24.04 VM (16 GB, Debian host) | x86-64 | Dolphin 8B (`--lite`) | **COMPLETED** — Steps 1–6 + Phase 1 in 2 h 34 m, no swap, exit 0 (see note) |
| Ubuntu 24.04 VM (16 GB, Debian host) | x86-64 | `--skip-phase1` (bundled 24B triage) + cloud Phase 2/2b | **COMPLETED** — 102 confirmed (39 CONFIRMED_HIGH / 62 CONFIRMED_MEDIUM / 1 promoted in Phase 2b); no local model, no GPU |
| Ubuntu 24.04.3 VM | x86-64 | Dolphin R1 24B | **TEST IN PROGRESS** |
| Ubuntu VM on Apple Silicon | ARM64 | Dolphin 8B (`--lite`) | **TEST IN PROGRESS** |

The 16 GB `--lite` run completed Steps 1–6 + Phase 1 (`--skip-filter
--skip-phase2`) in ~2 h 34 m wall clock with a peak pipeline RSS of ~816 MB and
no swap, confirming the lite path fits comfortably in 16 GB. Almost all of that
wall clock is 8B inference in the separate Ollama process (the pipeline itself
uses only ~4.5 min of CPU). As noted under "Lite — 8B Model", the 8B triage
distribution (564/34/4 HIGH/MEDIUM/LOW) over-triages relative to the 24B model;
use `--skip-phase1` for a representative Tier-1 result on such machines.

Reference full run (Debian 13, 128-core server, live filter):
Steps 1–3 ≈ 2 min · live Step 3b ≈ 4.5 h · Tier-1 (24B) ≈ 4.5 h ·
Tier-2 (Haiku) ≈ 1.6 h · Phase 2b ≈ seconds.
Runtimes scale strongly with core count and model size, so a typical evaluator
machine will differ. The two longest stages are removed by `--skip-filter`
(bundled cache) and `--skip-phase1` (bundled precomputed Tier-1).


## Installation from a Fresh Machine

For a fresh Ubuntu installation:
```bash
# Update package metadata
sudo apt-get update
# Install Git so the public artifact can be cloned
sudo apt-get install -y git
# Clone the artifact
git clone https://github.com/android-os-research/when-os-play-faves.git
# Enter the artifact directory
cd when-os-play-faves
# Make setup executable
chmod +x setup.sh
# Install the default 24B configuration
./setup.sh
# Activate the Python environment
source .venv/bin/activate
```
For the smaller local model:
```bash
./setup.sh --lite
source .venv/bin/activate
```
No other manual dependency installation should normally be necessary.


#### Optional Firmware-Extraction Tools

The bundled sample is already extracted, so firmware extraction tools are not
required for the basic artifact evaluation.

To install/build the optional extraction toolchain:
```bash
./setup.sh --with-rom-tools
```

## Input Modes

The pipeline supports three ways of obtaining Android framework artifacts.

#### Mode A — Live Android Device via ADB
```bash
./scripts/extract_adb.sh [SERIAL] /data/dumps/my_device/
./scripts/pipeline/run_pipeline.sh \
    /data/dumps/my_device/ \
    /data/work/ \
    <vendor>
```
#### Mode B — Android Dumps Archive
```bash
./scripts/extract_android_dumps.sh \
    /path/to/device.tar.gz \
    /data/dumps/device/
```
Framework-only extraction:
```bash
./scripts/extract_android_dumps.sh \
    /path/to/device.tar.gz \
    /data/dumps/device/ \
    --framework-only
```
Then:
```bash
./scripts/pipeline/run_pipeline.sh \
    /data/dumps/device/ \
    /data/work/ \
    <vendor>
```
Mode C — MIUI Firmware
```bash
./scripts/extract_miui.sh \
    /path/to/miui_firmware.zip \
    /data/dumps/xiaomi_device/
```
Then:
```bash
./scripts/pipeline/run_pipeline.sh \
    /data/dumps/xiaomi_device/rom-deodexed/ \
    /data/work/ \
    xiaomi
```
Mode C requires the optional firmware-extraction toolchain:
```bash
./setup.sh --with-rom-tools
```
See:
```bash
docs/FIRMWARE_EXTRACTION_GUIDE.md
```
for detailed extraction instructions.


## Analysis Workflow

The executable workflow is:
```bash
Input: extracted Android framework artifacts
        │
        ├── Step 1
        │   Discover framework JAR/DEX files
        │
        ├── Step 2
        │   Recover DEX bytecode and disassemble to smali
        │
        ├── Step 3
        │   Discover hardcoded package-like identity references
        │
        ├── Step 3b
        │   Filter candidate identities using external application sources
        │
        ├── Step 4
        │   Analyze seed methods and identity-specific enforcement patterns
        │
        ├── Step 5
        │   Construct the method-level smali call graph
        │
        ├── Step 6
        │   Generate per-package propagation reports and reached
        │   security-sensitive enforcement surfaces
        │
        ├── Tier 1
        │   Local LLM-assisted triage using Dolphin/Ollama
        │
        ├── Tier 2
        │   Cloud-assisted structured validation using Claude
        │
        └── Re-evaluation
            Re-examine unresolved candidates using expanded smali context
```
The LLM stages are used for triage and evidence structuring.

They do not independently establish the paper’s final confirmed findings.

Candidates surviving automated analysis were manually examined against the
underlying smali and corresponding AOSP evidence during expert review.

The manual audit process is documented in:
```bash
docs/SMALI_VERIFICATION_GUIDE.md
```

## Running the Pipeline

Full pipeline:
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor>
```
Stop before cloud validation:
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor> \
    --skip-phase2
```
Avoid live application-store filtering:
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor> \
    --skip-filter
```
Skip the multi-hour local triage (use the bundled precomputed Tier-1):
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor> \
    --skip-filter \
    --skip-phase1
```
Skip the re-evaluation (Phase 2b) stage:
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor> \
    --skip-ni-recheck
```
Resume a partial run:
```bash
./scripts/pipeline/run_pipeline.sh \
    <dump_dir> \
    <work_dir> \
    <vendor> \
    --resume
```
See:
```bash
scripts/pipeline/README.md
```
for the complete command-line reference.

# Claims Supported by the Artifact

The artifact evaluation focuses on three claims.

## C1 - Identity-to-Enforcement Analysis

The pipeline can identify OEM-selected application identities in framework
code and trace identity-specific logic through framework call chains to
security-sensitive enforcement surfaces.

### Evaluation

Run the bundled sample and inspect the generated method-analysis, call-graph,
propagation, and Tier-1 outputs.


## C2 — Inspectable Evidence for Confirmed Subversions

The access-control subversions reported in the study are supported by
inspectable framework evidence connecting selected application identities to
altered enforcement decisions.

The artifact provides 286 consolidated evidence reports under:
```bash
reproducibility/vuln/
```
These reports were prepared from evidence examined during the study and group
equivalent evidence by:

* OEM/vendor;
* package identity;
* call chain; and
* enforcement surface.

This reviewer-oriented consolidation is separate from the deduplication used
for the paper’s measurement results.

Each report exposes relevant framework evidence, including the selected
identity, affected firmware, classification metadata, security/privacy impact,
and identity-to-enforcement call-chain evidence.

Evaluators can independently audit representative reports using:
```bash
docs/SMALI_VERIFICATION_GUIDE.md
```

## C3 — Representative Production-Device Validation

The artifact includes dynamic-validation materials for representative findings
that were reproduced on production devices.

These materials allow evaluators to relate representative static framework
findings to the corresponding runtime behavior.

Physical Android devices are not required for this part of artifact
evaluation.


# Scope of Reproduction

The paper reports:

* 5,205 firmware images;
* 707 expert-reviewed, deduplicated confirmed instances; and
* 28 affected OEMs.

The bundled artifact is not intended to reproduce the complete 5,205-image
ecosystem measurement during artifact evaluation.

Instead, it provides:

1. a real OEM framework sample for exercising the core analysis workflow;
2. reviewer-facing framework evidence from the study; and
3. representative production-device validation materials.

The 286 evidence reports are a reviewer-oriented consolidation and should not
be interpreted as a second measurement result or as a one-to-one
representation of the 707 confirmed instances.

Similarly, static confirmation of an access-control subversion does not imply
that every confirmed instance is practically exploitable.


# Verifying Individual Findings

For a representative report under:
```bash
reproducibility/vuln/
```
the evaluator can:

1. identify the OEM-selected package identity;
2. inspect the corresponding framework method;
3. confirm the relevant hardcoded identity or identity-specific branch;
4. follow the supplied call-chain path;
5. inspect the reached enforcement surface;
6. compare the OEM-specific logic with the corresponding AOSP implementation;
    and
7. evaluate whether the supplied evidence supports the reported
    expert-confirmed classification.

The detailed procedure is provided in:
```bash
docs/SMALI_VERIFICATION_GUIDE.md
```
The guide includes:

* a concise smali primer;
* a complete finding walkthrough;
* common OEM allowlist/enforcement patterns;
* navigation and grep examples; and
* guidance for comparison against AOSP.


# Dynamic-Validation Materials

Representative production-device validation videos are available under:
```bash
poc-videos/
```
Current materials include demonstrations corresponding to:

* Nokia content-provider privilege behavior;
* OnePlus silent SMS behavior;
* Vivo background-activity-launch behavior; and
* Xiaomi installer-policy behavior.

Exploit-specific implementation material may be omitted where coordinated
disclosure is still ongoing.


# Troubleshooting

## Setup stops with a missing dependency

Re-run:
```bash
./setup.sh
```
The setup script should fail clearly if a required core dependency cannot be
installed.

## Ollama

After successful setup:
```bash
systemctl status ollama --no-pager
ollama list
```
The model list should contain:
```bash
dolphin3-r1
```
Do not normally start another ollama serve process manually. The setup script
configures and verifies the service.

## Default Dolphin model exceeds available memory

Use:
```bash
./setup.sh --lite
```
for functionality testing on a constrained machine.

## Phase 2 authentication failure

Check:
```bash
echo "$ANTHROPIC_API_KEY"
```
and confirm that a valid Anthropic API key has been supplied.

## Step 3b is slow

The application-source queries are network-bound and rate-limited.

For the bundled reproduction, use:
```bash
--skip-filter
```
## ROM extraction dependencies

Install the optional extraction toolchain with:
```bash
./setup.sh --with-rom-tools
```

# Documentation

| Guide | Purpose |
|---|---|
| docs/SMALI_VERIFICATION_GUIDE.md | Independently auditing framework findings |
| docs/PIPELINE_OUTPUT_GUIDE.md | Understanding generated pipeline outputs |
| docs/FIRMWARE_EXTRACTION_GUIDE.md | Extracting framework artifacts from supported sources |
| docs/LLM_PROMPT_TRANSPARENCY.md | LLM prompts and automated triage/validation design |


# Artifact Availability

Following completion of artifact evaluation, we intend to archive the final
artifact in permanent public storage with a DOI.

License: see LICENSE.