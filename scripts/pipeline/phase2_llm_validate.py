#!/usr/bin/env python3
"""
claude_hotspot_validator.py
===========================
Second-pass security validator that sits AFTER Dolphin (llm_triage_final.py).

Pipeline
--------
  step6/per_package/*.txt
        │
        ▼
  [Dolphin / llm_triage_final.py]  ──►  triage.json   (cheap local triage)
        │
        ▼  (HIGH + MEDIUM only)
  [THIS SCRIPT]  ──►  claude_validated.json   (confirmed verdicts + evidence)

What this script does
---------------------
1. Reads Dolphin's triage.json and keeps only HIGH / MEDIUM findings.
2. For each hot spot, loads the matching step6 propagation .txt to get the
   full call chain (callers, callees, enforcement patterns, security tags).
3. Optionally loads the actual smali files for the seed class and any
   security-relevant classes in the call chain.
4. Calls Claude (Haiku by default — fast and cheap; swap to Sonnet for depth)
   with all of that evidence to return a confirmed verdict.

Output verdicts
---------------
  CONFIRMED_HIGH        Real privilege escalation / permission bypass / exfil
  CONFIRMED_MEDIUM      Real but limited risk — hidden API whitelist, app-ops
  NEEDS_INVESTIGATION   Suspicious but needs runtime verification
  LIKELY_FP             Binder plumbing, AIDL boilerplate, dead code, test only

Usage
-----
  # Minimal — propagation traces only (fast)
  python3 claude_hotspot_validator.py \\
      --triage     /data/work/oneplus/triage.json \\
      --prop-dir   /data/work/oneplus/step6_propagation/per_package/

  # Deep — also load smali files for the call chain classes
  python3 claude_hotspot_validator.py \\
      --triage     /data/work/oneplus/triage.json \\
      --prop-dir   /data/work/oneplus/step6_propagation/per_package/ \\
      --smali-dir  /data/work/oneplus/smali/ \\
      --model      claude-sonnet-4-6

  # HIGH findings only, resume a previous run
  python3 claude_hotspot_validator.py \\
      --triage     /data/work/oneplus/triage.json \\
      --prop-dir   /data/work/oneplus/step6_propagation/per_package/ \\
      --smali-dir  /data/work/oneplus/smali/ \\
      --min-priority HIGH \\
      --resume

Environment
-----------
  ANTHROPIC_API_KEY   Required — or pass --api-key
"""

from __future__ import annotations

import argparse
import datetime
import hashlib
import json
import os
import re
import sys
import threading
import time
from pathlib import Path
from typing import Optional

# ---------------------------------------------------------------------------
# Rate-limit helpers
# ---------------------------------------------------------------------------

_RL_HEADERS = [
    "anthropic-ratelimit-requests-limit",
    "anthropic-ratelimit-requests-remaining",
    "anthropic-ratelimit-requests-reset",
    "anthropic-ratelimit-tokens-limit",
    "anthropic-ratelimit-tokens-remaining",
    "anthropic-ratelimit-tokens-reset",
    "retry-after",
]


def _extract_rate_limit_headers(headers) -> dict:
    """Extract Anthropic rate-limit headers from a response info object."""
    return {k: headers.get(k) for k in _RL_HEADERS if headers.get(k)}


def _parse_reset_ts(reset_iso: str) -> float:
    """Parse an ISO-8601 reset timestamp (e.g. '2024-01-15T10:30:00Z') → Unix float."""
    try:
        s = reset_iso.strip()
        if s.endswith("Z"):
            s = s[:-1] + "+00:00"
        return datetime.datetime.fromisoformat(s).timestamp()
    except Exception:
        return 0.0


def _wait_until_reset(reset_iso: str, buffer_secs: int = 600) -> None:
    """
    Sleep until the quota reset window has passed.

    Strategy (paid plan):
      - If we are MORE than buffer_secs (10 min) away from the reset, sleep
        until reset_time + buffer_secs so the restored quota has fully settled.
      - If we are already WITHIN buffer_secs of the reset (i.e. the reset is
        imminent or just passed), sleep only the remaining seconds to reset_time
        plus a small fixed tail of buffer_secs.
      - Never sleep less than 5 seconds.
    """
    reset_ts = _parse_reset_ts(reset_iso)
    if reset_ts <= 0:
        return
    now         = time.time()
    secs_to_reset = reset_ts - now          # negative means reset already passed
    # Always continue buffer_secs after the actual reset time
    target      = reset_ts + buffer_secs
    wait        = max(5, target - now)
    reset_local = datetime.datetime.fromtimestamp(reset_ts).strftime("%H:%M:%S")
    resume_local = datetime.datetime.fromtimestamp(now + wait).strftime("%H:%M:%S")
    print(
        f"  [rate_limit] reset at {reset_local}  "
        f"(+{buffer_secs//60} min buffer) → sleeping {wait:.0f}s, "
        f"resuming ~{resume_local} ...",
        flush=True,
    )
    time.sleep(wait)


# ---------------------------------------------------------------------------
# Anthropic client (stdlib only — no SDK required)
# ---------------------------------------------------------------------------

def call_claude(
    api_key: str,
    model: str,
    system: str,
    user_message: str,
    max_tokens: int = 1024,
    temperature: float = 0.0,
    _max_auth_retries: int = 5,
    _auth_retry_wait: int = 300,   # 5 minutes between retries
    _auth_final_wait: int = 600,   # 10 minutes after all retries exhausted
    _max_rate_retries: int = 8,
    _rate_retry_base: int = 60,    # seconds; doubled each attempt (60, 120, 240 …)
) -> dict:
    """Call the Anthropic messages API. Returns the parsed JSON response dict.

    On HTTP 401, retries up to _max_auth_retries times (waiting _auth_retry_wait
    seconds between each attempt). After all retries are exhausted, waits
    _auth_final_wait seconds before returning the error.

    On HTTP 429 (rate limit), retries up to _max_rate_retries times with
    exponential backoff starting at _rate_retry_base seconds.
    """
    import urllib.request
    import urllib.error

    payload = {
        "model": model,
        "max_tokens": max_tokens,
        "temperature": temperature,
        "system": system,
        "messages": [{"role": "user", "content": user_message}],
    }

    body = json.dumps(payload).encode()

    auth_attempts = 0
    rate_attempts = 0

    while True:
        headers = {
            "Content-Type":      "application/json",
            "anthropic-version": "2023-06-01",
        }
        # OAuth tokens (sk-ant-oat01-*) use Bearer auth; standard keys use x-api-key
        if api_key.startswith("sk-ant-oat01-"):
            headers["Authorization"] = f"Bearer {api_key}"
        else:
            headers["x-api-key"] = api_key

        req = urllib.request.Request(
            "https://api.anthropic.com/v1/messages",
            data=body,
            method="POST",
            headers=headers,
        )

        try:
            with urllib.request.urlopen(req, timeout=120) as resp:
                raw      = resp.read().decode()
                rl_hdrs  = _extract_rate_limit_headers(resp.info())
            break  # success — exit retry loop
        except urllib.error.HTTPError as e:
            detail = ""
            try:
                detail = e.read().decode()[:400]
            except Exception:
                pass
            if e.code == 429:
                rate_attempts += 1
                if rate_attempts <= _max_rate_retries:
                    # Prefer the server-supplied reset timestamp over blind backoff
                    reset_iso = ""
                    try:
                        reset_iso = e.headers.get(
                            "anthropic-ratelimit-requests-reset", ""
                        ) or e.headers.get(
                            "anthropic-ratelimit-tokens-reset", ""
                        ) or ""
                    except Exception:
                        pass
                    if reset_iso:
                        print(
                            f"  [rate_limit] HTTP 429 (attempt {rate_attempts}/{_max_rate_retries})",
                            flush=True,
                        )
                        _wait_until_reset(reset_iso)
                    else:
                        wait = _rate_retry_base * (2 ** (rate_attempts - 1))
                        print(
                            f"  [rate_limit] HTTP 429 (attempt {rate_attempts}/{_max_rate_retries}) — "
                            f"waiting {wait}s before retry ...",
                            flush=True,
                        )
                        time.sleep(wait)
                    continue
                else:
                    return {"error": f"HTTP {e.code}: {detail}"}
            if e.code == 401:
                auth_attempts += 1
                if auth_attempts < _max_auth_retries:
                    print(
                        f"  [auth] HTTP 401 on attempt {auth_attempts}/{_max_auth_retries} — "
                        f"waiting {_auth_retry_wait // 60} min before retry ...",
                        flush=True,
                    )
                    time.sleep(_auth_retry_wait)
                    continue
                else:
                    print(
                        f"  [auth] HTTP 401 after {_max_auth_retries} attempts — "
                        f"waiting {_auth_final_wait // 60} min then giving up.",
                        flush=True,
                    )
                    time.sleep(_auth_final_wait)
                    return {"error": f"HTTP {e.code}: {detail}"}
            return {"error": f"HTTP {e.code}: {detail}"}
        except Exception as e:
            return {"error": f"{type(e).__name__}: {e}"}

    try:
        data = json.loads(raw)
    except json.JSONDecodeError as e:
        return {"error": f"Bad JSON from API: {e}", "raw": raw[:300]}

    text = "".join(b.get("text", "") for b in data.get("content", []) if b.get("type") == "text")
    return {"text": text, "usage": data.get("usage", {}), "rate_limit": rl_hdrs}


