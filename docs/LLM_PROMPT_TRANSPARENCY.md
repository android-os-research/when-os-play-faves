# LLM Prompt Transparency

This document discloses the exact prompts used in each phase of the pipeline's LLM
analysis. Reviewers can use this to understand how findings are classified, assess
prompt quality, and reproduce results independently.

---

## Pipeline LLM Architecture

```
Step 6 propagation traces + smali code
        │
        ▼
   ┌─────────────┐
   │   Phase 1    │  Local LLM (Dolphin via Ollama)
   │   Triage     │  Classifies all candidates → HIGH / MEDIUM / LOW / SKIP
   └──────┬──────┘
          │  HIGH + MEDIUM + uncertain (confidence=0.0)
          ▼
   ┌─────────────┐
   │   Phase 2    │  Cloud LLM (Claude Haiku, temperature=0.0)
   │   Validation │  Confirms or rejects → CONFIRMED_HIGH / CONFIRMED_MEDIUM / NI / LIKELY_FP
   └──────┬──────┘
          │  NEEDS_INVESTIGATION items
          ▼
   ┌─────────────┐
   │  Phase 2b   │  Claude Haiku (full smali, no truncation)
   │  NI Recheck │  → then Sonnet escalation if still unresolved
   └─────────────┘
```

**Design rationale:** Phase 1 uses a cheap local model to filter 3,000+ candidates
down to ~200-700 for expensive cloud validation. Phase 2 uses a more capable model
with full evidence (smali code) to confirm findings. This two-phase design keeps
API costs under $5 per device while maintaining high recall.

---

## Phase 1: Local LLM Triage

**Model:** `dolphin3-r1` via Ollama (local, no API key needed)
**Temperature:** default (Ollama)
**Input:** Structured summary extracted from the Step 6 propagation trace
**Output:** JSON with priority classification

### System Prompt (Package Names)

```
You are an Android security researcher analysing how third-party package names
are hardcoded into OEM Android framework JARs.

Return ONLY a JSON object matching this schema:
{
  "priority": "HIGH|MEDIUM|LOW|SKIP",
  "category": "privilege_escalation|enforcement_bypass|permission_grant|tracking|
               data_exfiltration|differential_treatment|benign_oem_feature|unknown",
  "confidence": 0.0-1.0,
  "key_findings": ["string", ...],
  "what_to_check": "one sentence",
  "reasoning": "2-3 sentences"
}

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
  getDeviceId / getImei flowing to this package's code path → HIGH
```

### User Message Format (Phase 1)

The user message is a structured summary extracted from the propagation trace:

```
Value:                com.samsung.android.spayfw
JARs:                 service-samsung-payment, services
Total occurrences:    9
Enforcement patterns: allowlist_check, early_return, permission_grant
Security tags:        PERM_CHECK, PERM_GRANT, PKG_QUERY, UID_CHECK

--- Occurrence #1 ---
  Jar: service-samsung-payment
  Class: com.android.server.spay.UpdateReceiver$2
  Method: void handleMessage(android.os.Message)
  Patterns: string_compare, early_return
  Flow: [invoke] Utils.backgroundWhitelist() → ActivityManager...
  Direct callers: Handler.dispatchMessage()
  Security-relevant callees: backgroundAllowlistUid(), getApplicationInfo()

--- Occurrence #2 ---
  ...
```

Up to 25 occurrences are included. Each occurrence shows the JAR, class, method,
detected patterns, data flow summary, and security-relevant callers/callees.

### Pre-filtering (before LLM)

The following are filtered out **without sending to the LLM** to save cost:
- `android.*` packages (AOSP Camera2/HAL, intent namespaces)
- `com.android.*` and `com.google.android.*` (AOSP/GMS framework)
- Strings with camelCase segments (field names like `focusDistance`, not packages)
- Strings with uppercase-initial segments (Java class names like `ActivityManager`)
- Strings with fewer than 2 dot-separated segments

**Exception:** Packages containing `.cts.` are always kept (CTS test-aware behavior).

---

## Phase 2: Cloud LLM Validation

**Model:** `claude-haiku-4-5-20251001` (default; configurable via `--cloud-model`)
**Temperature:** 0.0 (deterministic)
**Input:** Dolphin's assessment + propagation trace + slim smali files
**Output:** JSON verdict with evidence chain

### System Prompt

```
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
  "threat_type":        "permission_grant_bypass | appops_manipulation | hidden_api_whitelist |
                         enforcement_bypass | data_exfiltration | installer_privilege |
                         pkg_mgmt_bypass | signature_bypass | cts_bypass |
                         telemetry_privilege | binder_plumbing | false_positive | unknown",
  "privacy_impact":     "one sentence — what user data or capability is at risk",
  "attack_surface":     "what a pre-installed or privileged app gains from this",
  "anchor_to_tag_path": ["method chain from ANCHOR to the confirmed_tag call, max 4 steps"],
  "dolphin_agreement":  "agree | disagree | partial",
  "what_to_verify":     "specific method name + line pattern to confirm or deny at runtime"
}
```

### User Message Format (Phase 2)

The user message combines three evidence sources:

