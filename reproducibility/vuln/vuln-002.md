---
id: vuln-002
vendor: MIUI
package: com.cleanmaster.sdk
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-002 · `com.cleanmaster.sdk` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.cleanmaster.sdk` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.cleanmaster.sdk' is added to a whitelist (sAutoStartRestrictions) that likely exempts it from AppOps enforcement, allowing unrestricted access to sensitive operations without user consent.

## Attack Surface
A pre-installed or privileged app (com.cleanmaster.sdk) gains exemption from AppOps restrictions, potentially allowing it to perform sensitive operations (camera, microphone, location, etc.) without triggering AppOps checks or user-facing permission prompts.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions ArraySet`
- `Line 53: const-string 'com.cleanmaster.sdk' added to v0 (sAutoStartRestrictions)`
- `ArraySet.add() populates the whitelist`
- `This set is used to bypass or weaken AppOps enforcement (inferred from field name and context)`
```

## Affected Firmware Images
- claude_redmi_validated
