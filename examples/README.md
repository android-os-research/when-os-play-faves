# Minimal Working Example

The `sample_device/` directory contains pre-extracted framework JARs from a
**Samsung Galaxy A22 5G (SM-A226B)** running Android 13 (SDK 33). This is a
real OEM device with Samsung-specific framework modifications (Knox, SEC platform
libraries, Samsung IMS, etc.) that the pipeline should detect.

Source: [Android Dumps — samsung/a22x](https://gitlab.com/Android-Dumps/samsung/a22x)

## Quick test (Steps 1–6 + Phase 1, ~30 minutes)

```bash
cd ../scripts/pipeline/
./run_pipeline.sh ../../examples/sample_device/ /tmp/work/ samsung --skip-phase2
```

Expected output in `/tmp/work/samsung/triage.json`: a list of candidates with
HIGH/MEDIUM/LOW priority assignments from the local LLM.

## Full test (including Phase 2, ~1 hour, requires API key)

```bash
export ANTHROPIC_API_KEY=sk-...
./run_pipeline.sh ../../examples/sample_device/ /tmp/work/ samsung
```

Expected output in `/tmp/work/samsung/claude_validated.json`: confirmed findings
with CONFIRMED_HIGH or CONFIRMED_MEDIUM verdicts.

## Obtaining the full dump

To reproduce with the complete device filesystem (not just framework JARs):

```bash
git clone --depth 1 https://gitlab.com/Android-Dumps/samsung/a22x.git
./scripts/pipeline/run_pipeline.sh a22x/ /tmp/work/ samsung
```
