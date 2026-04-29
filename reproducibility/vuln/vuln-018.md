---
id: vuln-018
vendor: MIUI
package: com.miui.misound
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-018 · `com.miui.misound` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.misound` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.misound' is added to an allowlist (sAutoStartRestrictions or sAllowAutoStartPkgs) that likely exempts it from AppOps restrictions, allowing it to perform restricted operations without user consent or visibility.

## Attack Surface
A pre-installed audio service (com.miui.misound) gains exemption from AppOps enforcement, potentially allowing unrestricted access to microphone, camera, location, or other sensitive operations that would normally be gated by AppOps checks.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions/sAllowAutoStartPkgs ArraySet`
- `com.miui.misound added to allowlist via ArraySet.add()`
- `Allowlist checked in AppOps enforcement logic (not visible in slim file)`
- `APPOPS bypass for whitelisted package`
```

## Affected Firmware Images
- claude_redmi_validated
