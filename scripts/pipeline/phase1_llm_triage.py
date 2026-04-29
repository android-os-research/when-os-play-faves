#!/usr/bin/env python3
"""
LLM Package Triage Pipeline
============================
Reads step6 per-package propagation .txt files and classifies each one
using a local Ollama model.

Two value types are handled, auto-detected from the string itself:

  1. PACKAGE NAME  — e.g. com.miui.analytics, com.facebook.appmanager
       Skipped: android.* (Camera2/HAL keys, intent namespaces)
                com.android.* and com.google.android.* (AOSP/GMS framework)
                Segments with camelCase (lowerUpper) → field names, not packages
                Exception: packages containing .cts. are always kept
                (CTS test-aware behaviour findings)
       Kept:    any third-party, OEM, or ambiguous package

  2. SYSTEM PROPERTY — strings starting with "ro." or "persist."
       e.g. ro.miui.ui_version, persist.sys.miui_region
       These appear because OEM smali code has const-string "ro.xxx" that
       then flows into SystemProperties.get() or is compared for gating.

All other string types (framework class names, paths, etc.) are pre-filtered
without sending to the LLM.

Usage:
    python3 llm_triage.py /data/work/vivo/step6_propagation/per_package/
    python3 llm_triage.py ./per_package/ --model dolphin3-r1
    python3 llm_triage.py ./per_package/ --workers 2 --output triage.json
    python3 llm_triage.py ./per_package/ --min-priority MEDIUM
    python3 llm_triage.py ./per_package/ --dry-run
"""

import argparse
import hashlib
import json
import os
import re
import sys
import tempfile
import threading
import time
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path


# ─────────────────────────────────────────────────────────────────────────────
# Value-type detection
# ─────────────────────────────────────────────────────────────────────────────

def detect_value_type(pkg_name: str) -> str:
    """
    Classify the hardcoded string into one of three categories:
      'ro_property'      — starts with ro.
      'persist_property' — starts with persist.
      'package_name'     — looks like a reverse-DNS Android package name
      'skip'             — everything else (framework class, path, etc.)
    """
    if pkg_name.startswith("ro.") or pkg_name.startswith("persist."):
        return "skip"  # system properties excluded — package names only
 
    # Must look like a real package: all-lowercase segments, no CamelCase classes
    parts = pkg_name.split(".")
    if len(parts) < 2:
        return "skip"
    for seg in parts:
        # CamelCase or fully-uppercase segment → this is a class name, not a package
        if seg and seg[0].isupper():
            return "skip"
 
    # Detect camelCase segments: real package names are all-lowercase.
    # e.g. "focusDistance", "aeMode", "availableThumbnailSizes" are field names.
    if any(re.search(r'[a-z][A-Z]', seg) for seg in parts):
        return "skip"
 
    return "package_name"


# ─────────────────────────────────────────────────────────────────────────────
# Pre-filter: what to skip without calling the LLM
# ─────────────────────────────────────────────────────────────────────────────

# AOSP and core GMS framework — these are privileged by design.
# Only these two prefixes are skipped for package names; everything else
# (com.miui.*, com.qti.*, com.facebook.*, unknown OEM packages) goes to the LLM.
SKIP_PACKAGE_PREFIXES = [
    "android.",           # Camera2 keys, intent actions, bare android.* namespace
    "com.android.",
    "com.google.android.",
    "dalvik.",            # ART/Dalvik VM config keys (not package names)
    "debug.",             # debug.* system properties
    "sys.",               # sys.* system properties
    "vendor.",            # vendor.* system properties
    "log.",               # log.* system properties
    "java.",              # Java runtime system properties (java.class.path, java.vm.*)
    "org.apache.",        # Apache Commons / framework config keys
    "org.xml.",           # XML framework
    "org.json.",          # JSON framework
    "org.w3c.",           # W3C DOM framework
    "junit.",             # JUnit test framework
]

# ro./persist. properties that are purely informational — version strings,
# build metadata — not security gates.
SKIP_PROPERTY_SUFFIXES = [
    ".version.release",     # ro.build.version.release
    ".build.date",
    ".build.date.utc",
    ".build.host",
    ".build.user",
    ".build.tags",
    ".build.type",
    ".build.flavor",
    ".build.id",
    ".product.cpu.abi",
    ".product.cpu.abilist",
]

