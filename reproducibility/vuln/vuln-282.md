---
id: vuln-282
vendor: Xiaomi
package: com.xiaomi.gamecenter
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-282 · `com.xiaomi.gamecenter` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.xiaomi.gamecenter` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.xiaomi.gamecenter receives default permissions via MiuiDefaultPermissionGrantPolicy without explicit user consent or runtime checks.

## Attack Surface
A pre-installed or compromised Xiaomi Game Center app gains elevated permissions (camera, location, contacts, etc.) automatically during system boot or package installation, bypassing normal permission grant flows.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 132: com.xiaomi.gamecenter hardcoded]
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermission() [inferred from class name and PERM_GRANT tag]
- → PackageManager.grantRuntimePermission() or equivalent
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
