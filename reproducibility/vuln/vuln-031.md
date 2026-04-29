---
id: vuln-031
vendor: MIUI
package: com.xiaomi.gamecenter.sdk.service
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: appops_manipulation
---

# vuln-031 · `com.xiaomi.gamecenter.sdk.service` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.gamecenter.sdk.service` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package com.xiaomi.gamecenter.sdk.service is added to an allowlist (sAutoStartRestrictions) that exempts it from auto-start restrictions, granting it persistent background execution capability without user consent.

## Attack Surface
A pre-installed or privileged app can leverage this allowlist to bypass auto-start restrictions and maintain background execution, potentially enabling persistent telemetry, data exfiltration, or resource abuse.

## Call Graph
```
- `<clinit>() line 50: const-string 'com.xiaomi.gamecenter.sdk.service'`
- `ArraySet.add() → sAutoStartRestrictions field`
- `Implicit: allowlist checked in AppOps enforcement (not shown in slim, but call chain indicates PKG_MGMT)`
```

## Affected Firmware Images
- claude_redmi_validated