SKIP_PROPERTY_EXACT = {
    "ro.debuggable",             # informational, widely expected
    "ro.secure",                 # expected security baseline flag
    "ro.build.version.sdk",      # just an SDK check, expected
    "ro.build.version.release",
}

# Benign OEM feature keywords — UI/cosmetic features, no security surface
BENIGN_FEATURE_KEYWORDS = [
    "theme", "wallpaper", "font", "keyboard", "flashlight", "torch",
    "screensaver", "daydream", "ringtone", "emoji", "sticker",
    "fmradio", ".fm.", "calculator", "compass", "weather",
    "printservice", "screencapture",
]


def should_skip(pkg_name: str, value_type: str) -> str | None:
    """
    Return a skip reason string if this value should not be sent to the LLM,
    or None if it should be processed.
    """
    if value_type == "skip":
        return "not_a_target_type"
 
    name_lower = pkg_name.lower()
 
    if value_type == "package_name":
        # CTS packages are always kept regardless of prefix —
        # hardcoded .cts. references indicate test-aware / CTS-bypass behaviour.
        # if ".cts." in pkg_name:
        #     return None
 
        # Skip AOSP / core GMS framework packages
        for prefix in SKIP_PACKAGE_PREFIXES:
            if pkg_name.startswith(prefix):
                return f"aosp_or_gms:{prefix}"
        # Skip obviously benign UI/cosmetic OEM features
        for kw in BENIGN_FEATURE_KEYWORDS:
            if kw in name_lower:
                return f"benign_feature:{kw}"
        return None
 
 
    return None

# ─────────────────────────────────────────────────────────────────────────────
# Parse propagation .txt files
# ─────────────────────────────────────────────────────────────────────────────

def extract_summary(filepath: str) -> dict:
    """
    Parse a step6 per-package propagation .txt and return a compact
    security-relevant summary dict.
    """
    with open(filepath, "r", errors="replace") as f:
        text = f.read()

    summary = {"file": os.path.basename(filepath), "package": ""}

    # Header block (before first Occurrence)
    header_match = re.split(r"─+ *\nOccurrence #1", text, maxsplit=1)
    header = header_match[0] if header_match else text[:500]

    for line in header.split("\n"):
        line = line.strip()
        if line.startswith("# Propagation:"):
            summary["package"] = line.replace("# Propagation:", "").strip()
        elif ":" in line and not line.startswith("#"):
            key, _, val = line.partition(":")
            key = key.strip().lower().replace(" ", "_")
            val = val.strip()
            if key in ("jars", "classes", "occurrences", "usage_types",
                       "enforcement_patterns", "security_tags"):
                summary[key] = val

    # Compact occurrence list
    occurrences = re.split(r"─+\nOccurrence #(\d+)\n─+", text)
    compact_occurrences = []
    i = 1
    while i < len(occurrences) - 1:
        occ_num  = occurrences[i]
        occ_body = occurrences[i + 1]
        i += 2

        occ = {"n": int(occ_num)}
        for line in occ_body.split("\n"):
            line = line.strip()
            if line.startswith("JAR:"):
                occ["jar"] = line.split(":", 1)[1].strip()
            elif line.startswith("Class:"):
                occ["class"] = line.split(":", 1)[1].strip()
            elif line.startswith("Method:"):
                occ["method"] = line.split(":", 1)[1].strip()
            elif line.startswith("Patterns:"):
                occ["patterns"] = line.split(":", 1)[1].strip()
            elif line.startswith("Flow:"):
                occ["flow"] = line.split(":", 1)[1].strip()[:300]
            elif line.startswith("Usage:"):
                occ["usage"] = line.split(":", 1)[1].strip()[:200]

        # Direct callers (depth 1 only)
        caller_section = re.search(
            r"CALLERS \(who invokes this method\):\n(.*?)(?:\n\n|\n  CALLEES|\Z)",
            occ_body, re.DOTALL)
        if caller_section:
            direct_callers = [
                cl.strip()[2:].strip()
                for cl in caller_section.group(1).split("\n")
                if cl.strip().startswith("← ") and not cl.startswith("  ")
            ]
            if direct_callers:
                occ["callers"] = direct_callers[:10]

        # Security-tagged callees only
        callee_section = re.search(
            r"CALLEES \(what this method invokes\):\n(.*?)(?:\n\n────|\Z)",
            occ_body, re.DOTALL)
        if callee_section:
            security_keywords = [
                "Permission", "permission", "grant", "Grant", "checkCalling",
                "enforce", "AppOps", "appops", "setMode", "DeviceId",
                "getImei", "getSerial", "Binder.getCalling", "startService",
                "sendBroadcast", "startActivity", "PackageManager",
                "setComponentEnabled", "killUid", "forceStop", "SecurityException",
                "Telephony", "Location", "Camera", "Microphone", "Contacts",
                "SystemProperties",
            ]
            tagged, direct = [], []
            for cl in callee_section.group(1).split("\n"):
                cl = cl.strip()
                if not cl:
                    continue
                if cl.startswith("→ "):
                    direct.append(cl[2:].strip())
                if "[" in cl and "]" in cl:
                    tagged.append(cl.lstrip("→ ").strip())

            security_callees = tagged[:]
            for dc in direct:
                if any(kw in dc for kw in security_keywords) and dc not in security_callees:
                    security_callees.append(dc)
            if security_callees:
                occ["security_callees"] = security_callees[:15]
            if direct:
                occ["direct_callees_count"] = len(direct)

        compact_occurrences.append(occ)

    summary["occurrences"]      = compact_occurrences
    summary["occurrence_count"] = len(compact_occurrences)
    return summary