def validate_api_key(api_key: str, model: str) -> str | None:
    """
    Make a minimal API call to verify the key is valid.
    Returns None on success, or an error string (including HTTP 401 details) on failure.
    """
    result = call_claude(
        api_key=api_key,
        model=model,
        system="You are a validator.",
        user_message="Reply with the single word: OK",
        max_tokens=5,
        temperature=0.0,
        _max_auth_retries=1,  # no retries on the startup key-check
        _auth_retry_wait=0,
        _auth_final_wait=0,
    )
    if "error" in result and "text" not in result:
        return result["error"]
    return None


def probe_rate_limit_status(api_key: str, model: str) -> dict:
    """
    Make a minimal API call solely to read current rate-limit headers.
    Returns the rate_limit dict (may be empty if the server omits headers).
    """
    result = call_claude(
        api_key=api_key,
        model=model,
        system="You are a validator.",
        user_message="Reply: OK",
        max_tokens=5,
        temperature=0.0,
        _max_auth_retries=1,
        _auth_retry_wait=0,
        _auth_final_wait=0,
        _max_rate_retries=0,
    )
    return result.get("rate_limit", {})


def print_rate_limit_status(rl: dict) -> None:
    """Pretty-print rate-limit headers returned by probe_rate_limit_status."""
    if not rl:
        print("  (no rate-limit headers returned by API)")
        return
    req_rem   = rl.get("anthropic-ratelimit-requests-remaining", "?")
    req_lim   = rl.get("anthropic-ratelimit-requests-limit",     "?")
    req_reset = rl.get("anthropic-ratelimit-requests-reset",     "")
    tok_rem   = rl.get("anthropic-ratelimit-tokens-remaining",   "?")
    tok_lim   = rl.get("anthropic-ratelimit-tokens-limit",       "?")
    tok_reset = rl.get("anthropic-ratelimit-tokens-reset",       "")
    print(f"  Requests : {req_rem} / {req_lim}  (reset: {req_reset})")
    print(f"  Tokens   : {tok_rem} / {tok_lim}  (reset: {tok_reset})")

    # If requests remaining is 0, calculate wait time
    if req_rem == "0" and req_reset:
        reset_ts = _parse_reset_ts(req_reset)
        if reset_ts > 0:
            secs_left = max(0, reset_ts - time.time())
            print(f"  → Requests exhausted. Reset in {secs_left:.0f}s "
                  f"({req_reset})")


def _get_anchor_key(
    manifest: dict | None,
    prop_text: str | None,
) -> tuple[str, frozenset] | None:
    """
    Derive a hashable (anchor_class, frozenset(anchor_methods)) key for
    the finding's code location.  Used by the class/function memory for
    LOW confidence=0.0 findings.  Returns None if the location is unknown.
    """
    if manifest:
        anchor_class = ""
        for entry in manifest.get("files", []):
            if entry.get("has_anchor"):
                anchor_class = entry.get("class", "")
                break
        if not anchor_class:
            # Fallback: derive from anchor_file name (strip _slim.smali suffix)
            af = manifest.get("anchor_file", "")
            if af:
                anchor_class = af.replace("_slim.smali", "").replace("/", ".")
        anchor_methods = frozenset(
            manifest.get("call_chain", {}).get("anchor_methods", [])
        )
        if anchor_class:
            return (anchor_class, anchor_methods)

    # No manifest — try to extract the first "Class:" line from the propagation trace
    if prop_text:
        m = re.search(r"^Class:\s+(.+)$", prop_text, re.MULTILINE)
        if m:
            return (m.group(1).strip(), frozenset())

    return None


def get_shared_cache_key(
    manifest: dict | None,
    all_files: dict[str, str],
) -> str | None:
    """
    Return a stable SHA-256 cache key for cross-device verdict sharing.

    Key material: anchor_class + sorted anchor_methods + sorted security_tags
                  + anchor smali content.

    Returns None when the anchor class or its content cannot be determined
    (e.g. slim workspace is unavailable).  Propagation-trace-only runs are
    intentionally excluded because the trace text is device-specific and the
    anchor code identity cannot be verified without the smali.
    """
    if not manifest:
        return None

    anchor_class   = ""
    anchor_methods: list[str] = []
    security_tags:  list[str] = []
    anchor_content = ""

    for entry in manifest.get("files", []):
        if entry.get("has_anchor"):
            anchor_class   = entry.get("class", "")
            anchor_methods = sorted(
                entry.get("anchor_methods",
                          manifest.get("call_chain", {}).get("anchor_methods", []))
            )
            security_tags  = sorted(entry.get("security_tags", {}).keys())
            fname = entry.get("filename")
            if fname:
                anchor_content = all_files.get(fname, "")
            break

    if not anchor_class:
        af = manifest.get("anchor_file", "")
        if af:
            anchor_class = af.replace("_slim.smali", "").replace("/", ".")

    if not anchor_methods:
        anchor_methods = sorted(manifest.get("call_chain", {}).get("anchor_methods", []))
    if not security_tags:
        security_tags = sorted(manifest.get("tags_found", []))

    if not anchor_class or not anchor_content:
        return None

    hash_input = "\n".join([
        anchor_class,
        ",".join(anchor_methods),
        ",".join(security_tags),
        anchor_content,
    ])
    return hashlib.sha256(hash_input.encode("utf-8", errors="replace")).hexdigest()


def parse_json_response(text: str) -> dict:
    """Extract JSON from model response, stripping any markdown fences."""
    clean = re.sub(r"```(?:json)?|```", "", text).strip()
    # Find the start of the first { block
    start = clean.find("{")
    if start != -1:
        clean = clean[start:]
    try:
        # raw_decode stops after the first valid JSON object, ignoring trailing text
        decoder = json.JSONDecoder()
        obj, _ = decoder.raw_decode(clean)
        return obj
    except json.JSONDecodeError as e:
        return {"error": f"Could not parse model JSON: {e}", "raw_response": text[:2000]}


# ---------------------------------------------------------------------------
# Propagation .txt loader
# ---------------------------------------------------------------------------

def package_to_prop_filename(package: str) -> str:
    """com.miui.analytics → com_miui_analytics.txt"""
    return package.replace(".", "_") + ".txt"


def load_propagation(prop_dir: Path, package: str) -> Optional[str]:
    """Return the raw text of the step6 propagation file, or None."""
    path = prop_dir / package_to_prop_filename(package)
    if path.exists():
        return path.read_text(errors="replace")
    # Fallback: case-insensitive search
    target = package_to_prop_filename(package).lower()
    for f in prop_dir.iterdir():
        if f.name.lower() == target:
            return f.read_text(errors="replace")
    return None


def extract_classes_from_propagation(prop_text: str) -> dict[str, list[str]]:
    """
    Parse the propagation .txt and return:
      {
        "seed":     [...],   # classes where the hardcoded string lives
        "security": [...],   # callers/callees that match security-relevant patterns
        "callers":  [...],   # all extracted caller class names
        "callees":  [...],   # all extracted callee class names
      }
    """
    SEC_PAT = re.compile(
        r"permission|grant|policy|restrict|whitelist|allowlist|check|enforce|"
        r"install|privilege|uid|calling|sign|appops|hiddenapi|hidden_api",
        re.IGNORECASE,
    )
    SKIP_PREFIXES = ("java.", "sun.", "libcore.", "kotlin.", "dalvik.")

    seed, callers, callees = set(), set(), set()

    for line in prop_text.splitlines():
        stripped = line.strip()

        # Seed classes — "Class: com.foo.Bar"
        if stripped.startswith("Class:"):
            cls = stripped.split(":", 1)[1].strip()
            # Strip inner class and clean up
            cls = re.split(r"\$", cls)[0].strip()
            if cls and "." in cls:
                seed.add(cls)

        # Caller lines — "  ← <com.foo.Bar: ..."  or  "← ClassName.method()"
        elif re.match(r"^\s*←\s+", stripped):
            m = re.search(r"<?([\w.]+)(?:\$[\w$]+)*", stripped.lstrip("← "))
            if m:
                cls = m.group(1)
                if "." in cls and not any(cls.startswith(p) for p in SKIP_PREFIXES):
                    callers.add(cls)

        # Callee lines — "  → <com.foo.Bar: ..."  or  "→ ClassName.method()"
        elif re.match(r"^\s*→\s+", stripped):
            m = re.search(r"<?([\w.]+)(?:\$[\w$]+)*", stripped.lstrip("→ "))
            if m:
                cls = m.group(1)
                if "." in cls and not any(cls.startswith(p) for p in SKIP_PREFIXES):
                    callees.add(cls)

    security = {
        c for c in callers | callees
        if SEC_PAT.search(c) and c not in seed
    }

    return {
        "seed":     sorted(seed),
        "security": sorted(security),
        "callers":  sorted(callers - seed),
        "callees":  sorted(callees - seed),
    }


