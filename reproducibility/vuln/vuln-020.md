---
id: vuln-020
vendor: MIUI
package: com.miui.personalassistant
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-020 · `com.miui.personalassistant` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.personalassistant` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.miui.personalassistant is hardcoded into an auto-start allowlist that bypasses normal AppOps restrictions, granting it persistent background execution privileges without user consent.

## Attack Surface
A pre-installed MIUI system app gains exemption from auto-start restrictions and can execute background tasks that would normally be subject to AppOps policy enforcement, enabling persistent telemetry, data collection, or surveillance.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() line 37: const-string 'com.miui.personalassistant'`
- `ArraySet.add() → sAutoStartRestrictions static field`
- `Implicit: sAutoStartRestrictions used by AppOps enforcement logic to bypass restrictions`
```

## Affected Firmware Images
- claude_redmi_validated