def summary_to_prompt_text(summary: dict) -> str:
    lines = [
        f"Value:                {summary.get('package', 'unknown')}",
        f"JARs:                 {summary.get('jars', 'N/A')}",
        f"Total occurrences:    {summary.get('occurrence_count', 'N/A')}",
        f"Enforcement patterns: {summary.get('enforcement_patterns', 'none')}",
        f"Security tags:        {summary.get('security_tags', 'none')}",
        "",
    ]
    for occ in summary.get("occurrences", [])[:25]:
        lines.append(f"--- Occurrence #{occ.get('n', '?')} ---")
        for field in ("jar", "class", "method", "patterns", "flow", "usage"):
            if field in occ:
                lines.append(f"  {field.capitalize()}: {occ[field]}")
        if "callers" in occ:
            lines.append(f"  Direct callers: {', '.join(occ['callers'][:5])}")
        if "security_callees" in occ:
            lines.append(f"  Security-relevant callees: {', '.join(occ['security_callees'][:8])}")
        lines.append("")
    return "\n".join(lines)


# ─────────────────────────────────────────────────────────────────────────────
# LLM prompts — one per value type
# ─────────────────────────────────────────────────────────────────────────────

_SCHEMA = """{
  "priority": "HIGH|MEDIUM|LOW|SKIP",
  "category": "privilege_escalation|enforcement_bypass|permission_grant|tracking|data_exfiltration|differential_treatment|benign_oem_feature|unknown",
  "confidence": 0.0-1.0,
  "key_findings": ["string", ...],
  "what_to_check": "one sentence",
  "reasoning": "2-3 sentences"
}"""

SYSTEM_PROMPT_PACKAGE = f"""You are an Android security researcher analysing how third-party \
package names are hardcoded into OEM Android framework JARs.

Return ONLY a JSON object matching this schema:
{_SCHEMA}

Priority rules for PACKAGE NAMES:
- HIGH:   permission grant/revoke, AppOps setMode(ALLOW), enforcement early_return,
          security check bypass, or device-ID/IMEI flowing outward for this package
- MEDIUM: package appears in an allowlist or receives differential treatment
          whose security impact is unclear
- LOW:    analytics routing, crash-reporting, feature-flag gating, UI customisation only
- SKIP:   expected OEM system component with no privilege implication

Key signals:
  grantRuntimePermission / setMode(ALLOWED) → silent permission grant (HIGH)
  AppOpsManagerInjector.add / ZygoteConfig special-case → process privilege (HIGH)
  early_return after pkg check → enforcement bypass (HIGH)
  allowlist_check without clear enforcement consequence → MEDIUM
  getDeviceId / getImei flowing to this package's code path → HIGH"""

