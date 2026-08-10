# How to Extract and Prepare Firmware Images

This guide walks through each of the three input modes for the pipeline,
with step-by-step instructions, expected output, and common pitfalls.

---

## Overview

The pipeline analyzes Android framework JARs extracted from firmware. Before running
the pipeline, you need to extract the relevant partitions from one of three sources:

| Mode | Source | Script | Typical size | Time |
|------|--------|--------|--------------|------|
| **A: ADB** | Live device via USB | `extract_adb.sh` | 500MB–2GB | 5–15 min |
| **B: Android Dumps** | Pre-extracted firmware (tar.gz) | `extract_android_dumps.sh` | 2–8GB | 2–10 min |
| **C: MIUI** | MIUI OTA zip | `extract_miui.sh` | 3–6GB | 10–30 min |

All three produce the same directory layout that the pipeline expects:

```
<output_dir>/
├── system/
│   └── framework/          ← main framework JARs (services.jar, framework.jar, etc.)
├── system_ext/
│   └── framework/          ← extended framework JARs (vendor-specific)
├── vendor/
│   ├── framework/          ← vendor framework JARs
│   └── build.prop          ← device properties
├── product/
│   └── framework/          ← product-specific JARs (if present)
└── device_info.txt         ← device metadata (model, brand, SDK version, fingerprint)
```

---

## Mode A: Live Device via ADB

### Prerequisites
- Android device with **USB Debugging** enabled (Settings → Developer Options)
- `adb` installed on the host machine
- USB cable connecting device to host

### Enabling USB Debugging
1. Go to **Settings → About Phone**
2. Tap **Build Number** 7 times (enables Developer Options)
3. Go to **Settings → Developer Options**
4. Enable **USB Debugging**
5. Connect via USB and approve the debugging prompt on the device

### Running the extraction

```bash
# Single device connected
./scripts/extract_adb.sh /data/dumps/my_device/

# Multiple devices — specify serial number
adb devices                          # list connected devices
./scripts/extract_adb.sh SERIAL123 /data/dumps/my_device/
```

### What it does
1. Verifies ADB connectivity (`adb get-state`)
2. Collects device metadata (fingerprint, model, brand, SDK version)
3. Pulls four partitions via `adb pull`:
   - `/system/framework/` — core framework JARs
   - `/system_ext/framework/` — extended framework (Android 11+)
   - `/vendor/` — vendor partition
   - `/product/` — product partition
4. Writes `device_info.txt`

### Expected output
```
[adb-extract] Device: samsung/a22xnsxx/a22x:13/TP1A.220624.014/...
[adb-extract] Pulling /system/framework/ ...
[adb-extract] Pulling /system_ext/framework/ ...
[adb-extract] Pulling /vendor/ ...
[adb-extract] Pulling /product/ ...
[adb-extract] Done — output in /data/dumps/my_device/
```

### Common issues

| Problem | Solution |
|---------|----------|
| `error: no devices/emulators found` | Check USB cable, enable USB Debugging, approve prompt on phone |
| `error: insufficient permissions` | Run `adb kill-server && sudo adb start-server` |
| `adb: error: remote object '/vendor/' does not exist` | Some devices don't expose `/vendor/` via ADB — this is OK, the pipeline works with `system/` alone |
| Very slow transfer | Use USB 3.0 port; transfer only framework dirs with `--framework-only` if available |

### Minimum viable extraction

If `adb pull` is too slow, you only strictly need:
```bash
adb pull /system/framework/ /data/dumps/my_device/system/framework/
adb pull /system_ext/framework/ /data/dumps/my_device/system_ext/framework/
```
The pipeline's Step 1 scans for `.jar` and `.dex` files recursively, so as long as
the framework directories are present, it will work.

---

## Mode B: Android Dumps Archive

