---
id: vuln-022
vendor: MIUI
package: com.miui.securityadd
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-022 · `com.miui.securityadd` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.securityadd` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.miui.securityadd is hardcoded into an auto-start restrictions whitelist, bypassing AppOps enforcement for background execution and potentially other restricted operations.

## Attack Surface
A pre-installed or privileged app (com.miui.securityadd) gains exemption from AppOps restrictions on auto-start and background execution, allowing it to run without user consent or visibility controls.

## Call Graph
```
- `<clinit>() line 55: const-string 'com.miui.securityadd'`
- `ArraySet.add() → sAutoStartRestrictions field`
- `sAutoStartRestrictions checked in AppOps enforcement logic (inferred from field name and context)`
```

## Affected Firmware Images
- claude_redmi_validated