SYSTEM_PROMPT_PROPERTY = f"""You are an Android security researcher analysing how \
ro.* and persist.* system property keys are hardcoded into OEM Android framework JARs.

These strings appear as const-string values in smali that are then read via \
SystemProperties.get() or compared directly to branch on device configuration, \
region, feature flags, or security policy.

Return ONLY a JSON object matching this schema:
{_SCHEMA}

Priority rules for SYSTEM PROPERTIES:
- HIGH:   property value gates a security enforcement decision — e.g. skipping a
          permission check, enabling root access, unlocking hidden APIs, or disabling
          SELinux/signature verification based on the property value
- MEDIUM: property controls a feature that has indirect security implications —
          e.g. network policy, data-sharing toggle, debug mode, or region-based
          exemptions from standard Android policy
- LOW:    property used only for UI/UX decisions, branding, or capability detection
          with no security consequence
- SKIP:   purely informational read (logging, telemetry) with no branching on result

Key signals:
  property value compared in if-branch that leads to early_return → HIGH
  property used to decide whether to call grantPermission / setMode → HIGH
  ro.debuggable / ro.secure used to gate privileged behaviour → HIGH
  persist.sys.* controlling network or data policy → MEDIUM
  ro.miui.region / ro.product.locale gating feature availability → MEDIUM"""


def get_system_prompt(value_type: str) -> str:
    if value_type in ("ro_property", "persist_property"):
        return SYSTEM_PROMPT_PROPERTY
    return SYSTEM_PROMPT_PACKAGE


# ─────────────────────────────────────────────────────────────────────────────
# Ollama client
# ─────────────────────────────────────────────────────────────────────────────

def check_ollama(host: str, model: str) -> tuple[bool, str]:
    import urllib.request, urllib.error
    try:
        with urllib.request.urlopen(f"{host}/api/tags", timeout=10) as resp:
            data  = json.loads(resp.read().decode())
            avail = [m.get("name", "") for m in data.get("models", [])]
    except urllib.error.URLError as e:
        return False, f"Cannot connect to Ollama at {host}: {e.reason}"
    except Exception as e:
        return False, f"Ollama connection error: {e}"

    found = any(model in m or m.startswith(model) for m in avail)
    if not found:
        return False, f"Model '{model}' not found. Available: {', '.join(avail)}"
    return True, f"OK — model '{model}' available"


def call_ollama(model: str, system_prompt: str, summary_text: str,
                host: str = "http://localhost:11434",
                json_mode: bool = True) -> dict:
    import urllib.request, urllib.error

    payload = {
        "model": model,
        "messages": [
            {"role": "system",  "content": system_prompt},
            {"role": "user",    "content":
                f"Analyse this propagation and return ONLY a JSON object:\n\n{summary_text}"},
        ],
        "stream": False,
        "options": {"temperature": 0.1, "num_predict": 2048},
    }
    if json_mode:
        payload["format"] = "json"

    body = json.dumps(payload).encode()
    try:
        req = urllib.request.Request(
            f"{host}/api/chat", data=body, method="POST",
            headers={"Content-Type": "application/json"})
        with urllib.request.urlopen(req, timeout=720) as resp:
            raw = resp.read().decode()
    except urllib.error.HTTPError as e:
        detail = ""
        try: detail = e.read().decode()[:500]
        except Exception: pass
        return {"error": f"HTTP {e.code} {e.reason}", "detail": detail}
    except urllib.error.URLError as e:
        return {"error": f"Connection failed: {e.reason}"}
    except TimeoutError:
        return {"error": "Timeout (720s)"}
    except Exception as e:
        return {"error": f"{type(e).__name__}: {e}"}

    try:
        response = json.loads(raw)
    except json.JSONDecodeError as e:
        return {"error": f"Invalid JSON from Ollama: {e}", "raw_response": raw[:500]}

    if "error" in response:
        return {"error": f"Ollama: {response['error']}"}

    content = response.get("message", {}).get("content", "")
    if not content:
        return {"error": "Empty content from Ollama", "raw_response": str(response)[:500]}

    # Strip markdown fences
    cleaned = content.strip()
    if cleaned.startswith("```"):
        cleaned = re.sub(r"^```(?:json)?\s*", "", cleaned)
        cleaned = re.sub(r"\s*```\s*$", "", cleaned)

    try:
        return json.loads(cleaned)
    except json.JSONDecodeError:
        pass

    # Brace-counting extractor
    start = content.find("{")
    if start != -1:
        depth, in_str, escape = 0, False, False
        for i in range(start, len(content)):
            ch = content[i]
            if escape:              escape = False;  continue
            if ch == "\\" and in_str: escape = True; continue
            if ch == '"':           in_str = not in_str; continue
            if in_str:              continue
            if ch in "{[":          depth += 1
            elif ch in "}]":        depth -= 1
            if depth == 0 and ch == "}":
                try:    return json.loads(content[start:i+1])
                except json.JSONDecodeError as e:
                    return {"error": f"JSON block parse failed: {e}",
                            "raw_response": content[start:i+1][:500]}

    return {"error": "Model did not return valid JSON",
            "raw_response": content[:800]}