# ---------------------------------------------------------------------------
# Smali file loader
# ---------------------------------------------------------------------------

def class_to_smali_path(class_name: str, smali_dir: Path) -> Optional[Path]:
    """
    Resolve a Java class name to its smali file path.
    Searches across all JAR subdirectories under smali_dir.

    smali_dir layout (from step2_decompile_jars.sh):
      smali_dir/
        services/
          com/android/server/pm/PackageManagerService.smali
        framework/
          android/os/Binder.smali
        ...
    """
    # Clean up various input formats
    clean = class_name.strip()
    # Smali descriptor: Lcom/foo/Bar; → com.foo.Bar
    if clean.startswith("L") and clean.endswith(";"):
        clean = clean[1:-1].replace("/", ".")
    # Strip method signature: <com.foo.Bar: void m()> → com.foo.Bar
    m = re.match(r"<?([\w.$]+)\s*:", clean)
    if m:
        clean = m.group(1)
    # Strip inner class suffix for file lookup (Bar$Inner → Bar)
    outer = re.split(r"\$", clean)[0]

    rel_path = outer.replace(".", "/") + ".smali"

    # Search all subdirectories (one per decompiled JAR)
    for jar_subdir in smali_dir.iterdir():
        if not jar_subdir.is_dir():
            continue
        candidate = jar_subdir / rel_path
        if candidate.exists():
            return candidate

    return None


def load_smali_for_classes(
    class_names: list[str],
    smali_dir: Path,
    max_bytes_per_file: int = 8000,
) -> dict[str, str]:
    """
    Load smali content for a list of class names.
    Returns {class_name: smali_content_truncated}.
    """
    loaded = {}
    for cls in class_names:
        path = class_to_smali_path(cls, smali_dir)
        if path:
            content = path.read_text(errors="replace")
            if len(content) > max_bytes_per_file:
                content = content[:max_bytes_per_file] + f"\n... [truncated at {max_bytes_per_file} bytes]"
            loaded[cls] = content
    return loaded


# ---------------------------------------------------------------------------
# Prompt builder
# ---------------------------------------------------------------------------

SYSTEM_PROMPT = """\
You are an Android OEM firmware security researcher.

Dolphin (a local LLM) has flagged a hardcoded package name or system property
in OEM Android framework smali code as a potential security/privacy threat.
Your job is a SECOND-PASS CONFIRMATION using the call-chain propagation trace
and the slim smali files provided.

The slim smali files have been pre-processed: only the class header, field
declarations, constructors, methods that contain the hardcoded string [ANCHOR],
and methods that invoke security-tagged calls are included. Everything else has
been stripped. Each kept method is annotated with the tags it triggers.

Security tag taxonomy (reference guide)
----------------------------------------
The slim files are annotated with tags where known patterns were found, but
OEM code often uses custom method names that don't match these patterns.
You are NOT limited to this list — apply your own analysis to the full smali
and flag any security-relevant pattern you identify, even if unnamed here.

  PERM_CHECK       checkPermission / enforcePermission
  PERM_GRANT       grantPermission / grantRuntimePermission
                   grantDefaultPermission / grantSystemNonFixed
  PERM_REVOKE      revokePermission
  PERM_FLAGS       updatePermissionFlags
  HIDDEN_API       isAllowedToUseHiddenApis / getHiddenApi*
  INSTALLER_VERIFY assertValidApk / noVerifyAllow
  SIG_CHECK        checkSignature / getSigningDetails /
                   computeDigest / hasSigningCertificate
  DEVICE_ID        getDeviceId / getImei / getSubscriberId /
                   getSimSerialNumber / getLine1Number
  APPOPS           setMode / checkOp / noteOp
  PKG_MGMT         installPackage / deletePackage /
                   setApplicationEnabledSetting
  PKG_QUERY        getPackageInfo / getApplicationInfo
  SYS_PROP_READ    SystemProperties.get() / getBoolean()
  SYS_PROP_WRITE   SystemProperties.set()
  UID_CHECK        getCallingUid / getCallingPid
  CALLER_ID        getCallingPackage
  SMS_SEND         sendTextMessage / sendDataMessage
  PHONE_CALL       placeCall
  NETWORK          openSocket / openConnection

If you find a security-relevant pattern not in this list, set confirmed_tag
to a descriptive name of your own (e.g. "CUSTOM_OEM_BYPASS") and explain it
in privacy_impact.

Your task
---------
1. Identify which security tags are reachable FROM the [ANCHOR] method
   (the package string flows into, or the same method body invokes them).
2. Determine whether that flow represents a real threat or benign context.
3. Pick the single most severe confirmed_tag from the taxonomy, or NONE.

Verdict definitions
-------------------
CONFIRMED_HIGH
  The anchor method directly invokes or gates a PERM_GRANT, APPOPS setMode(ALLOW),
  HIDDEN_API whitelist, INSTALLER_VERIFY bypass, SIG_CHECK bypass, or DEVICE_ID
  exfiltration — with the hardcoded package as the beneficiary, no user consent.

CONFIRMED_MEDIUM
  The anchor flows to PKG_MGMT, PKG_QUERY, PERM_CHECK (weakened), PERM_FLAGS,
  SYS_PROP_READ gating a policy decision, CALLER_ID differential treatment,
  or UID_CHECK bypass — real but limited impact.

NEEDS_INVESTIGATION
  A suspicious tag is reachable but the smali is incomplete or the branch
  condition is unclear. State exactly which method and line to inspect.

LIKELY_FP
  The package string appears only in Binder/AIDL plumbing (writeInterfaceToken,
  attachInterface, $Stub/$Proxy), a logging call, dead code, or a cosmetic
  feature. No security-relevant call — whether in the taxonomy above or not —
  is reachable from the anchor. Do not assign LIKELY_FP just because the
  method doesn't match a known tag; read the smali and reason from first principles.

Output format
-------------
Respond ONLY with valid JSON — no markdown fences, no preamble:

{
  "verdict":            "CONFIRMED_HIGH | CONFIRMED_MEDIUM | NEEDS_INVESTIGATION | LIKELY_FP",
  "confirmed_tag":      "one tag from the taxonomy above, or NONE",
  "confidence":         0.0-1.0,
  "threat_type":        "permission_grant_bypass | appops_manipulation | hidden_api_whitelist | enforcement_bypass | data_exfiltration | installer_privilege | pkg_mgmt_bypass | signature_bypass | cts_bypass | telemetry_privilege | binder_plumbing | false_positive | unknown",
  "privacy_impact":     "one sentence — what user data or capability is at risk",
  "attack_surface":     "what a pre-installed or privileged app gains from this",
  "anchor_to_tag_path": ["method chain from ANCHOR to the confirmed_tag call, max 4 steps"],
  "dolphin_agreement":  "agree | disagree | partial",
  "what_to_verify":     "specific method name + line pattern to confirm or deny at runtime"
}"""


def build_user_message(
    dolphin_result: dict,
    prop_text: Optional[str],
    slim_smali_text: str,
) -> str:
    pkg = dolphin_result.get("package", "unknown")
    lines = [
        "=== Dolphin initial assessment ===",
        f"Package/value:        {pkg}",
        f"Priority:             {dolphin_result.get('priority', '?')}",
        f"Category:             {dolphin_result.get('category', '?')}",
        f"Confidence:           {dolphin_result.get('confidence', 0):.0%}",
        f"Key findings:         {', '.join(dolphin_result.get('key_findings', []))}",
        f"What to check:        {dolphin_result.get('what_to_check', '')}",
        f"Reasoning:            {dolphin_result.get('reasoning', '')}",
        "",
    ]

    if prop_text:
        lines += [
            "=== Step 6 propagation trace ===",
            prop_text[:4000],
            "... [truncated]" if len(prop_text) > 4000 else "",
            "",
        ]
    else:
        lines += ["=== Step 6 propagation trace ===",
                  "(not available — verdict based on Dolphin data only)", ""]

    if slim_smali_text:
        lines += [
            "=== Slim smali files ===",
            "# Each file below shows only: class header, fields, <init>/<clinit>,",
            "# methods that contain the hardcoded package string [ANCHOR],",
            "# and methods that invoke security-tagged calls.",
            "# Irrelevant methods have been stripped.",
            "",
            slim_smali_text,
            "",
        ]
    else:
        lines += ["=== Slim smali files ===",
                  "(none loaded — use --smali-dir for evidence-grounded analysis)", ""]

    lines.append("Confirm or deny the threat. Return ONLY the JSON verdict.")
    return "\n".join(lines)


