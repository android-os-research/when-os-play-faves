---
id: vuln-234
vendor: MIUI
package: com.miui.video
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-234 · `com.miui.video` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.video` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.miui.video' receives default runtime permissions automatically via MiuiDefaultPermissionGrantPolicy without explicit user consent or dynamic permission checks.

## Attack Surface
A pre-installed or privileged OEM app (com.miui.video) gains automatic access to sensitive permissions (camera, microphone, location, contacts, etc.) that would normally require user grant on Android 6.0+, bypassing the runtime permission model.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 126: 'com.miui.video' added to MIUI_GLOBAL_APPS array]
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I) [reads MIUI_GLOBAL_APPS field]
- → MiuiDefaultPermissionGrantPolicy.realGrantDefaultPermissions() [invokes grantDefaultPermissions() with PERM_GRANT tag]
```