# ─────────────────────────────────────────────────────────────────────────────
# Global hash cache — deduplicates LLM calls across devices
# ─────────────────────────────────────────────────────────────────────────────

# Fields kept in the cache (LLM classification only — not file/package, which
# are per-occurrence and get merged back at call sites).
_CACHE_LLM_FIELDS = (
    "priority", "category", "confidence",
    "key_findings", "what_to_check", "reasoning",
)

class HashCache:
    """
    Thread-safe on-disk cache mapping content_hash → LLM result.

    The cache is a flat JSON dict: { sha1_hex: { ...llm_fields..., "hits": N } }
    Writes are atomic (write to tmp, then os.replace) to survive interruptions.
    """

    def __init__(self, path: str | None):
        self.path  = path
        self._lock = threading.Lock()
        self._data: dict[str, dict] = {}
        if path and os.path.isfile(path):
            try:
                self._data = json.loads(Path(path).read_text())
                print(f"  Hash cache loaded: {len(self._data):,} entries ({path})",
                      file=sys.stderr)
            except Exception as e:
                print(f"  ⚠ Could not load hash cache: {e}", file=sys.stderr)

    def get(self, h: str) -> dict | None:
        with self._lock:
            return self._data.get(h)

    def put(self, h: str, result: dict) -> None:
        """Store only the LLM classification fields + hit counter."""
        entry = {k: result[k] for k in _CACHE_LLM_FIELDS if k in result}
        entry["hits"] = 1
        with self._lock:
            self._data[h] = entry
            self._save_locked()

    def increment_hits(self, h: str) -> None:
        with self._lock:
            if h in self._data:
                self._data[h]["hits"] = self._data[h].get("hits", 1) + 1
                self._save_locked()

    def _save_locked(self) -> None:
        """Write atomically — caller must hold self._lock."""
        if not self.path:
            return
        try:
            tmp = self.path + ".tmp"
            Path(tmp).write_text(json.dumps(self._data, indent=2))
            os.replace(tmp, self.path)
        except Exception as e:
            print(f"  ⚠ Cache save failed: {e}", file=sys.stderr)

    @property
    def size(self) -> int:
        with self._lock:
            return len(self._data)


# Singleton — initialised in main() once --hash-cache path is known
_cache: HashCache = HashCache(None)

# ─────────────────────────────────────────────────────────────────────────────
# Per-file pipeline
# ─────────────────────────────────────────────────────────────────────────────

PRIORITY_ORDER = {"HIGH": 0, "MEDIUM": 1, "LOW": 2, "SKIP": 3, "ERROR": 4}


def _file_hash(filepath: str) -> str:
    return hashlib.sha1(Path(filepath).read_bytes()).hexdigest()


def process_one(filepath: str, model: str, host: str,
                json_mode: bool = True) -> dict:
    basename  = os.path.basename(filepath)
    pkg_name  = basename.replace(".txt", "").replace("_", ".")

    value_type  = detect_value_type(pkg_name)
    skip_reason = should_skip(pkg_name, value_type)

    if skip_reason:
        return {
            "package":    pkg_name,
            "file":       basename,
            "value_type": value_type,
            "priority":   "SKIP",
            "category":   "pre_filtered",
            "skip_reason": skip_reason,
            "confidence": 1.0,
            "key_findings": [],
            "reasoning":  f"Pre-filtered: {skip_reason}",
        }

    # ── Hash-cache lookup — skip LLM if we've seen identical content before ──
    content_hash = _file_hash(filepath)
    cached = _cache.get(content_hash)
    if cached:
        _cache.increment_hits(content_hash)
        result = dict(cached)          # shallow copy — don't mutate cache entry
        result["package"]      = pkg_name
        result["file"]         = basename
        result["value_type"]   = value_type
        result["cache_hit"]    = True
        result["content_hash"] = content_hash
        return result

    try:
        summary = extract_summary(filepath)
    except Exception as e:
        return {"package": pkg_name, "file": basename,
                "value_type": value_type, "priority": "ERROR",
                "error": f"extract failed: {e}"}

    prompt_text   = summary_to_prompt_text(summary)
    system_prompt = get_system_prompt(value_type)
    llm_result    = call_ollama(model, system_prompt, prompt_text,
                                host, json_mode=json_mode)

    if "error" in llm_result:
        return {"package": pkg_name, "file": basename,
                "value_type": value_type, "priority": "ERROR",
                "error":        llm_result["error"],
                "detail":       llm_result.get("detail", ""),
                "raw_response": llm_result.get("raw_response", "")}

    llm_result["package"]              = pkg_name
    llm_result["file"]                 = basename
    llm_result["value_type"]           = value_type
    llm_result["occurrence_count"]     = summary.get("occurrence_count", 0)
    llm_result["enforcement_patterns"] = summary.get("enforcement_patterns", "")
    llm_result["security_tags"]        = summary.get("security_tags", "")
    llm_result["cache_hit"]            = False
    llm_result["content_hash"]         = content_hash

    # Write to cache so future devices skip this LLM call
    _cache.put(content_hash, llm_result)
    return llm_result


