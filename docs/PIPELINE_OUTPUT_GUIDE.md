# How to Interpret Pipeline Output

This guide explains every output file the pipeline produces and how to read the
JSON fields to understand findings.

---

## 1. Output Directory Structure

After a full pipeline run, your work directory looks like this:

```
<work_dir>/<vendor>/
├── step1_jars.txt                    # List of JAR/DEX files found
├── smali/                            # Decompiled smali code (Step 2)
│   ├── services/                     #   one subdirectory per JAR
│   ├── framework/
│   └── ...
├── step3_refs/
│   └── references.csv               # All hardcoded package name references
├── step3b_filtered/
│   └── references.csv               # Filtered to packages that exist as real APKs
├── step4_analysis/
│   └── soot_entry_points.txt        # Methods with security-relevant patterns
├── step5_callgraph/                  # Call graph edges (forward + backward)
├── step6_propagation/
│   └── per_package/                  # One .txt file per package — human-readable
│       ├── com_samsung_android_spayfw.txt
│       ├── com_facebook_appmanager.txt
│       └── ...
├── triage.json                       # Phase 1 results (local LLM)
├── claude_validated.json             # Phase 2 results (cloud LLM)
└── ni_recheck.json                   # Phase 2b results (NI re-evaluation)
```

---

## 2. Phase 1 Output: `triage.json`

This file contains the **local LLM (Dolphin) triage** for every candidate. It is a
JSON array where each object represents one hardcoded package/property found in
framework code.

### Fields

| Field | Type | Description |
|-------|------|-------------|
| `package` | string | The hardcoded package name (e.g., `com.samsung.android.spayfw`) |
| `file` | string | Corresponding propagation file (e.g., `com_samsung_android_spayfw.txt`) |
| `value_type` | string | Always `package_name` (system properties are pre-filtered) |
| `priority` | string | `HIGH`, `MEDIUM`, `LOW`, or `SKIP` |
| `category` | string | Classification: `privilege_escalation`, `enforcement_bypass`, `permission_grant`, `tracking`, `data_exfiltration`, `differential_treatment`, `benign_oem_feature`, `unknown` |
| `confidence` | float | Dolphin's confidence (0.0–1.0). **0.0 means uncertain** — these are always forwarded to Phase 2 regardless of priority |
| `key_findings` | list[str] | Enforcement patterns detected: `allowlist_check`, `early_return`, `permission_grant`, `string_compare`, etc. |
| `what_to_check` | string | Dolphin's suggestion for manual verification |
| `reasoning` | string | 2-3 sentence explanation of the classification |
| `occurrence_count` | int | How many times this package appears across all JARs |
| `enforcement_patterns` | string | Comma-separated patterns found in smali analysis |
| `security_tags` | string | Tags from Step 4 analysis (e.g., `PERM_GRANT, PKG_QUERY`) |
| `cache_hit` | bool | Whether this result came from Dolphin's response cache |
| `content_hash` | string | SHA-1 hash of the propagation file content (for caching) |

### Priority distribution (what to expect)

For a typical Samsung device:
- **SKIP**: ~70-80% — AOSP/GMS packages, framework internals
- **LOW**: ~10-15% — analytics, feature flags, UI customization
- **HIGH**: ~3-5% — permission grants, enforcement bypasses
- **MEDIUM**: ~2-3% — allowlist checks with unclear impact

### Example entry

```json
{
  "priority": "HIGH",
  "category": "permission_grant",
  "confidence": 0.8,
  "key_findings": ["early_return", "permission_grant"],
  "what_to_check": "Check if grantRuntimePermission is called for this package",
  "reasoning": "The package appears in DefaultPermissionGrantPolicy with a direct call to grantRuntimePermission, indicating silent permission grant.",
  "package": "co.sitic.pp",
  "file": "co_sitic_pp.txt",
  "value_type": "package_name",
  "occurrence_count": 3,
  "enforcement_patterns": "early_return, permission_grant, string_compare",
  "security_tags": "PERM_GRANT, PKG_QUERY"
}
```

---

## 3. Phase 2 Output: `claude_validated.json`

This file contains the **cloud LLM (Claude Haiku) confirmation** of HIGH and MEDIUM
candidates from Phase 1. Each entry merges the original Dolphin triage with Claude's
verdict.

