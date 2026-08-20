# Minimal image for the bundled-sample analysis (Steps 1-6 + Phase 1 triage).
# Firmware extraction / ROM tools / FUSE / ADB are intentionally excluded — the
# bundled sample is already extracted, so none of that is needed.
#
# Based on ubuntu:22.04 to match the artifact-evaluation environment.
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
# Stream pipeline output live through `docker compose exec` (no TTY = block-buffered otherwise).
ENV PYTHONUNBUFFERED=1

# Only what the bundled pipeline needs.
RUN apt-get update && apt-get install -y --no-install-recommends \
        openjdk-17-jre-headless \
        python3 python3-venv python3-pip \
        curl wget jq unzip file brotli git ca-certificates \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /artifact

# Python virtual environment + pipeline dependencies (mirrors setup.sh).
RUN python3 -m venv /artifact/.venv
ENV PATH="/artifact/.venv/bin:/artifact/tools:${PATH}"
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir \
        anthropic requests google-play-scraper apksearch protobuf bsdiff4 zstandard

# baksmali 2.5.2 — bundled jar (the upstream release download URL is dead / 404).
COPY tools/rom_tools/tools/baksmali-2.5.2.jar /artifact/tools/baksmali-2.5.2.jar
RUN printf '#!/usr/bin/env bash\nexec java -jar /artifact/tools/baksmali-2.5.2.jar "$@"\n' \
        > /artifact/tools/baksmali \
    && chmod +x /artifact/tools/baksmali

# Pipeline sources + bundled sample (build context = repo root).
COPY scripts/  /artifact/scripts/
COPY examples/ /artifact/examples/

# run_pipeline.sh resolves ARTIFACT_DIR to /artifact and finds .venv + tools here.
# The container idles; the wrapper scripts `docker compose exec` into it.
CMD ["sleep", "infinity"]
