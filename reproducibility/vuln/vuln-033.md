---
id: vuln-033
vendor: MIUI
package: com.xiaomi.misubscreenui
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-033 · `com.xiaomi.misubscreenui` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.misubscreenui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package com.xiaomi.misubscreenui is added to an allowlist (sAutoStartRestrictions or sAllowAutoStartPkgs) that likely exempts it from AppOps restrictions, granting it unrestricted access to sensitive operations without user consent.

## Attack Surface
A pre-installed Xiaomi app gains automatic exemption from AppOps enforcement, allowing it to perform background operations (autostart, network access, location, etc.) that would normally be restricted or require user permission.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions ArraySet`
- `const-string adds com.xiaomi.misubscreenui to allowlist`
- `ArraySet.add() populates the exemption list`
- `This list is queried by AppOps enforcement logic (inferred from class name and field semantics)`
```

## Affected Firmware Images
- claude_redmi_validated
