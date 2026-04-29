---
id: vuln-023
vendor: MIUI
package: com.miui.thirdappassistant
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-023 · `com.miui.thirdappassistant` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.thirdappassistant` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.thirdappassistant' is added to a whitelist that grants auto-start and AppOps permission exemptions, bypassing normal permission enforcement for a pre-installed OEM app.

## Attack Surface
A pre-installed OEM app (com.miui.thirdappassistant) gains unrestricted auto-start capability and exemption from AppOps restrictions without user consent or dynamic permission checks.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions ArraySet`
- `adds 'com.miui.thirdappassistant' via ArraySet.add()`
- `sAutoStartRestrictions used by AppOps enforcement logic (inferred from class name and field usage)`
- `AppOps checks this set to bypass restrictions for whitelisted packages`
```

## Affected Firmware Images
- claude_redmi_validated
