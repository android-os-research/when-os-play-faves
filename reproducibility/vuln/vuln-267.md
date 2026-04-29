---
id: vuln-267
vendor: Xiaomi
package: com.miui.mishare.connectivity
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-267 · `com.miui.mishare.connectivity` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.mishare.connectivity` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.miui.mishare.connectivity receives automatic default permissions via MiuiDefaultPermissionGrantPolicy without explicit user consent or runtime checks.

## Attack Surface
A pre-installed or privileged app can leverage the automatic permission grants to access sensitive capabilities (location, contacts, camera, microphone, etc.) that would normally require user approval.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 122: hardcoded package]
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I)
- → MiuiDefaultPermissionGrantPolicy.realGrantDefaultPermissions() [PERM_GRANT tag]
- → grantDefaultPermissions() invocation
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
