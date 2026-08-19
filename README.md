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

TODO-AE: Add:

* total runtime;
* deterministic Steps 1–6 runtime;
* Tier-1 runtime;
* peak RAM;
* output counts.


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

TODO-AE: Confirm the exact interaction between --skip-filter and the
bundled cache after the current reproduction run, and add the measured live
filter runtime.

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
| Ubuntu 24.04.3 VM | x86-64 | Dolphin R1 24B | **TEST IN PROGRESS** |
| Ubuntu VM on Apple Silicon | ARM64 | Dolphin 8B (`--lite`) | **TEST IN PROGRESS** |
| Debian 13 | x86-64 | — | **TODO-AE** |


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