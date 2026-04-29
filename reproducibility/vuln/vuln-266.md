---
id: vuln-266
vendor: Xiaomi
package: com.miui.hybrid
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-266 · `com.miui.hybrid` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.hybrid` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.miui.hybrid' is automatically granted default permissions without user consent via MiuiDefaultPermissionGrantPolicy, bypassing normal permission grant workflows.

## Attack Surface
A pre-installed or privileged MIUI system app can leverage this whitelist to obtain sensitive permissions (location, contacts, camera, microphone, etc.) without explicit user approval or visibility.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 118: hardcoded 'com.miui.hybrid']
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I) [reads MIUI_GLOBAL_APPS field]
- → grantDefaultPermission() [PERM_GRANT tag]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