### Fields

**Identity fields** (carried from Phase 1):

| Field | Type | Description |
|-------|------|-------------|
| `file` | string | Propagation file name |
| `package` | string | The hardcoded package name |
| `value_type` | string | `package_name` |

**Dolphin original assessment** (prefixed with `dolphin_`):

| Field | Type | Description |
|-------|------|-------------|
| `dolphin_priority` | string | Original Phase 1 priority |
| `dolphin_category` | string | Original Phase 1 category |
| `dolphin_confidence` | float | Original Phase 1 confidence |
| `dolphin_findings` | list[str] | Original Phase 1 key findings |

**Claude verdict** (the important fields):

| Field | Type | Description |
|-------|------|-------------|
| `verdict` | string | **Final classification** — see below |
| `confirmed_tag` | string | The security tag confirmed (e.g., `PERM_GRANT`, `PKG_QUERY`) |
| `confidence` | float | Claude's confidence in the verdict (0.0–1.0) |
| `threat_type` | string | Specific threat: `permission_grant_bypass`, `appops_manipulation`, `enforcement_bypass`, etc. |
| `privacy_impact` | string | One-sentence description of what user data/capability is at risk |
| `attack_surface` | string | What a pre-installed or privileged app gains |
| `anchor_to_tag_path` | list[str] | Method chain from the hardcoded string to the security-relevant call (max 4 steps) |
| `dolphin_agreement` | string | Whether Claude agrees with Dolphin: `agree`, `disagree`, `partial` |
| `what_to_verify` | string | Specific method + line to check for runtime confirmation |

**Multi-pass fields**:

| Field | Type | Description |
|-------|------|-------------|
| `pass2_triggered` | bool | Whether a second pass with additional smali was needed |
| `pass2_requested_files` | list[str] | Extra smali files requested in pass 2 |
| `sonnet_escalated` | bool | Whether this was escalated to a more capable model |
| `haiku_verdict` | string | Original Haiku verdict (if Sonnet overrode it) |
| `error` | string | Error message if the API call failed |

### Verdict meanings

| Verdict | Meaning | Paper mapping |
|---------|---------|---------------|
| `CONFIRMED_HIGH` | Real privilege escalation with direct security impact. Permission grants, enforcement bypasses, hidden API whitelisting. | Maps to CONF_H in the paper |
| `CONFIRMED_MEDIUM` | Real but limited-impact deviation. Package queries, weakened checks, differential treatment. | Maps to CONF_M in the paper |
| `NEEDS_INVESTIGATION` | Suspicious but evidence is incomplete. Smali was truncated or branch condition is ambiguous. | Re-evaluated in Phase 2b |
| `LIKELY_FP` | False positive. Package appears only in Binder plumbing, AIDL stubs, logging, or dead code. | Filtered out |

### Example entry

```json
{
  "file": "co_sitic_pp.txt",
  "package": "co.sitic.pp",
  "value_type": "package_name",
  "dolphin_priority": "HIGH",
  "dolphin_category": "permission_grant",
  "dolphin_confidence": 0.8,
  "dolphin_findings": ["early_return", "permission_grant"],
  "verdict": "CONFIRMED_HIGH",
  "confirmed_tag": "PERM_GRANT",
  "confidence": 0.95,
  "threat_type": "permission_grant_bypass",
  "privacy_impact": "The package 'co.sitic.pp' receives default system permissions (PHONE, CONTACTS, LOCATION, CAMERA, MICROPHONE) without user consent during setup.",
  "attack_surface": "A pre-installed app with package name 'co.sitic.pp' gains automatic access to sensitive user data.",
  "anchor_to_tag_path": [
    "grantDefaultSystemHandlerPermissions() [ANCHOR: v0 := 'co.sitic.pp']",
    "→ PackageManagerWrapper.getPackageInfo() [PKG_QUERY]",
    "→ grantRuntimePermissions() [PERM_GRANT]"
  ],
  "dolphin_agreement": "agree",
  "what_to_verify": "In DefaultPermissionGrantPolicy.smali, verify 'co.sitic.pp' flows into grantRuntimePermissions()."
}
```

---

## 4. Phase 2b Output: `ni_recheck.json`