# ---------------------------------------------------------------------------
# Result formatting
# ---------------------------------------------------------------------------

PRIORITY_ORDER = {"CONFIRMED_HIGH": 0, "CONFIRMED_MEDIUM": 1,
                  "NEEDS_INVESTIGATION": 2, "LIKELY_FP": 3, "ERROR": 4}


def merge_with_dolphin(dolphin: dict, claude: dict) -> dict:
    """Return a merged record combining Dolphin metadata with Claude verdict."""
    return {
        # Identity
        "file":             dolphin.get("file", ""),
        "package":          dolphin.get("package", ""),
        "value_type":       dolphin.get("value_type", "package_name"),
        # Dolphin original
        "dolphin_priority":    dolphin.get("priority", ""),
        "dolphin_category":    dolphin.get("category", ""),
        "dolphin_confidence":  dolphin.get("confidence", 0),
        "dolphin_findings":    dolphin.get("key_findings", []),
        # Claude verdict
        "verdict":             claude.get("verdict", "ERROR"),
        "confirmed_tag":       claude.get("confirmed_tag", "NONE"),
        "confidence":          claude.get("confidence", 0),
        "threat_type":         claude.get("threat_type", "unknown"),
        "privacy_impact":      claude.get("privacy_impact", ""),
        "attack_surface":      claude.get("attack_surface", ""),
        "anchor_to_tag_path":  claude.get("anchor_to_tag_path", []),
        "dolphin_agreement":   claude.get("dolphin_agreement", ""),
        "what_to_verify":      claude.get("what_to_verify", ""),
        # Pass 2 metadata
        "pass2_triggered":     claude.get("pass2_triggered", False),
        "pass2_requested_files": claude.get("pass2_requested_files", []),
        # Sonnet escalation metadata
        "sonnet_escalated":    claude.get("sonnet_escalated", False),
        "haiku_verdict":       claude.get("haiku_verdict", ""),
        # Error passthrough
        "error":               claude.get("error", ""),
        "raw_response":        claude.get("raw_response", ""),
    }


# ---------------------------------------------------------------------------
# Main
# ---------------------------------------------------------------------------