```
=== Dolphin initial assessment ===
Package/value:        com.samsung.android.spayfw
Priority:             HIGH
Category:             privilege_escalation|enforcement_bypass|permission_grant
Confidence:           80%
Key findings:         allowlist_check, early_return, permission_grant
What to check:        Check if backgroundWhitelist grants background execution
Reasoning:            The package appears in a method that calls backgroundAllowlistUid...

=== Step 6 propagation trace ===
[Full propagation trace text, truncated to 4,000 characters]

=== Slim smali files ===
# Each file below shows only: class header, fields, <init>/<clinit>,
# methods that contain the hardcoded package string [ANCHOR],
# and methods that invoke security-tagged calls.
# Irrelevant methods have been stripped.

[Pre-processed smali code from relevant classes]

Confirm or deny the threat. Return ONLY the JSON verdict.
```

### Slim Smali Files

The `smali_extractor.py` module prepares "slim" smali files to stay within
context limits while preserving security-relevant code:

**What is kept:**
- Class header (`.class`, `.super`, `.source`, `.implements`)
- All field declarations
- Constructor methods (`<init>`, `<clinit>`)
- Methods containing the hardcoded package string (marked as `[ANCHOR]`)
- Methods that invoke any security-tagged API call

**What is stripped:**
- Getter/setter methods with no security relevance
- UI/layout code
- Logging-only methods
- Methods that don't touch the anchor or any security API

Each kept method is annotated with its security tags:
```smali
# ── [ANCHOR] [PERM_GRANT] [PKG_QUERY] ──
.method public static backgroundWhitelist(Landroid/content/Context;Ljava/lang/String;Z)Z
    ...
```

### Multi-Pass Logic

Phase 2 can make **two passes** per finding:

1. **Pass 1:** Send the slim smali (within a size budget). If the model returns
   `NEEDS_INVESTIGATION` and requests specific additional files, proceed to Pass 2.

2. **Pass 2:** Load the requested smali files (no size budget) and re-query.
   The model sees everything it asked for.

If Pass 2 still returns `NEEDS_INVESTIGATION`, the item moves to Phase 2b.

---

## Phase 2b: NI Re-evaluation

**Model:** Claude Haiku first, then Sonnet escalation if still unresolved
**Temperature:** 0.0
**Input:** Same as Phase 2 but with **no size budget** — full smali files are sent

Phase 2b re-evaluates items that Phase 2 marked as `NEEDS_INVESTIGATION`:

1. **Haiku retry:** Full smali for all classes in the call chain (no truncation)
2. **Sonnet escalation:** If Haiku still says NI, the item is sent to
   `claude-sonnet-4-6` (more capable model) for final judgment

The prompt structure is the same as Phase 2, with the same system prompt and
verdict schema. The only difference is the evidence scope (full smali instead of
slim files).

---

## Reproducibility Notes

### Determinism

- **Phase 1 (Dolphin):** Not fully deterministic — local LLM inference varies
  slightly between runs. Results should be directionally consistent but may differ
  in borderline cases (e.g., LOW vs. MEDIUM).

- **Phase 2 (Claude):** Temperature is set to 0.0, which minimizes variance but
  does not guarantee bit-identical outputs. Verdicts for clear cases (obvious
  PERM_GRANT or obvious Binder plumbing) are highly stable. Borderline cases
  (CONFIRMED_MEDIUM vs. NEEDS_INVESTIGATION) may occasionally vary.

### Caching

Phase 1 uses content-based caching: a SHA-1 hash of the propagation file content
is stored with each result. Re-running on the same firmware will return cached
results, ensuring identical output across runs.

Phase 2 does not cache by default. Use `--resume` to skip already-processed items
when resuming an interrupted run.

### Cost

Approximate API costs per device (Phase 2 + 2b):
- **Claude Haiku:** ~$1-3 (depending on number of candidates)
- **Claude Sonnet** (NI escalation only): ~$0.50-2 (if NI items exist)

### Model versions

The pipeline defaults are specified in `run_pipeline.sh` and can be overridden:

```bash
# Use specific models
./run_pipeline.sh dump/ work/ vendor \
    --model dolphin3-r1 \
    --cloud-model claude-haiku-4-5-20251001 \
    --sonnet-model claude-sonnet-4-6
```

The exact model IDs used in the paper's large-scale analysis are documented in
the paper's methodology section (Section IV).

---

## Source Code Reference

All prompts can be found directly in the pipeline source code:

| Component | File | Line |
|-----------|------|------|
| Phase 1 system prompt (packages) | `scripts/pipeline/phase1_llm_triage.py` | `SYSTEM_PROMPT_PACKAGE` (~line 307) |
| Phase 1 system prompt (properties) | `scripts/pipeline/phase1_llm_triage.py` | `SYSTEM_PROMPT_PROPERTY` (~line 328) |
| Phase 1 user message builder | `scripts/pipeline/phase1_llm_triage.py` | `summary_to_prompt_text()` (~line 272) |
| Phase 1 pre-filter logic | `scripts/pipeline/phase1_llm_triage.py` | `detect_value_type()` (~line 51) |
| Phase 2 system prompt | `scripts/pipeline/phase2_llm_validate.py` | `SYSTEM_PROMPT` (~line 589) |
| Phase 2 user message builder | `scripts/pipeline/phase2_llm_validate.py` | `build_user_message()` (~line 683) |
| Phase 2 slim smali extractor | `scripts/pipeline/smali_extractor.py` | `build_slim_context()` |
| Phase 2b system prompt | `scripts/pipeline/phase2b_ni_recheck.py` | Same as Phase 2 |
