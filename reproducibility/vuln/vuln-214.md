---
id: vuln-214
vendor: MIUI
package: com.miui.contentextension
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-214 · `com.miui.contentextension` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.contentextension` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.92 |
| Threat type | permission_grant_bypass |

## Privacy Impact
com.miui.contentextension is granted dangerous runtime permissions (READ_CONTACTS, POST_NOTIFICATIONS, and others) without explicit user consent during system initialization.

## Attack Surface
A pre-installed or privileged app with package name com.miui.contentextension gains automatic dangerous permission grants at boot/OTA, bypassing normal permission grant flows and user choice mechanisms.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() → MIUI_GLOBAL_APPS array initialization (line 146)
- → grantDefaultPermissions(I) → realGrantDefaultPermissions() (line 148)
- → realGrantDefaultPermissions() → grantRuntimePermissionsLPw() (line 156)
- → grantRuntimePermissionsLPw() → PermissionManagerService.grantRuntimePermission() (line 269)
```