def main() -> None:
    ap = argparse.ArgumentParser(
        description="Second-pass Claude validator for Dolphin HIGH/MEDIUM hot spots.",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog=__doc__,
    )
    ap.add_argument("--triage",        required=True,
                    help="Dolphin triage.json output")
    ap.add_argument("--prop-dir",      required=True,
                    help="step6_propagation/per_package/ directory")
    ap.add_argument("--slim-smali-dir", default=None,
                    help="slim_smali/ workspace built by step7 (recommended)")
    ap.add_argument("--smali-dir",     default=None,
                    help="Raw smali/ root — used only if slim-smali-dir not set")
    ap.add_argument("--output",        default="claude_validated.json",
                    help="Output file (default: claude_validated.json)")
    ap.add_argument("--min-priority",  default="MEDIUM",
                    choices=["HIGH", "MEDIUM", "LOW"],
                    help="Minimum Dolphin priority to validate (default: LOW)")
    ap.add_argument("--model",         default="claude-haiku-4-5-20251001",
                    help="Anthropic model for Pass 1 (default: claude-haiku-4-5-20251001)")
    ap.add_argument("--sonnet-model",  default="",
                    help="Model used when Haiku returns NEEDS_INVESTIGATION "
                         "(default: disabled). Pass e.g. claude-sonnet-4-6 to enable escalation.")
    ap.add_argument("--max-sonnet-smali-bytes", type=int, default=20000,
                    help="Max bytes per full smali file sent to Sonnet (default: 20000)")
    ap.add_argument("--api-key",       default=None,
                    help="Anthropic API key (default: $ANTHROPIC_API_KEY)")
    ap.add_argument("--pass2-threshold", type=float, default=0.5,
                    help="Confidence below which Pass 1 triggers Pass 2 (default: 0.5)")
    ap.add_argument("--max-smali-files", type=int, default=10,
                    help="Max smali files per finding when using raw smali-dir (default: 10)")
    ap.add_argument("--max-smali-bytes", type=int, default=8000,
                    help="Max bytes per smali file (default: 8000)")
    ap.add_argument("--workers",       type=int, default=1,
                    help="Parallel API calls (default: 1)")
    ap.add_argument("--inter-request-delay", type=float, default=1.0,
                    help="Seconds to sleep between every API call (default: 1.0)")
    ap.add_argument("--batch-pause-every", type=int, default=100,
                    help="Pause for --batch-pause-seconds after every N calls (default: 100)")
    ap.add_argument("--batch-pause-seconds", type=float, default=60.0,
                    help="Seconds to pause after every --batch-pause-every calls (default: 60)")
    ap.add_argument("--resume",        action="store_true",
                    help="Skip findings already in --output")
    ap.add_argument("--dry-run",       action="store_true",
                    help="Show what would be sent; do not call API")
    ap.add_argument("--print-context", action="store_true",
                    help="Print full context for each finding. Implies --dry-run.")
    ap.add_argument("--print-package", default=None, metavar="PKG",
                    help="With --print-context, only print for this package name")
    ap.add_argument("--check-usage",   action="store_true",
                    help="Probe API rate-limit status at startup and print remaining "
                         "quota; if requests are exhausted, wait for the reset "
                         "(±10 min) before continuing")
    ap.add_argument("--shared-cache",  default=None, metavar="FILE",
                    help="Path to a cross-device shared verdict cache JSON. "
                         "Verdicts are keyed by a SHA-256 hash of the anchor "
                         "class + methods + security tags + smali content so "
                         "identical code across dumps is analysed only once.")
    args = ap.parse_args()

    if args.print_context:
        args.dry_run = True

    # ── API key ──────────────────────────────────────────────────────────────
    api_key = args.api_key or os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key and not args.dry_run:
        print("ERROR: Set ANTHROPIC_API_KEY or pass --api-key", file=sys.stderr)
        sys.exit(1)

    # ── Auth token check ─────────────────────────────────────────────────────
    if api_key and not args.dry_run:
        print(f"[claude_validator] Verifying API key ... ", end="", flush=True)
        auth_err = validate_api_key(api_key, args.model)
        if auth_err:
            print("FAILED")
            print(f"ERROR: API key authentication failed: {auth_err}", file=sys.stderr)
            sys.exit(1)
        print("OK")

    # ── Rate-limit usage probe ───────────────────────────────────────────────
    if api_key and not args.dry_run and args.check_usage:
        print("[claude_validator] Checking API rate-limit status ...")
        rl = probe_rate_limit_status(api_key, args.model)
        print_rate_limit_status(rl)
        req_rem   = rl.get("anthropic-ratelimit-requests-remaining", None)
        req_reset = rl.get("anthropic-ratelimit-requests-reset", "")
        if req_rem == "0" and req_reset:
            print("[claude_validator] Requests exhausted — waiting for reset ...")
            _wait_until_reset(req_reset)
            print("[claude_validator] Reset window reached — continuing.\n")
        else:
            print()

    prop_dir       = Path(args.prop_dir)
    slim_smali_dir = Path(args.slim_smali_dir) if args.slim_smali_dir else None
    smali_dir      = Path(args.smali_dir)      if args.smali_dir      else None
    output         = Path(args.output)

    source_label = (
        f"slim workspace: {slim_smali_dir}" if slim_smali_dir else
        f"raw smali-dir: {smali_dir}"       if smali_dir      else
        "propagation trace only"
    )

    # ── Load Dolphin triage ──────────────────────────────────────────────────
    with open(args.triage) as f:
        all_results: list[dict] = json.load(f)

    priority_rank = {"HIGH": 0, "MEDIUM": 1, "LOW": 2, "SKIP": 3}
    min_rank      = priority_rank[args.min_priority]

    # NOTE: Do NOT filter by priority alone.  Dolphin assigns LOW/benign_oem_feature
    # with confidence=0.0 when it is uncertain — these are exactly the cases where
    # Haiku most often upgrades to CONFIRMED_MEDIUM or higher (e.g. INSTALLER_VERIFY
    # bypasses for com.facebook.system/de.telekom.tsc, USB permission bypass for
    # com.baidu.carlife, silent package deletion for com.miui.fmservice).
    # Items with dolphin_confidence==0 are always forwarded regardless of --min-priority.
    hot_spots = [
        r for r in all_results
        if (
            priority_rank.get(r.get("priority", "SKIP"), 99) <= min_rank
            or r.get("confidence", -1) == 0.0  # uncertain Dolphin → let Haiku decide
        )
        and r.get("category") != "pre_filtered"
        and r.get("priority") != "ERROR"
    ]

    mode_label = "PRINT-CONTEXT" if args.print_context else ("DRY-RUN" if args.dry_run else "LIVE")
    print(f"[claude_validator] Mode:      {mode_label}")
    print(f"[claude_validator] Triage:    {len(all_results)} total  →  {len(hot_spots)} hot spots ({args.min_priority}+)")
    print(f"[claude_validator] Model:     {args.model}  (escalation → {args.sonnet_model or 'disabled'})")
    print(f"[claude_validator] Source:    {source_label}")
    if slim_smali_dir:
        print(f"[claude_validator] Pass2 threshold: confidence <= {args.pass2_threshold}")
    print(f"[claude_validator] Output:    {output}")
    if args.print_package:
        print(f"[claude_validator] Filter:    {args.print_package}")
    if args.shared_cache:
        print(f"[claude_validator] SharedCache: {args.shared_cache}")
    print()

    # ── Resume ───────────────────────────────────────────────────────────────
    already_done: set[str] = set()
    prior_results: list[dict] = []
    if args.resume and output.exists():
        try:
            prior_results = json.loads(output.read_text())
            already_done  = {r["file"] for r in prior_results if r.get("verdict") != "ERROR"}
            print(f"[resume] {len(already_done)} already done, "
                  f"{len(hot_spots) - len(already_done)} remaining\n")
        except Exception as e:
            print(f"[resume] Could not load prior results: {e}", file=sys.stderr)

    # ── Class/function memory (LOW confidence=0.0 deduplication) ─────────────
    # Maps (anchor_class, frozenset(anchor_methods)) → prior Claude verdict dict.
    # When a LOW/conf=0.0 finding hits the same code location as a previous one
    # that was deemed LIKELY_FP, we skip the API call and inherit the FP verdict.
    # Persisted to <output>.mem.json so it survives across --resume runs.
    mem_path = output.with_suffix("").with_name(output.stem + ".mem.json")
    class_function_memory: dict[tuple, dict] = {}

    def _load_memory() -> None:
        """Load persisted memory from disk (if it exists)."""
        if not mem_path.exists():
            return
        try:
            raw_mem: list[dict] = json.loads(mem_path.read_text())
            for entry in raw_mem:
                cls     = entry.get("anchor_class", "")
                methods = frozenset(entry.get("anchor_methods", []))
                if cls:
                    class_function_memory[(cls, methods)] = entry.get("verdict_data", {})
            print(f"[memory] Loaded {len(class_function_memory)} anchor entries from {mem_path}")
        except Exception as e:
            print(f"[memory] Could not load {mem_path}: {e}", file=sys.stderr)

    def _save_memory() -> None:
        """Flush the in-memory dict to disk as a JSON list."""
        serialisable = [
            {
                "anchor_class":   cls,
                "anchor_methods": sorted(methods),
                "verdict_data":   data,
            }
            for (cls, methods), data in class_function_memory.items()
        ]
        mem_path.write_text(json.dumps(serialisable, indent=2, ensure_ascii=False))

    _load_memory()

    # ── Cross-device shared verdict cache ────────────────────────────────────
    # Maps SHA-256(anchor_class+methods+tags+smali) → prior Claude verdict dict.
    # Shared across dump IDs so identical code is analysed only once.
    # Persisted to the file given by --shared-cache.
    shared_cache_path: Path | None = Path(args.shared_cache) if args.shared_cache else None
    shared_cache: dict[str, dict] = {}
    _shared_cache_lock = threading.Lock()

    def _load_shared_cache() -> None:
        if not shared_cache_path or not shared_cache_path.exists():
            return
        try:
            data = json.loads(shared_cache_path.read_text())
            shared_cache.update(data)
            print(f"[shared-cache] Loaded {len(shared_cache)} entries from {shared_cache_path}")
        except Exception as e:
            print(f"[shared-cache] Could not load {shared_cache_path}: {e}", file=sys.stderr)

    def _save_shared_cache() -> None:
        if not shared_cache_path:
            return
        try:
            shared_cache_path.parent.mkdir(parents=True, exist_ok=True)
            with _shared_cache_lock:
                shared_cache_path.write_text(
                    json.dumps(shared_cache, indent=2, ensure_ascii=False)
                )
        except Exception as e:
            print(f"[shared-cache] Could not save {shared_cache_path}: {e}", file=sys.stderr)

    _load_shared_cache()

    # ── Per-finding processor ─────────────────────────────────────────────────
    def _load_slim_workspace(pkg: str) -> tuple[dict | None, dict[str, str]]:
        """
        Load the step7 slim workspace for a package.
        Returns (manifest, {filename: content}) or (None, {}) if not found.
        """
        if not slim_smali_dir:
            return None, {}
        pkg_dir = slim_smali_dir / pkg.replace(".", "_")
        mf_path = pkg_dir / "manifest.json"
        if not mf_path.exists():
            return None, {}
        manifest = json.loads(mf_path.read_text())
        files: dict[str, str] = {}
        for entry in manifest.get("files", []):
            fname = entry.get("filename")
            if fname and entry.get("status") == "ok":
                fpath = pkg_dir / fname
                if fpath.exists():
                    files[fname] = fpath.read_text(errors="replace")
        return manifest, files

    def _build_pass1_message(d: dict, prop_text: str | None,
                             manifest: dict | None,
                             anchor_content: str) -> str:
        """
        Pass 1 message: Dolphin context + call chain overview + anchor file only.
        If no slim workspace, falls back to prop trace only.
        """
        pkg = d.get("package", "")
        lines = [
            "=== Dolphin assessment ===",
            f"Package:     {pkg}",
            f"Priority:    {d.get('priority')}  Category: {d.get('category')}  "
            f"Confidence: {d.get('confidence', 0):.0%}",
            f"Findings:    {', '.join(d.get('key_findings', []))}",
            f"Reasoning:   {d.get('reasoning', '')}",
            "",
        ]

        if manifest:
            cc = manifest.get("call_chain", {})
            lines += [
                "=== Call chain overview (from manifest) ===",
                f"JARs:                 {', '.join(cc.get('jars', []))}",
                f"Occurrences:          {cc.get('occurrences', '?')}",
                f"Enforcement patterns: {', '.join(cc.get('enforcement_patterns', []))}",
                f"Security tags:        {', '.join(cc.get('security_tags', []))}",
                f"Anchor methods:       {', '.join(cc.get('anchor_methods', []))}",
                f"Top callers:          {' | '.join(cc.get('top_callers', [])[:4])}",
                f"Top callees:          {' | '.join(cc.get('top_callees', [])[:4])}",
                "",
                "=== Available slim files (you may request more in Pass 2) ===",
            ]
            for e in manifest.get("files", []):
                fname  = e.get("filename") or "(not found)"
                role   = e.get("role", "")
                tags   = list(e.get("security_tags", {}).keys())
                anchor = " [ANCHOR]" if e.get("has_anchor") else ""
                status = e.get("status", "")
                if status == "ok":
                    lines.append(
                        f"  {fname:<45} role={role:<8} tags=[{','.join(tags) or 'none'}]{anchor}")
                else:
                    lines.append(f"  (not found)  class={e.get('class', '?')}  role={role}")
            lines.append("")

            if anchor_content:
                lines += [
                    f"=== Anchor slim file: {manifest.get('anchor_file', '?')} ===",
                    "# This is the class that directly contains the hardcoded package string.",
                    "# Irrelevant methods have been stripped. [ANCHOR] marks the seed method.",
                    "",
                    anchor_content,
                    "",
                ]
            else:
                lines += ["=== Anchor file ===", "(no anchor file found in workspace)", ""]

        elif prop_text:
            lines += [
                "=== Step 6 propagation trace (no slim workspace available) ===",
                prop_text[:4000],
                "... [truncated]" if len(prop_text) > 4000 else "",
                "",
            ]
        else:
            lines += ["=== Context ===", "(no propagation trace or workspace found)", ""]

        lines.append(
            "Analyse the anchor file and call chain overview. "
            "If you are confident (>= 70%), return your final verdict. "
            "If you need additional slim files from the list above, "
            'set verdict to NEEDS_INVESTIGATION and list the filenames '
            'you need in a "request_files" array in your response.'
        )
        return "\n".join(lines)

    def _build_pass2_message(d: dict, pass1: dict,
                             manifest: dict, extra_files: dict[str, str]) -> str:
        """Pass 2 message: adds the extra files Claude asked for."""
        pkg = d.get("package", "")
        lines = [
            "=== Pass 2: additional slim files requested ===",
            f"Package: {pkg}",
            f"Your Pass 1 verdict: {pass1.get('verdict')}  "
            f"confidence: {pass1.get('confidence', 0):.0%}",
            f"You requested: {', '.join(extra_files.keys())}",
            "",
        ]
        for fname, content in extra_files.items():
            lines += [f"=== {fname} ===", content, ""]

        lines.append(
            "Now return your final verdict with full evidence. "
            "Return ONLY the JSON verdict object."
        )
        return "\n".join(lines)

    def _build_sonnet_message(d: dict, haiku_result: dict,
                               manifest: dict | None, prop_text: str | None,
                               full_smali: dict[str, str]) -> str:
        """
        Sonnet escalation message: full (unslimmed) smali for all call-chain classes.
        Haiku returned NEEDS_INVESTIGATION — Sonnet gets the complete evidence.
        """
        pkg = d.get("package", "")
        lines = [
            "=== ESCALATED INVESTIGATION — Deep Sonnet Analysis ===",
            f"Package:             {pkg}",
            f"Haiku verdict:       {haiku_result.get('verdict')}  "
            f"(confidence {haiku_result.get('confidence', 0):.0%})",
            f"Haiku what_to_verify: {haiku_result.get('what_to_verify', '')}",
            "",
        ]

        if manifest:
            cc = manifest.get("call_chain", {})
            lines += [
                "=== Call chain overview ===",
                f"JARs:                 {', '.join(cc.get('jars', []))}",
                f"Occurrences:          {cc.get('occurrences', '?')}",
                f"Enforcement patterns: {', '.join(cc.get('enforcement_patterns', []))}",
                f"Security tags:        {', '.join(cc.get('security_tags', []))}",
                f"Anchor methods:       {', '.join(cc.get('anchor_methods', []))}",
                f"Top callers:          {' | '.join(cc.get('top_callers', [])[:6])}",
                f"Top callees:          {' | '.join(cc.get('top_callees', [])[:6])}",
                "",
            ]
        elif prop_text:
            lines += [
                "=== Propagation trace ===",
                prop_text[:6000],
                "... [truncated]" if len(prop_text) > 6000 else "",
                "",
            ]

        lines += [
            "=== Full smali files for entire call chain ===",
            f"# {len(full_smali)} file(s) loaded — COMPLETE, unslimmed smali.",
            "# Perform a thorough method-level analysis.",
            "",
        ]
        for cls, content in full_smali.items():
            lines += [f"=== {cls} ===", content, ""]

        lines.append(
            "Haiku could not reach a confident verdict. "
            "Use the complete smali above to deliver a definitive verdict. "
            "Return ONLY the JSON verdict object."
        )
        return "\n".join(lines)

    def process_one(d: dict) -> dict:
        pkg             = d.get("package", "")
        is_low_uncertain = d.get("confidence", -1) == 0.0

        # ── Load workspace ────────────────────────────────────────────────────
        manifest, all_files = _load_slim_workspace(pkg)
        prop_text = None if manifest else load_propagation(prop_dir, pkg)

        # ── Class/function memory check (LOW confidence=0.0 only) ─────────────
        # If we've already analysed this exact (class, method) anchor and the
        # verdict was LIKELY_FP, there is no point calling the API again for a
        # different package at the same code location — it will be FP too.
        if is_low_uncertain and not args.dry_run and not args.print_context:
            anchor_key = _get_anchor_key(manifest, prop_text)
            if anchor_key:
                prior = class_function_memory.get(anchor_key)
                if prior and prior.get("verdict") == "LIKELY_FP":
                    source_pkg = prior.get("_mem_source_package", "?")
                    print(
                        f"  [mem-hit] {pkg} → LIKELY_FP "
                        f"(same location as {source_pkg} in {anchor_key[0]})",
                        flush=True,
                    )
                    inherited = dict(prior)
                    inherited.pop("_mem_source_package", None)
                    inherited["context_memory_hit"]            = True
                    inherited["context_memory_source_package"] = source_pkg
                    inherited["context_memory_key"]            = [
                        anchor_key[0], sorted(anchor_key[1])
                    ]
                    return merge_with_dolphin(d, inherited)

        # Determine anchor file content (Pass 1 only gets the anchor)
        anchor_file    = manifest.get("anchor_file", "") if manifest else ""
        anchor_content = all_files.get(anchor_file, "")  if anchor_file else ""

        # ── Cross-device shared cache check ──────────────────────────────────
        # Keyed by SHA-256 of (anchor_class, methods, tags, smali content).
        # Reuses ANY previously computed verdict when the code is identical,
        # regardless of which dump produced the result.
        if not args.dry_run and not args.print_context and shared_cache_path:
            sc_key = get_shared_cache_key(manifest, all_files)
            if sc_key:
                with _shared_cache_lock:
                    sc_prior = shared_cache.get(sc_key)
                if sc_prior:
                    source_dump = sc_prior.get("_sc_source_dump", "?")
                    source_pkg  = sc_prior.get("_sc_source_package", "?")
                    verdict     = sc_prior.get("verdict", "?")
                    print(
                        f"  [shared-cache-hit] {pkg} → {verdict} "
                        f"(same code as {source_pkg} in dump {source_dump})",
                        flush=True,
                    )
                    inherited = dict(sc_prior)
                    inherited.pop("_sc_source_dump", None)
                    inherited.pop("_sc_source_package", None)
                    inherited["shared_cache_hit"]            = True
                    inherited["shared_cache_source_package"] = source_pkg
                    inherited["shared_cache_source_dump"]    = source_dump
                    return merge_with_dolphin(d, inherited)

        # Fallback: if no workspace, use raw smali_dir via old extractor
        classes_info: dict         = {}
        smali_manifest: list[dict] = []
        slim_text = ""
        if not manifest and smali_dir:
            from smali_extractor import build_slim_context
            prop_text = prop_text or load_propagation(prop_dir, pkg)
            if prop_text:
                classes_info = extract_classes_from_propagation(prop_text)
                ordered = list(dict.fromkeys(
                    classes_info["seed"][:2] + classes_info["security"][:2]
                    + classes_info["callers"][:2]
                ))[:args.max_smali_files]
                chain_methods = (classes_info.get("callers", [])
                                 + classes_info.get("callees", []))
                slim_text, smali_manifest = build_slim_context(
                    class_names=ordered, smali_dir=smali_dir,
                    pkg_string=pkg, chain_method_names=chain_methods,
                    max_classes=args.max_smali_files,
                    max_chars_per_class=args.max_smali_bytes,
                )

        # ── Build Pass 1 prompt ───────────────────────────────────────────────
        if manifest:
            pass1_msg = _build_pass1_message(d, None, manifest, anchor_content)
        else:
            pass1_msg = build_user_message(d, prop_text, slim_text)

        # ── --print-context ───────────────────────────────────────────────────
        if args.print_context:
            skip = args.print_package and args.print_package not in pkg
            if not skip:
                W = 70
                print(f"\n{'#'*W}")
                print(f"  FINDING: {pkg}")
                print(f"  Dolphin: {d.get('priority')} / {d.get('category')} "
                      f"(confidence {d.get('confidence',0):.0%})")
                print(f"{'#'*W}")

                print(f"\n{'─'*W}")
                print(f"  1. WORKSPACE")
                print(f"{'─'*W}")
                if manifest:
                    pkg_dir = slim_smali_dir / pkg.replace(".", "_")
                    print(f"  Path:          {pkg_dir}")
                    print(f"  Anchor file:   {anchor_file or '(none)'}")
                    print(f"  Anchor chars:  {len(anchor_content):,}")
                    print(f"  Tags in workspace: {manifest.get('tags_found', [])}")
                    print(f"\n  Files in manifest:")
                    for e in manifest.get("files", []):
                        fname  = e.get("filename") or "(not found)"
                        tags   = list(e.get("security_tags", {}).keys())
                        kept   = e.get("kept_methods", "?")
                        drop   = e.get("dropped_methods", "?")
                        anchor = " ← ANCHOR" if e.get("has_anchor") else ""
                        print(f"    [{e.get('role','?'):8}]  {fname:<40}  "
                              f"kept={kept} dropped={drop}  "
                              f"tags=[{','.join(tags) or 'none'}]{anchor}")
                else:
                    print(f"  No slim workspace — falling back to "
                          f"{'raw smali' if smali_dir else 'prop trace only'}")
                    if smali_manifest:
                        for e in smali_manifest:
                            print(f"    {e.get('class','?')}  →  {e.get('status','?')}")

                print(f"\n{'─'*W}")
                print(f"  2. PASS 1 PROMPT  ({len(pass1_msg):,} chars)")
                print(f"{'─'*W}")
                print()
                for line in pass1_msg.splitlines():
                    print(f"  {line}")

                print(f"\n{'─'*W}")
                print(f"  SYSTEM PROMPT  ({len(SYSTEM_PROMPT):,} chars — same for both passes)")
                print(f"{'─'*W}")
                for line in SYSTEM_PROMPT.splitlines():
                    print(f"  {line}")
                print()
            return merge_with_dolphin(d, {"verdict": "DRY_RUN"})

        # ── --dry-run: one-liner ──────────────────────────────────────────────
        if args.dry_run:
            src    = "workspace" if manifest else ("smali" if smali_dir else "prop")
            tags   = manifest.get("tags_found", []) if manifest else \
                     sorted({t for e in smali_manifest for t in e.get("security_tags", {})})
            print(f"  {pkg:<55}  src={src}  "
                  f"tags=[{','.join(tags) or 'none'}]  p1={len(pass1_msg):,}chars")
            return merge_with_dolphin(d, {"verdict": "DRY_RUN"})

        # ── Pass 1 API call ───────────────────────────────────────────────────
        raw1 = call_claude(api_key=api_key, model=args.model,
                           system=SYSTEM_PROMPT, user_message=pass1_msg,
                           max_tokens=1024, temperature=0.0)
        if "error" in raw1 and "text" not in raw1:
            return merge_with_dolphin(d, {"verdict": "ERROR", "error": raw1["error"]})

        p1 = parse_json_response(raw1.get("text", ""))
        if "error" in p1:
            return merge_with_dolphin(d, p1)

        # ── Pass 2: load extra slim files if Claude asked and workspace exists ──
        requested = p1.get("request_files", [])
        needs_pass2 = (
            manifest
            and requested
            and (p1.get("verdict") == "NEEDS_INVESTIGATION"
                 or p1.get("confidence", 1.0) <= args.pass2_threshold)
        )

        final_result = p1
        if needs_pass2:
            extra: dict[str, str] = {}
            for fname in requested:
                if fname in all_files and fname != anchor_file:
                    extra[fname] = all_files[fname]
            if extra:
                pass2_msg = _build_pass2_message(d, p1, manifest, extra)
                raw2 = call_claude(api_key=api_key, model=args.model,
                                   system=SYSTEM_PROMPT, user_message=pass2_msg,
                                   max_tokens=1024, temperature=0.0)
                if "text" in raw2:
                    p2 = parse_json_response(raw2.get("text", ""))
                    if "error" not in p2:
                        p2["pass2_triggered"] = True
                        p2["pass2_requested_files"] = list(extra.keys())
                        final_result = p2

        final_result.pop("request_files", None)

        # ── Sonnet escalation when Haiku is uncertain ─────────────────────────
        if (final_result.get("verdict") == "NEEDS_INVESTIGATION"
                and args.sonnet_model
                and smali_dir):
            # Collect all call-chain classes for full smali loading
            if manifest:
                chain_classes = [
                    e.get("class") for e in manifest.get("files", [])
                    if e.get("class") and e.get("status") == "ok"
                ]
            else:
                ci = extract_classes_from_propagation(prop_text) if prop_text else {}
                chain_classes = list(dict.fromkeys(
                    ci.get("seed", [])
                    + ci.get("security", [])
                    + ci.get("callers", [])[:4]
                    + ci.get("callees", [])[:2]
                ))

            full_smali = load_smali_for_classes(
                chain_classes, smali_dir,
                max_bytes_per_file=args.max_sonnet_smali_bytes,
            )

            if full_smali:
                sonnet_msg = _build_sonnet_message(
                    d, final_result, manifest, prop_text, full_smali)
                raw_s = call_claude(
                    api_key=api_key, model=args.sonnet_model,
                    system=SYSTEM_PROMPT, user_message=sonnet_msg,
                    max_tokens=1500, temperature=0.0,
                )
                if "text" in raw_s:
                    ps = parse_json_response(raw_s.get("text", ""))
                    if "error" not in ps:
                        ps["sonnet_escalated"]      = True
                        ps["haiku_verdict"]          = final_result.get("verdict")
                        ps["pass2_triggered"]        = final_result.get("pass2_triggered", False)
                        ps["pass2_requested_files"]  = final_result.get("pass2_requested_files", [])
                        return merge_with_dolphin(d, ps)

        # ── Store LOW conf=0.0 results in class/function memory ───────────────
        # Only cache LIKELY_FP verdicts — other verdicts still need per-package
        # API calls because different packages may have different impact.
        if is_low_uncertain and final_result.get("verdict") == "LIKELY_FP":
            anchor_key = _get_anchor_key(manifest, prop_text)
            if anchor_key and anchor_key not in class_function_memory:
                mem_entry = dict(final_result)
                mem_entry["_mem_source_package"] = pkg
                class_function_memory[anchor_key] = mem_entry

        # ── Store result in cross-device shared cache ─────────────────────────
        # Cache all non-error verdicts (keyed by code content hash) so identical
        # smali across different dumps is never re-analysed.
        if shared_cache_path and final_result.get("verdict") not in ("ERROR", "DRY_RUN", None):
            sc_key = get_shared_cache_key(manifest, all_files)
            if sc_key:
                with _shared_cache_lock:
                    if sc_key not in shared_cache:
                        sc_entry = dict(final_result)
                        sc_entry["_sc_source_package"] = pkg
                        sc_entry["_sc_source_dump"]    = str(output)  # dump identifier via output path
                        shared_cache[sc_key] = sc_entry

        return merge_with_dolphin(d, final_result)

        # ── --print-context: full diagnostic output, no API call ──────────────
        if args.print_context:
            skip = args.print_package and args.print_package not in pkg
            if not skip:
                W = 70
                print(f"\n{'#' * W}")
                print(f"  FINDING: {pkg}")
                print(f"  Dolphin: {d.get('priority')} / {d.get('category')} "
                      f"(confidence {d.get('confidence', 0):.0%})")
                print(f"{'#' * W}")

                # ── 1. Propagation file ───────────────────────────────────────
                print(f"\n{'─' * W}")
                print(f"  1. PROPAGATION FILE")
                print(f"{'─' * W}")
                prop_file = prop_dir / package_to_prop_filename(pkg)
                if prop_text:
                    print(f"  Path:  {prop_file}")
                    print(f"  Size:  {len(prop_text)} chars")
                else:
                    print(f"  NOT FOUND — looked for: {prop_file}")

                # ── 2. Classes extracted from propagation ─────────────────────
                print(f"\n{'─' * W}")
                print(f"  2. CLASSES EXTRACTED FROM PROPAGATION")
                print(f"{'─' * W}")
                if classes_info:
                    for role in ("seed", "security", "callers", "callees"):
                        items = classes_info.get(role, [])
                        if not items:
                            continue
                        selected_set = {e["class"] for e in smali_manifest}
                        print(f"\n  {role.upper()} ({len(items)}):")
                        for cls in items:
                            tag = " ← selected for LLM" if cls in selected_set else ""
                            marker = "  >>>" if role in ("seed", "security") else "    "
                            print(f"  {marker}  {cls}{tag}")
                else:
                    print("  (smali-dir not set — class extraction skipped)")

                # ── 3. Slim smali reconstruction ──────────────────────────────
                print(f"\n{'─' * W}")
                print(f"  3. SLIM SMALI FILES  (--smali-dir: {smali_dir or 'not set'})")
                print(f"{'─' * W}")
                if not smali_dir:
                    print("  smali-dir not provided — no smali files will be loaded")
                elif smali_manifest:
                    for entry in smali_manifest:
                        status = entry["status"]
                        cls    = entry["class"]
                        if status == "OK" or status == "TRUNCATED_BUDGET":
                            kept    = entry.get("kept_methods", 0)
                            dropped = entry.get("dropped_methods", 0)
                            chars   = entry.get("rendered_chars", 0)
                            anchors = entry.get("anchor_methods", [])
                            tags    = entry.get("security_tags", {})

                            print(f"\n  [OK]  {cls}")
                            print(f"        path:    {entry.get('path','?')}")
                            print(f"        methods: {kept} kept, {dropped} dropped")
                            print(f"        chars:   {chars:,} sent to LLM")
                            if anchors:
                                print(f"        ANCHOR:  {', '.join(anchors)}")
                            if tags:
                                for tag, methods in sorted(tags.items()):
                                    print(f"        {tag:20s} {', '.join(methods)}")
                            else:
                                print(f"        security tags: (none found in kept methods)")
                        elif status == "NOT_FOUND":
                            print(f"\n  [--]  {cls}")
                            print(f"        NOT FOUND — searched all subdirs of {smali_dir}")
                        else:
                            print(f"\n  [!!]  {cls}  →  {status}")
                else:
                    print("  No classes were selected for loading")

                # ── 4. Full prompt ────────────────────────────────────────────
                print(f"\n{'─' * W}")
                print(f"  4. FULL PROMPT TO LLM  ({len(user_msg):,} chars total)")
                print(f"{'─' * W}")
                print()
                for line in user_msg.splitlines():
                    print(f"  {line}")

                print(f"\n{'─' * W}")
                print(f"  SYSTEM PROMPT  ({len(SYSTEM_PROMPT):,} chars)")
                print(f"{'─' * W}")
                for line in SYSTEM_PROMPT.splitlines():
                    print(f"  {line}")
                print()

            return merge_with_dolphin(d, {"verdict": "DRY_RUN"})

        # ── original --dry-run: one-line summary only ─────────────────────────
        if args.dry_run:
            ok_count = sum(1 for e in smali_manifest if e.get("status") == "OK")
            all_tags = sorted({t for e in smali_manifest for t in e.get("security_tags", {})})
            print(f"  {pkg:<55}  prop={'yes' if prop_text else 'NO ':3}  "
                  f"smali={ok_count:>2} files  tags=[{','.join(all_tags) or 'none'}]  "
                  f"prompt={len(user_msg):>5} chars")
            return merge_with_dolphin(d, {"verdict": "DRY_RUN"})

        raw = call_claude(
            api_key=api_key,
            model=args.model,
            system=SYSTEM_PROMPT,
            user_message=user_msg,
            max_tokens=1024,
            temperature=0.0,
        )

        if "error" in raw and "text" not in raw:
            return merge_with_dolphin(d, {"verdict": "ERROR", "error": raw["error"]})

        parsed = parse_json_response(raw.get("text", ""))
        return merge_with_dolphin(d, parsed)

    # ── Run ───────────────────────────────────────────────────────────────────
    results  = list(prior_results)
    errors   = 0
    start    = time.time()

    to_process = [d for d in hot_spots if d.get("file", "") not in already_done]

    def _report(i: int, total: int, pkg: str, result: dict) -> None:
        pct     = int(i / total * 100)
        bar     = "█" * (pct // 5) + "░" * (20 - pct // 5)
        verdict = result.get("verdict", "ERROR")
        suffix  = " [Sonnet]" if result.get("sonnet_escalated") else ""
        print(f"  [{i:>3}/{total}] {bar} {pct:>3}%  {pkg:<50}  → {verdict}{suffix}")

    def _is_auth_error(result: dict) -> bool:
        """Return True if the result contains an HTTP 401 authentication error."""
        err = result.get("error", "")
        return isinstance(err, str) and "HTTP 401" in err

    if args.workers <= 1:
        for i, d in enumerate(to_process, 1):
            pkg    = d.get("package", d.get("file", "?"))
            result = process_one(d)
            if result.get("verdict", "ERROR") == "ERROR":
                errors += 1
            _report(i, len(to_process), pkg, result)
            results.append(result)
            if _is_auth_error(result):
                _save(output, results)
                print(f"\nERROR: API key authentication failed (HTTP 401). "
                      f"Fix ANTHROPIC_API_KEY and re-run with --resume.",
                      file=sys.stderr)
                sys.exit(1)
            # Checkpoint every 20 findings
            if i % 20 == 0:
                _save(output, results)
                _save_memory()
                _save_shared_cache()
                print(f"  [checkpoint saved → {output}]")
            if i < len(to_process) and not args.dry_run:
                # Batch pause every N calls to avoid API exhaustion / auth errors
                if args.batch_pause_every > 0 and i % args.batch_pause_every == 0:
                    print(f"  [batch pause] {args.batch_pause_seconds:.0f}s after {i} calls ...",
                          flush=True)
                    time.sleep(args.batch_pause_seconds)
                elif args.inter_request_delay > 0:
                    time.sleep(args.inter_request_delay)
    else:
        from concurrent.futures import ThreadPoolExecutor, as_completed
        with ThreadPoolExecutor(max_workers=args.workers) as ex:
            futures = {ex.submit(process_one, d): d for d in to_process}
            done = 0
            for future in as_completed(futures):
                done   += 1
                d       = futures[future]
                result  = future.result()
                pkg     = d.get("package", "?")
                if result.get("verdict", "ERROR") == "ERROR":
                    errors += 1
                _report(done, len(to_process), pkg, result)
                results.append(result)
                if _is_auth_error(result):
                    ex.shutdown(wait=False, cancel_futures=True)
                    _save(output, results)
                    print(f"\nERROR: API key authentication failed (HTTP 401). "
                          f"Fix ANTHROPIC_API_KEY and re-run with --resume.",
                          file=sys.stderr)
                    sys.exit(1)

    # ── Sort: CONFIRMED_HIGH first, then by confidence desc ──────────────────
    results.sort(key=lambda r: (
        PRIORITY_ORDER.get(r.get("verdict", "ERROR"), 99),
        -r.get("confidence", 0),
    ))

    _save(output, results)
    _save_memory()
    _save_shared_cache()

    elapsed = time.time() - start

    # ── Summary ───────────────────────────────────────────────────────────────
    counts: dict[str, int] = {}
    for r in results:
        v = r.get("verdict", "ERROR")
        counts[v] = counts.get(v, 0) + 1

    n_sonnet = sum(1 for r in results if r.get("sonnet_escalated"))
    print(f"\n{'='*70}")
    print(f"  VALIDATION COMPLETE  |  {elapsed:.0f}s  |  {len(to_process)} validated  "
          f"|  {errors} errors  |  {n_sonnet} Sonnet escalations")
    print(f"{'='*70}")

    for label in ["CONFIRMED_HIGH", "CONFIRMED_MEDIUM", "NEEDS_INVESTIGATION", "LIKELY_FP"]:
        if not counts.get(label):
            continue
        group = [r for r in results if r.get("verdict") == label]
        print(f"\n  ── {label} ({len(group)}) " + "─" * 40)
        for r in group:
            agree    = r.get("dolphin_agreement", "?")
            conf     = r.get("confidence", 0)
            pkg      = r.get("package", "?")
            impact   = r.get("privacy_impact", "")[:80]
            escalated = " [Sonnet]" if r.get("sonnet_escalated") else ""
            print(f"    {pkg}{escalated}")
            print(f"      threat: {r.get('threat_type','?')}  confidence: {conf:.0%}  dolphin: {agree}")
            print(f"      {impact}")
            for ev in r.get("key_evidence", [])[:2]:
                print(f"      • {ev}")
            print()

    if counts.get("ERROR"):
        print(f"\n  ── ERRORS ({counts['ERROR']}) ──────────────────")
        for r in results:
            if r.get("verdict") == "ERROR":
                print(f"    {r.get('package','?')}: {r.get('error','?')}")

    n_mem_hits    = sum(1 for r in results if r.get("context_memory_hit"))
    n_sc_hits     = sum(1 for r in results if r.get("shared_cache_hit"))
    print(f"\n  Counts: {counts}")
    print(f"  Memory: {len(class_function_memory)} anchor locations cached  "
          f"|  {n_mem_hits} API calls skipped via memory  →  {mem_path}")
    if shared_cache_path:
        print(f"  SharedCache: {len(shared_cache)} entries  "
              f"|  {n_sc_hits} API calls skipped cross-device  →  {shared_cache_path}")
    print(f"  Saved:  {output}")


def _save(path: Path, results: list[dict]) -> None:
    path.write_text(json.dumps(results, indent=2, ensure_ascii=False))


def extract_classes_from_propagation(prop_text: str) -> dict[str, list[str]]:
    """
    Parse the propagation .txt and return class name lists by role.

    SKIP_PREFIXES are applied only to callers/callees to cut AOSP noise.
    Seed classes (Class: lines) are never skipped — the seed is where the
    hardcoded string lives and must be resolved regardless of namespace.
    """
    SEC_PAT = re.compile(
        r"permission|grant|policy|restrict|whitelist|allowlist|check|enforce|"
        r"install|privilege|uid|calling|sign|appops|hiddenapi",
        re.IGNORECASE,
    )
    SKIP_PREFIXES = ("java.", "sun.", "libcore.", "kotlin.", "dalvik.",
                     "android.", "com.android.", "com.google.")

    seed, callers, callees = set(), set(), set()

    for line in prop_text.splitlines():
        s = line.strip()

        # Seed: never apply SKIP — this namespace IS the finding
        if s.startswith("Class:"):
            cls = s.split(":", 1)[1].strip()
            cls = re.split(r"\$", cls)[0].strip()
            if cls and "." in cls:
                seed.add(cls)

        elif re.match(r"^\s*←", s):
            m = re.search(r"<?([\w.]+)(?:[\$:]|\s)", s.lstrip("← <"))
            if m:
                cls = m.group(1)
                if "." in cls and not any(cls.startswith(p) for p in SKIP_PREFIXES):
                    callers.add(cls)

        elif re.match(r"^\s*→", s):
            m = re.search(r"<?([\w.]+)(?:[\$:]|\s)", s.lstrip("→ <"))
            if m:
                cls = m.group(1)
                if "." in cls and not any(cls.startswith(p) for p in SKIP_PREFIXES):
                    callees.add(cls)

    security = {
        c for c in (callers | callees)
        if SEC_PAT.search(c) and c not in seed
    }

    return {
        "seed":     sorted(seed),
        "security": sorted(security),
        "callers":  sorted(callers - seed),
        "callees":  sorted(callees - seed),
    }


if __name__ == "__main__":
    main()