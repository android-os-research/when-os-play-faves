#!/usr/bin/env python3
"""
ni_recheck.py
=============
Re-runs Phase 2 (Claude Haiku) on all NEEDS_INVESTIGATION records from one or
more datasets, this time loading the FULL smali directory for each package
(no per-file size budget), to resolve as many NI verdicts as possible.

This targets the "slim-file truncation" root cause: items that were NI because
the anchor method was cut off can now be seen in full.

Usage
-----
# Single dataset (most common case):
  python3 ni_recheck.py \\
      --validated   /path/to/claude_samsung_validated.json \\
      --prop-dir    /path/to/samsung_results/per_package \\
      --smali-dir   /path/to/samsung_work/smali \\
      --output      ni_recheck_samsung.json

# Multiple datasets (sequential):
  python3 ni_recheck.py \\
      --validated   samsung.json vivo.json oneplus.json \\
      --prop-dirs   samsung_results/per_package vivo_results/per_package oneplus_results/per_package \\
      --smali-dirs  samsung_work/smali vivo_work/smali oneplus_work/smali \\
      --output      ni_recheck_all.json

# Use shared_verdict_cache.json instead of a validated JSON (for all_dumps / MIUI):
  python3 ni_recheck.py \\
      --cache       /path/to/haiku_pipeline_logs/shared_verdict_cache.json \\
      --prop-dir    /path/to/all_dumps_results/per_package \\
      --smali-dir   /path/to/all_dumps_work/smali \\
      --output      ni_recheck_alldumps.json

Options
-------
  --file-budget   Max bytes per smali file to include (0 = no limit). Default 0.
  --max-files     Max smali files per package (0 = no limit). Default 0.
  --delay         Seconds between API calls (default 2).
  --resume        Skip packages already in --output file.
  --dry-run       Print what would be sent, make no API calls.

Environment
-----------
  ANTHROPIC_API_KEY   Required.
"""

from __future__ import annotations

import argparse
import json
import os
import re
import ssl
import sys
import time
import urllib.error
import urllib.request
from pathlib import Path
from typing import Optional

try:
    import certifi
    _SSL_CTX = ssl.create_default_context(cafile=certifi.where())
except ImportError:
    _SSL_CTX = ssl._create_unverified_context()


# ─────────────────────────────────────────────────────────────────
# Constants
# ─────────────────────────────────────────────────────────────────

HAIKU_MODEL     = "claude-haiku-4-5-20251001"
NI_VERDICTS     = {"NEEDS_INVESTIGATION", "NEEDS_INV"}
CONFIRMED       = {"CONFIRMED_HIGH", "CONFIRMED_MEDIUM"}
VALID_VERDICTS  = {"CONFIRMED_HIGH", "CONFIRMED_MEDIUM", "NEEDS_INVESTIGATION", "LIKELY_FP"}

SYSTEM_PROMPT = """\
You are an expert Android security researcher analysing OEM-modified Android framework bytecode.

You will receive:
  1. A Dolphin (local LLM) initial triage assessment
  2. A step-6 propagation trace showing the call chain around a hardcoded package string
  3. COMPLETE smali bytecode for the most relevant classes in the chain
     (no size truncation — you have the full method bodies)

Your job: confirm or refute the finding and assign ONE of four verdicts.

Security-tag taxonomy
---------------------
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
  A suspicious tag is reachable but even the full smali is insufficient to
  determine the outcome — typically because the decisive logic is in native code,
  a runtime-only value (carrier flag, hardware register), or a separate process.
  State exactly what is still blocking resolution.

LIKELY_FP
  No security-relevant call reachable from the anchor. The package string
  appears only in Binder/AIDL plumbing, logging, dead code, or a cosmetic feature.

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
  "what_to_verify":     "specific method name + line pattern to confirm or deny at runtime",
  "ni_resolution":      "what the full smali revealed that was previously unclear (or 'still_unclear: <reason>')"
}"""


# ─────────────────────────────────────────────────────────────────
# Smali loading — full directory, no size cap by default
# ─────────────────────────────────────────────────────────────────