Contains re-evaluated NEEDS_INVESTIGATION items. Same field structure as
`claude_validated.json`, but with two key differences:

- The full smali files are sent (no size budget truncation)
- Items that remain NEEDS_INVESTIGATION after Haiku are escalated to Sonnet

Check `sonnet_escalated: true` to see which items were escalated.

---

## 5. Propagation Traces: `step6_propagation/per_package/*.txt`

These are **human-readable** reports — the most useful file for manual review.

### Structure of a propagation file

```
######################################################################
# Propagation: com.samsung.android.spayfw
######################################################################

JARs:                 service-samsung-payment, services
Classes:              4
Occurrences:          9
Usage types:          invoke
Enforcement patterns: allowlist_check, early_return, permission_grant, ...
Security tags:        PERM_CHECK, PERM_GRANT, PKG_QUERY, UID_CHECK

────────────────────────────────────────────────────────────
Occurrence #1
────────────────────────────────────────────────────────────
  JAR:      service-samsung-payment
  Class:    com.android.server.spay.UpdateReceiver$2
  Method:   void handleMessage(android.os.Message)
  Line:     359
  Register: v3 := "com.samsung.android.spayfw"
  Usage:    [invoke] invoke-static {v1, v3}, Utils;->backgroundWhitelist(...)
  Patterns: string_compare, early_return

  CALLEES (what this method invokes):
      → Utils.backgroundWhitelist()
        → ActivityManager.backgroundAllowlistUid()     ← privilege grant
        → PackageManager.getApplicationInfo() [PKG_QUERY]

  CALLERS (who invokes this method):
      ← Handler.dispatchMessage()
```

### Key things to look for

| Section | What it tells you |
|---------|-------------------|
| **JARs** | Which framework JARs contain the reference — vendor-specific JARs (e.g., `service-samsung-*`) indicate OEM code |
| **Occurrences** | How many code locations reference this package |
| **Security tags** | Which security-relevant APIs are reachable from the reference |
| **Register + Usage** | The exact smali instruction where the package name is used |
| **CALLEES** | Forward call chain — follow this to find the privilege grant |
| **CALLERS** | Backward call chain — shows what triggers this code path |

---

## 6. Step 3 References: `references.csv`

Raw CSV of all hardcoded package references found in smali:

```csv
package,jar,class,method,line,register,usage,patterns
com.samsung.android.spayfw,service-samsung-payment,com.android.server.spay.Utils,backgroundWhitelist,113,v3,invoke,string_compare
```

---

## 7. Filtering the Results

### Quick commands to explore findings

```bash
# Count verdicts
python3 -c "
import json
from collections import Counter
d = json.load(open('claude_validated.json'))
for k, v in Counter(x['verdict'] for x in d).most_common():
    print(f'  {k}: {v}')
"

# List all CONFIRMED_HIGH packages
python3 -c "
import json
d = json.load(open('claude_validated.json'))
for x in sorted(d, key=lambda x: x['package']):
    if x['verdict'] == 'CONFIRMED_HIGH':
        print(f\"  {x['package']} — {x['confirmed_tag']}\")
"

# Show detailed evidence for a specific package
python3 -c "
import json
d = json.load(open('claude_validated.json'))
for x in d:
    if x['package'] == 'com.samsung.android.spayfw':
        print(json.dumps(x, indent=2))
"

# Group findings by confirmed_tag
python3 -c "
import json
from collections import Counter
d = json.load(open('claude_validated.json'))
confirmed = [x for x in d if x['verdict'].startswith('CONFIRMED')]
for k, v in Counter(x['confirmed_tag'] for x in confirmed).most_common():
    print(f'  {k}: {v}')
"
```

### Mapping to paper terminology

| Pipeline field | Paper term |
|----------------|------------|
| `CONFIRMED_HIGH` | CONF_H |
| `CONFIRMED_MEDIUM` | CONF_M |
| `NEEDS_INVESTIGATION` | NI (re-evaluated in Phase 2b) |
| `LIKELY_FP` | FP (filtered out) |
| `confirmed_tag: PERM_GRANT` | CS (Capability Strengthening) |
| `confirmed_tag: APPOPS` | CS (Capability Strengthening) |
| All other confirmed_tags | RS (Restriction Softening) |
