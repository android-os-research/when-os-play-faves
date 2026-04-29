---
id: vuln-109
vendor: Samsung
package: com.samsung.android.app.reminder
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-109 · `com.samsung.android.app.reminder` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.reminder` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.app.reminder' receives default runtime permissions (PHONE, CONTACTS, SMS, MICROPHONE, CAMERA, NOTIFICATION, LOCATION) without user consent or signature verification, enabling unauthorized access to sensitive user data.

## Attack Surface
A pre-installed Samsung reminder app gains privileged access to call logs, contacts, messages, microphone, camera, location, and notifications through the default permission grant mechanism, bypassing normal permission checks.

## Call Graph
```
- grantDefaultSystemHandlerPermissions() [line 3566, v1 := 'com.samsung.android.app.reminder']
- → grantDefaultPermissionsToDefaultSystemSmsApp() [PERM_GRANT]
- → grantPermissionsToSystemPackage() [PERM_GRANT]
- → grantRuntimePermissions() [direct permission grant invocation]
```