def load_full_smali(smali_dir: Path, package: str,
                    file_budget: int = 0,
                    max_files: int = 0) -> Optional[str]:
    """
    Load smali files for a package from the full (non-slim) smali directory.

    Handles all observed layouts:
      1. smali_dir/<jar_name>/com/example/pkg/*.smali  (standard baksmali output)
      2. smali_dir/com_example_pkg/*.smali              (flat underscore)
      3. smali_dir/com/example/pkg/*.smali              (dot-path without jar wrapper)

    file_budget: max bytes per file (0 = no limit).
    max_files:   max number of files to include (0 = no limit); picks largest first.
    """
    if not smali_dir or not smali_dir.exists():
        return None

    # Build the expected tail path: com/sec/android/fotaclient
    pkg_parts = package.split(".")
    pkg_tail  = "/".join(pkg_parts)          # used for string matching
    pkg_flat  = package.replace(".", "_")    # com_sec_android_fotaclient

    candidates: list[Path] = []

    # Strategy 1 (most robust): rglob all .smali files and keep those whose
    # parent path ends with the package directory structure.
    for smali_file in smali_dir.rglob("*.smali"):
        normalized = smali_file.parent.as_posix()
        if normalized.endswith(pkg_tail):
            candidates.append(smali_file)

    # Strategy 2: flat underscore dir directly in smali_dir
    flat_dir = smali_dir / pkg_flat
    if flat_dir.is_dir():
        candidates.extend(flat_dir.glob("*.smali"))

    # Deduplicate by resolved path
    seen: set[Path] = set()
    unique: list[Path] = []
    for c in candidates:
        r = c.resolve()
        if r not in seen:
            seen.add(r)
            unique.append(c)

    if not unique:
        return None

    # Sort: largest files first (most content), then alphabetical
    unique.sort(key=lambda f: (-f.stat().st_size, f.name))

    if max_files and len(unique) > max_files:
        unique = unique[:max_files]

    parts: list[str] = []
    total_bytes = 0
    for f in unique:
        content = f.read_text(errors="replace")
        if file_budget and len(content) > file_budget:
            content = content[:file_budget] + f"\n// ... [truncated at {file_budget} bytes]"
        parts.append(f"// === {f.name} ===\n{content}")
        total_bytes += len(content)

    return f"// {len(parts)} smali file(s), {total_bytes:,} bytes total\n\n" + "\n\n".join(parts)


def load_propagation(prop_dir: Optional[Path], package: str) -> Optional[str]:
    if not prop_dir or not prop_dir.exists():
        return None
    fname = package.replace(".", "_") + ".txt"
    for candidate in [prop_dir / fname, prop_dir / fname.lower()]:
        if candidate.exists():
            return candidate.read_text(errors="replace")
    # fuzzy match
    for f in prop_dir.iterdir():
        if f.stem.lower() == fname[:-4].lower():
            return f.read_text(errors="replace")
    return None


# ─────────────────────────────────────────────────────────────────
# API call
# ─────────────────────────────────────────────────────────────────

def call_claude(api_key: str, user_message: str,
                max_tokens: int = 1536, temperature: float = 0.0) -> dict:
    payload = {
        "model":       HAIKU_MODEL,
        "max_tokens":  max_tokens,
        "temperature": temperature,
        "system":      SYSTEM_PROMPT,
        "messages":    [{"role": "user", "content": user_message}],
    }
    body = json.dumps(payload).encode()
    for attempt in range(8):
        req = urllib.request.Request(
            "https://api.anthropic.com/v1/messages",
            data=body, method="POST",
            headers={
                "Content-Type":      "application/json",
                "x-api-key":         api_key,
                "anthropic-version": "2023-06-01",
            },
        )
        try:
            with urllib.request.urlopen(req, timeout=120, context=_SSL_CTX) as resp:
                raw = resp.read().decode()
            data = json.loads(raw)
            text = "".join(b.get("text", "") for b in data.get("content", [])
                           if b.get("type") == "text")
            return {"text": text, "usage": data.get("usage", {})}
        except urllib.error.HTTPError as e:
            if e.code == 429:
                wait = 60 * (2 ** attempt)
                try:
                    reset = (e.headers.get("anthropic-ratelimit-requests-reset") or
                             e.headers.get("anthropic-ratelimit-tokens-reset", ""))
                    if reset:
                        import datetime
                        ts   = datetime.datetime.fromisoformat(reset.rstrip("Z") + "+00:00").timestamp()
                        wait = max(10, ts - time.time() + 60)
                except Exception:
                    pass
                print(f"  [rate_limit] 429 — sleeping {wait:.0f}s", flush=True)
                time.sleep(wait)
                continue
            try:
                detail = e.read().decode()[:200]
            except Exception:
                detail = ""
            return {"error": f"HTTP {e.code}: {detail}"}
        except Exception as ex:
            return {"error": f"{type(ex).__name__}: {ex}"}
    return {"error": "Max retries exceeded"}


