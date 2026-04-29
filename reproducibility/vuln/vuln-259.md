---
id: vuln-259
vendor: Xiaomi
package: com.lbe.security.miui
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-259 · `com.lbe.security.miui` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.lbe.security.miui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.lbe.security.miui is granted runtime permissions without user consent via grantRuntimePermissionAsUser() in SecurityManagerService.checkGrantPermissionPkg().

## Attack Surface
A pre-installed or privileged OEM service can automatically grant sensitive runtime permissions to com.lbe.security.miui (LBE Security, a third-party app) without user interaction or visibility, bypassing normal permission grant flows.

## Call Graph
```
- SecurityManagerService.checkGrantPermissionPkg() [ANCHOR: line 1635]
- → grantRuntimePermissionAsUser() [PERM_GRANT]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
