---
id: vuln-269
vendor: Xiaomi
package: com.miui.player
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-269 · `com.miui.player` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.player` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.miui.player' receives default system permissions without user consent via MiuiDefaultPermissionGrantPolicy.

## Attack Surface
A pre-installed or privileged OEM app (com.miui.player) gains automatic permission grants that should normally require user approval, potentially accessing sensitive device capabilities like location, contacts, microphone, or camera.

## Call Graph
```
- com.android.server.pm.MiuiDefaultPermissionGrantPolicy.<clinit>() [line 128: hardcoded 'com.miui.player']
- → com.android.server.pm.MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I) [occurrence #8: field_read MIUI_GLOBAL_APPS]
- → implicit PERM_GRANT via default permission policy application
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