[Android Dumps](https://gitlab.com/AdrianDC/AdrianDC/-/tree/main/dumps) is a community
project that publishes pre-extracted Android firmware images on GitLab.

### Obtaining a dump

```bash
# Clone a specific device dump (e.g., Samsung Galaxy A22 5G)
git clone https://gitlab.com/Android-Dumps/samsung/a22x.git

# Or download a tar.gz archive
wget https://example.com/samsung_a22x.tar.gz
```

### Running the extraction

```bash
# From a tar.gz archive
./scripts/extract_android_dumps.sh /path/to/samsung_a22x.tar.gz /data/dumps/a22x/

# Framework-only mode (faster — extracts only framework JARs, ~50-200MB)
./scripts/extract_android_dumps.sh --framework-only /path/to/samsung_a22x.tar.gz /data/dumps/a22x/

# From an already-extracted directory (e.g., git clone)
./scripts/extract_android_dumps.sh /path/to/a22x/ /data/dumps/a22x/
```

### What it does
1. If input is a `.tar.gz`, extracts it (stripping the top-level directory)
2. Handles the **double system path** layout: Android Dumps archives store files
   under `system/system/framework/` instead of `system/framework/`. The script
   detects this and normalizes the layout.
3. Extracts device metadata from `system/build.prop` or `vendor/build.prop`
4. Writes `device_info.txt`

### The double system path

Android Dumps archives reflect the raw partition layout where `/system` is the
mount point and the actual files are under a nested `system/` subdirectory:

```
archive/
└── system/
    └── system/              ← this is what gets mounted as /system/
        └── framework/
            ├── services.jar
            ├── framework.jar
            └── ...
```

The extraction script flattens this to:
```
output/
└── system/
    └── framework/
        ├── services.jar
        └── ...
```

**If you extract manually**, make sure to flatten this path or the pipeline won't
find the JARs.

### Framework-only mode

Full Android Dumps archives can be 4-8GB. If you only need to run the pipeline
(not inspect APKs), use `--framework-only`:

```bash
./scripts/extract_android_dumps.sh --framework-only archive.tar.gz output/
```

This extracts only `*/framework/*.jar`, `*/framework/*.dex`, and `build.prop` files —
typically 50-200MB, much faster to download and extract.

### Common issues

| Problem | Solution |
|---------|----------|
| No JARs found after extraction | Check for double `system/system/` path — flatten manually if needed |
| `build.prop` not found | Look in `system/system/build.prop` or `vendor/build.prop` |
| Archive very large (>10GB) | Use `--framework-only` flag |
| GitLab LFS bandwidth limit | Download the tar.gz directly instead of `git clone` |

---

## Mode C: MIUI Firmware Zip

MIUI firmware images are distributed as `.zip` or `.tgz` files containing compressed
partition images. These require additional tools to extract.

### Prerequisites (installed by `setup.sh`)
- `payload_dumper` — extracts `payload.bin` (OTA format)
- `sdat2img` — converts `system.new.dat` (legacy format)
- `erofs-utils` / `e2fsprogs` — mounts EROFS/EXT4 filesystem images
- `sudo` access — required for mounting filesystem images

### Obtaining MIUI firmware
- Official: [MIUI ROM download page](https://xiaomirom.com/)
- Community: [XiaomiFirmwareUpdater](https://xiaomifirmwareupdater.com/)

### Running the extraction

```bash
./scripts/extract_miui.sh /path/to/miui_DEVICE_V14.0.1.0.zip /data/dumps/miui_device/
```

**Note:** This script requires `sudo` for mounting extracted filesystem images.

### What it does
1. Identifies the firmware format:
   - **payload.bin** (modern OTA) → runs `payload_dumper`
   - **system.new.dat** + **system.transfer.list** (legacy) → runs `sdat2img`
   - **super.img** (dynamic partitions) → runs `lpunpack` then mounts
2. Extracts partition images (system, vendor, product, system_ext)
3. Mounts each image (EROFS or EXT4) to a temporary directory
4. Copies framework files to the output directory
5. Unmounts and cleans up
6. Normalizes the double `system/system/` path if present
7. Extracts device metadata from `build.prop`

### MIUI firmware formats

| Format | Introduced | Identification | Tool |
|--------|-----------|----------------|------|
| `payload.bin` | Android 8+ | File inside the zip | `payload_dumper` |
| `system.new.dat` + `.transfer.list` | Android 5-7 | Files inside the zip | `sdat2img` |
| `super.img` | Android 10+ (dynamic) | File inside the zip | `lpunpack` |
| Raw `.img` files | Varies | `system.img` directly in zip | Mount directly |

### Expected output
```
[miui-extract] Detected format: payload.bin (OTA)
[miui-extract] Running payload_dumper...
[miui-extract] Extracted: system.img, vendor.img, product.img
[miui-extract] Mounting system.img (erofs)...
[miui-extract] Copying framework files...
[miui-extract] Mounting vendor.img (ext4)...
[miui-extract] Unmounting and cleaning up...
[miui-extract] Done — output in /data/dumps/miui_device/
```

### Common issues

| Problem | Solution |
|---------|----------|
| `mount: unknown filesystem type 'erofs'` | Install `erofs-utils`: `sudo apt install erofs-utils` (or build from source via `setup.sh`) |
| `sudo: a password is required` | The script needs sudo for mounting. Run with a user that has sudo access |
| `payload_dumper` fails | Ensure Python 3.8+ and `protobuf` package are installed |
| Very slow extraction | MIUI images can be 3-6GB. Ensure sufficient disk space (2x the zip size) |
| Corrupt zip | Re-download; verify MD5 hash if provided by the source |

---

## Verifying Your Extraction

After extraction, verify the output before running the pipeline:

```bash
# Check that framework JARs exist
find /data/dumps/my_device/ -name "*.jar" -path "*/framework/*" | wc -l
# Expected: 50-200+ JARs depending on the OEM

# Check key JARs are present
ls /data/dumps/my_device/system/framework/services.jar
ls /data/dumps/my_device/system/framework/framework.jar

# Check device info
cat /data/dumps/my_device/device_info.txt

# Verify Android version is 12+ (SDK 31+)
grep -i "sdk" /data/dumps/my_device/device_info.txt
# or
grep "ro.build.version.sdk" /data/dumps/my_device/*/build.prop
```

### Minimum requirements for the pipeline

The pipeline needs at minimum:
- `system/framework/services.jar` — this is where most privilege deviations live
- `system/framework/framework.jar` — core Android framework
- At least one `build.prop` file — for device identification

Additional JARs (in `system_ext/`, `vendor/`, `product/`) provide more coverage
but are not strictly required.

---

## Quick Reference

```bash
# Mode A: ADB
./scripts/extract_adb.sh /data/dumps/device/

# Mode B: Android Dumps
./scripts/extract_android_dumps.sh archive.tar.gz /data/dumps/device/
./scripts/extract_android_dumps.sh --framework-only archive.tar.gz /data/dumps/device/

# Mode C: MIUI
./scripts/extract_miui.sh firmware.zip /data/dumps/device/

# Then run the pipeline on any of the above
cd scripts/pipeline/
./run_pipeline.sh /data/dumps/device/ /tmp/work/ vendor_name
```