def parse_json_response(text: str) -> dict:
    clean = re.sub(r"```(?:json)?|```", "", text).strip()
    start = clean.find("{")
    if start != -1:
        clean = clean[start:]
    try:
        obj, _ = json.JSONDecoder().raw_decode(clean)
        return obj
    except json.JSONDecodeError as e:
        return {"error": f"JSON parse error: {e}", "raw": text[:400]}


# ─────────────────────────────────────────────────────────────────
# Build prompt
# ─────────────────────────────────────────────────────────────────

def build_prompt(record: dict, prop_text: Optional[str],
                 smali_text: Optional[str]) -> str:
    pkg     = record.get("package", "unknown")
    dolphin = record.get("dolphin_priority", "?")
    prev_ni = record.get("verdict", "NEEDS_INVESTIGATION")
    prev_what = record.get("what_to_verify", "")
    prev_reasoning = record.get("reasoning", "")

    lines = [
        "=== NI RECHECK — full smali provided (no size truncation) ===",
        f"Package:                  {pkg}",
        f"Dolphin Phase-1 priority: {dolphin}",
        f"Previous Phase-2 verdict: {prev_ni}",
    ]
    if prev_what:
        lines += [f"Previous 'what_to_verify': {prev_what}"]
    if prev_reasoning:
        lines += [f"Previous reasoning (brief): {prev_reasoning[:300]}"]
    lines += ["",
              "The previous run was NEEDS_INVESTIGATION, likely due to smali truncation.",
              "You now have the COMPLETE smali. Please deliver a definitive verdict.",
              ""]

    if prop_text:
        lines += ["=== Propagation trace ===",
                  prop_text[:5000],
                  ("... [trace truncated at 5000 chars]" if len(prop_text) > 5000 else ""),
                  ""]

    if smali_text:
        lines += ["=== Complete smali bytecode ===",
                  smali_text,
                  ""]
    else:
        lines += ["[WARNING: no smali found for this package — "
                  "verdict may remain NEEDS_INVESTIGATION]", ""]

    lines += ["Return ONLY the JSON verdict object."]
    return "\n".join(lines)


# ─────────────────────────────────────────────────────────────────
# Load NI records from validated JSON or shared_verdict_cache
# ─────────────────────────────────────────────────────────────────

def load_ni_records(paths: list[Path], cache_paths: list[Path]) -> list[dict]:
    records: list[dict] = []

    for p in paths:
        data = json.loads(p.read_text())
        if isinstance(data, list):
            items = data
        elif isinstance(data, dict):
            items = list(data.values())
        else:
            print(f"  [warn] unrecognised format in {p}", file=sys.stderr)
            continue
        ni = [r for r in items
              if isinstance(r, dict) and r.get("verdict", "").upper() in NI_VERDICTS]
        print(f"  {p.name}: {len(ni)} NI / {len(items)} total")
        records.extend(ni)

    for p in cache_paths:
        data = json.loads(p.read_text())
        # cache is {hash_key: record_dict} or {pkg: record_dict}
        items = list(data.values()) if isinstance(data, dict) else data
        ni = [r for r in items
              if isinstance(r, dict) and r.get("verdict", "").upper() in NI_VERDICTS]
        print(f"  {p.name} (cache): {len(ni)} NI / {len(items)} total")
        records.extend(ni)

    return records


# ─────────────────────────────────────────────────────────────────
# Main
# ─────────────────────────────────────────────────────────────────