# ─────────────────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────────────────

def main():
    ap = argparse.ArgumentParser(description="LLM-powered triage of package names and ro./persist. properties")
    ap.add_argument("inputs", nargs="+",
                    help="step6 per-package .txt files or directories containing them")
    ap.add_argument("--model",        default="dolphin3-r1")
    ap.add_argument("--host",         default="http://localhost:11434")
    ap.add_argument("--workers",      type=int, default=1)
    ap.add_argument("--output",       default="llm_triage_results.json")
    ap.add_argument("--min-priority", default="SKIP",
                    choices=["HIGH", "MEDIUM", "LOW", "SKIP"])
    ap.add_argument("--dry-run",      action="store_true")
    ap.add_argument("--resume",       action="store_true")
    ap.add_argument("--verbose", "-v", action="store_true")
    ap.add_argument("--no-json-mode", action="store_true")
    ap.add_argument(
        "--hash-cache", default=None, metavar="PATH",
        help="Shared JSON cache mapping content_hash -> LLM result. "
             "Persists across devices — saves ~65%% of LLM calls. "
             "Created on first run, reused on all subsequent runs.")
    ap.add_argument(
        "--confirmed-packages", default=None, metavar="PATH",
        help="Path to a text file with one package name per line. "
             "Only files whose package name appears in this list will be triaged; "
             "all others are silently skipped.")
    args = ap.parse_args()

    # Gather files
    files = []
    for inp in args.inputs:
        if os.path.isdir(inp):
            files.extend(sorted(
                str(p) for p in Path(inp).iterdir() if p.suffix == ".txt"))
        elif os.path.isfile(inp):
            files.append(inp)
        else:
            print(f"⚠  Not found: {inp}", file=sys.stderr)

    if not files:
        print("No .txt files found.", file=sys.stderr)
        sys.exit(1)

    # ── Confirmed-packages filter ──────────────────────────────────────────
    if args.confirmed_packages:
        try:
            with open(args.confirmed_packages) as cf:
                confirmed = {
                    line.strip() for line in cf
                    if line.strip() and not line.startswith("#")
                }
        except OSError as e:
            print(f"✗ Cannot read --confirmed-packages file: {e}", file=sys.stderr)
            sys.exit(1)
        files = [
            fp for fp in files
            if os.path.basename(fp).replace(".txt", "").replace("_", ".") in confirmed
        ]
        print(f"  Confirmed filter: {len(confirmed)} packages → {len(files)} files matched",
              file=sys.stderr)
        if not files:
            print("  No files match the confirmed-packages list.", file=sys.stderr)
            sys.exit(1)

    print(f"\n{'='*70}", file=sys.stderr)
    print(f"  LLM Triage  |  model={args.model}  files={len(files)}  workers={args.workers}",
          file=sys.stderr)
    print(f"{'='*70}\n", file=sys.stderr)

    # ── Initialise global hash cache ───────────────────────────────────
    global _cache
    _cache = HashCache(args.hash_cache)
    if args.hash_cache:
        print(f'  Hash cache : {args.hash_cache}  ({_cache.size:,} entries)', file=sys.stderr)

    # ── Dry-run ────────────────────────────────────────────────────────────
    if args.dry_run:
        buckets: dict[str, dict[str, int]] = {
            "package_name": {"send": 0, "skip": 0},
            "ro_property":  {"send": 0, "skip": 0},
            "persist_property": {"send": 0, "skip": 0},
            "skip": {"send": 0, "skip": 0},
        }
        skip_reasons: dict[str, int] = {}
        will_send: list[str] = []

        for fp in files:
            pkg = os.path.basename(fp).replace(".txt", "").replace("_", ".")
            vt  = detect_value_type(pkg)
            sr  = should_skip(pkg, vt)
            if sr:
                buckets[vt]["skip"] += 1
                rtype = sr.split(":")[0]
                skip_reasons[rtype] = skip_reasons.get(rtype, 0) + 1
            else:
                buckets[vt]["send"] += 1
                if len(will_send) < 30:
                    will_send.append(f"[{vt}] {pkg}")

        total_send = sum(v["send"] for v in buckets.values())
        total_skip = sum(v["skip"] for v in buckets.values())

        print(f"  {'Type':<20}  {'Send':>6}  {'Skip':>6}")
        print(f"  {'-'*34}")
        for vt, counts in buckets.items():
            if counts["send"] + counts["skip"]:
                print(f"  {vt:<20}  {counts['send']:>6}  {counts['skip']:>6}")
        print(f"  {'-'*34}")
        print(f"  {'TOTAL':<20}  {total_send:>6}  {total_skip:>6}")
        print(f"\n  Skip breakdown:")
        for reason, count in sorted(skip_reasons.items(), key=lambda x: -x[1]):
            print(f"    {reason:<35}  {count:>5}")
        print(f"\n  First {len(will_send)} items that would be sent to LLM:")
        for item in will_send:
            print(f"    {item}")
        if total_send > 30:
            print(f"    ... and {total_send - 30} more")
        est = (total_send * 8) / 60
        print(f"\n  Estimated time: ~{est:.0f} min at ~8s/item ({args.model})")
        sys.exit(0)

    # ── Preflight ──────────────────────────────────────────────────────────
    print("  Preflight...", end=" ", file=sys.stderr, flush=True)
    ok, msg = check_ollama(args.host, args.model)
    if not ok:
        print("FAILED", file=sys.stderr)
        print(f"  ✗ {msg}", file=sys.stderr)
        print(f"    → ollama serve", file=sys.stderr)
        print(f"    → ollama pull {args.model}", file=sys.stderr)
        sys.exit(1)
    print("OK", file=sys.stderr)

    # ── Resume ─────────────────────────────────────────────────────────────
    already_done, prior_results = set(), []
    if args.resume and os.path.isfile(args.output):
        try:
            with open(args.output) as f:
                prior_results = json.load(f)
            already_done = {r.get("file", "") for r in prior_results
                            if r.get("priority") != "ERROR"}
            print(f"  Resume: {len(already_done)} done, "
                  f"{len(files)-len(already_done)} remaining", file=sys.stderr)
        except Exception as e:
            print(f"  ⚠ Could not load prior results: {e}", file=sys.stderr)

    # ── Process ────────────────────────────────────────────────────────────
    results             = list(prior_results)
    errors              = 0
    consecutive_errors  = 0
    skipped             = 0
    processed           = 0
    cache_hits          = 0
    start_time          = time.time()
    MAX_CONSECUTIVE     = 5

    def _process_and_report(fp: str, idx: int, total: int) -> dict:
        basename = os.path.basename(fp)
        pkg      = basename.replace(".txt", "").replace("_", ".")
        vt       = detect_value_type(pkg)
        label    = f"[{vt[:3]}]" if vt != "package_name" else "     "
        print(f"  [{idx}/{total}] {label} {pkg}...",
              end=" ", file=sys.stderr, flush=True)
        return process_one(fp, args.model, args.host,
                           json_mode=not args.no_json_mode)

    if args.workers <= 1:
        for i, fp in enumerate(files, 1):
            if os.path.basename(fp) in already_done:
                continue
            result   = _process_and_report(fp, i, len(files))
            priority = result.get("priority", "ERROR")

            if priority == "ERROR":
                errors += 1
                consecutive_errors += 1
                err = result.get("error", "unknown")
                print(f"ERROR — {err}", file=sys.stderr)
                if args.verbose and result.get("raw_response"):
                    for line in result["raw_response"][:800].split("\n"):
                        print(f"           {line}", file=sys.stderr)
                elif result.get("raw_response"):
                    print(f"           raw: {result['raw_response'][:120]}",
                          file=sys.stderr)
                if consecutive_errors >= MAX_CONSECUTIVE:
                    print(f"\n  ✗ {MAX_CONSECUTIVE} consecutive errors — stopping.",
                          file=sys.stderr)
                    break
            else:
                consecutive_errors = 0
                processed          += 1
                if result.get("cache_hit"):
                    cache_hits += 1
                if result.get("category") == "pre_filtered":
                    skipped += 1
                    print(f"SKIP ({result.get('skip_reason','').split(':')[0]})",
                          file=sys.stderr)
                else:
                    hit_tag = " [cache]" if result.get("cache_hit") else ""
                    print(f"{priority}{hit_tag}", file=sys.stderr)

            results.append(result)
            if len(results) % 50 == 0:
                with open(args.output, "w") as f:
                    json.dump(results, f, indent=2)
                print(f"  [checkpoint: {len(results)} saved]", file=sys.stderr)

    else:
        remaining = [fp for fp in files
                     if os.path.basename(fp) not in already_done]
        with ThreadPoolExecutor(max_workers=args.workers) as ex:
            futures = {
                ex.submit(process_one, fp, args.model, args.host,
                          not args.no_json_mode): fp
                for fp in remaining
            }
            done = 0
            for future in as_completed(futures):
                done    += 1
                fp       = futures[future]
                pkg      = os.path.basename(fp).replace(".txt","").replace("_",".")
                result   = future.result()
                priority = result.get("priority", "ERROR")

                if priority == "ERROR":
                    errors += 1
                    print(f"  [{done}/{len(remaining)}] {pkg} → ERROR: "
                          f"{result.get('error','?')}", file=sys.stderr)
                else:
                    processed += 1
                    if result.get("cache_hit"):
                        cache_hits += 1
                    hit_tag = " [cache]" if result.get("cache_hit") else ""
                    print(f"  [{done}/{len(remaining)}] {pkg} → {priority}{hit_tag}",
                          file=sys.stderr)
                results.append(result)
                if len(results) % 50 == 0:
                    with open(args.output, "w") as f:
                        json.dump(results, f, indent=2)

    elapsed = time.time() - start_time

    # ── Sort and save ──────────────────────────────────────────────────────
    results.sort(key=lambda r: (
        PRIORITY_ORDER.get(r.get("priority", "SKIP"), 99),
        0 if r.get("value_type") == "package_name" else 1,  # packages first
        -r.get("confidence", 0),
    ))
    with open(args.output, "w") as f:
        json.dump(results, f, indent=2)

    # ── Report ─────────────────────────────────────────────────────────────
    min_level = PRIORITY_ORDER.get(args.min_priority, 3)
    print(f"\n{'='*70}")
    print(f"  RESULTS — {len(results)} items  |  {elapsed:.0f}s  |  "
          f"processed={processed}  cache_hits={cache_hits}  "
          f"pre-filtered={skipped}  errors={errors}")
    if args.hash_cache:
        print(f"  Cache size : {_cache.size:,} unique propagations → {args.hash_cache}")
    print(f"{'='*70}\n")

    for plabel in ["HIGH", "MEDIUM", "LOW", "SKIP"]:
        if PRIORITY_ORDER[plabel] > min_level:
            continue
        group = [r for r in results
                 if r.get("priority") == plabel
                 and r.get("category") != "pre_filtered"]
        if not group:
            continue

        print(f"  ── {plabel} ({len(group)}) {'─'*48}")
        for r in group:
            vt       = r.get("value_type", "?")
            pkg      = r.get("package", "?")
            cat      = r.get("category", "?")
            conf     = r.get("confidence", 0)
            findings = r.get("key_findings", [])
            check    = r.get("what_to_check", "")

            print(f"\n    [{vt}]  {pkg}")
            print(f"      Category: {cat}  (confidence {conf:.0%})")
            if r.get("enforcement_patterns"):
                print(f"      Enforcement: {r['enforcement_patterns']}")
            for f_ in findings[:3]:
                print(f"      • {f_}")
            if check:
                print(f"      → {check}")
        print()

    counts: dict[str, int] = {}
    for r in results:
        p = r.get("priority", "ERROR")
        counts[p] = counts.get(p, 0) + 1
    print(f"  Summary: {counts}")
    print(f"  Saved:   {args.output}")


if __name__ == "__main__":
    main()