def main() -> None:
    ap = argparse.ArgumentParser(description="Re-run Phase 2 on NI records with full smali.")
    ap.add_argument("--validated",   nargs="+", type=Path, default=[],
                    help="One or more validated JSON result files.")
    ap.add_argument("--cache",       nargs="+", type=Path, default=[],
                    help="One or more shared_verdict_cache.json files (all_dumps / MIUI).")
    ap.add_argument("--prop-dir",    type=Path, default=None,
                    help="Directory with per-package propagation .txt files.")
    ap.add_argument("--smali-dir",   type=Path, required=True,
                    help="Root smali directory (full, untruncated).")
    ap.add_argument("--output",      type=Path, default=Path("ni_recheck_results.json"),
                    help="Output JSON file.")
    ap.add_argument("--file-budget", type=int, default=0,
                    help="Max bytes per smali file (0 = no limit).")
    ap.add_argument("--max-files",   type=int, default=0,
                    help="Max smali files per package (0 = no limit).")
    ap.add_argument("--delay",       type=float, default=2.0,
                    help="Seconds between API calls.")
    ap.add_argument("--resume",      action="store_true",
                    help="Skip packages already in output file.")
    ap.add_argument("--dry-run",     action="store_true",
                    help="Print prompts, make no API calls.")
    args = ap.parse_args()

    api_key = os.environ.get("ANTHROPIC_API_KEY", "")
    if not api_key and not args.dry_run:
        sys.exit("ERROR: ANTHROPIC_API_KEY not set.")

    # Load existing results for resume
    existing: dict[str, dict] = {}
    if args.resume and args.output.exists():
        existing = json.loads(args.output.read_text())
        print(f"Resuming: {len(existing)} packages already processed.")

    # Load NI records
    print("\nLoading NI records...")
    records = load_ni_records(args.validated, args.cache)
    print(f"Total NI records to process: {len(records)}")

    if not records:
        print("No NI records found. Check --validated / --cache paths.")
        return

    results: dict[str, dict] = dict(existing)
    promoted   = 0
    resolved_fp = 0
    still_ni   = 0
    errors     = 0
    no_smali   = 0

    for i, rec in enumerate(records, 1):
        pkg = rec.get("package", f"unknown_{i}")

        if args.resume and pkg in existing:
            continue

        print(f"\n[{i}/{len(records)}] {pkg}", flush=True)

        # Load smali and propagation
        smali_text = load_full_smali(
            args.smali_dir, pkg,
            file_budget=args.file_budget,
            max_files=args.max_files,
        )
        prop_text = load_propagation(args.prop_dir, pkg)

        if not smali_text:
            print(f"  [warn] no smali found — skipping API call")
            no_smali += 1
            results[pkg] = {
                "package":          pkg,
                "original_verdict": rec.get("verdict"),
                "new_verdict":      "NO_SMALI",
                "original_record":  rec,
            }
            continue

        n_files = smali_text.count("// ===")
        print(f"  smali: {n_files} file(s), {len(smali_text):,} chars")

        prompt = build_prompt(rec, prop_text, smali_text)

        if args.dry_run:
            print(f"  [dry-run] prompt length: {len(prompt):,} chars")
            print(f"  --- first 400 chars ---")
            print(prompt[:400])
            continue

        resp = call_claude(api_key, prompt)
        if "error" in resp:
            print(f"  ERROR: {resp['error']}")
            errors += 1
            results[pkg] = {
                "package":          pkg,
                "original_verdict": rec.get("verdict"),
                "new_verdict":      "ERROR",
                "error":            resp["error"],
                "original_record":  rec,
            }
        else:
            parsed = parse_json_response(resp["text"])
            new_v  = parsed.get("verdict", "PARSE_ERROR").upper()
            conf   = parsed.get("confidence", "?")
            ni_res = parsed.get("ni_resolution", "")
            print(f"  {rec.get('verdict')} → {new_v}  (conf={conf})")
            if ni_res:
                print(f"  ni_resolution: {ni_res[:120]}")

            if new_v in CONFIRMED:
                promoted += 1
            elif new_v == "LIKELY_FP":
                resolved_fp += 1
            elif new_v in NI_VERDICTS:
                still_ni += 1

            results[pkg] = {
                "package":          pkg,
                "original_verdict": rec.get("verdict"),
                "new_verdict":      new_v,
                "parsed":           parsed,
                "usage":            resp.get("usage", {}),
                "original_record":  rec,
            }

        # Save after each record
        args.output.write_text(json.dumps(results, indent=2))

        if i < len(records):
            time.sleep(args.delay)

    # Summary
    print("\n" + "=" * 60)
    print("NI RECHECK SUMMARY")
    print("=" * 60)
    total = len(records) - (len(existing) if args.resume else 0)
    print(f"  Records processed:   {total}")
    print(f"  → Promoted (CONF):   {promoted}  ({100*promoted/max(total,1):.1f}%)")
    print(f"  → Resolved FP:       {resolved_fp}  ({100*resolved_fp/max(total,1):.1f}%)")
    print(f"  → Still NI:          {still_ni}  ({100*still_ni/max(total,1):.1f}%)")
    print(f"  → No smali found:    {no_smali}")
    print(f"  → Errors:            {errors}")
    print(f"\nResults written to: {args.output}")


if __name__ == "__main__":
    main()
