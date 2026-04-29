---
id: vuln-114
vendor: Samsung
package: com.samsung.android.dck.timesync
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-114 · `com.samsung.android.dck.timesync` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.dck.timesync` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.dck.timesync' receives default system permissions (PHONE, CONTACTS, SMS, LOCATION, CAMERA, MICROPHONE, STORAGE, NOTIFICATION) without user consent or signature verification, enabling unauthorized access to sensitive user data.

## Attack Surface
A pre-installed Samsung system app gains privileged access to call logs, contacts, SMS, location, camera, microphone, and storage without any runtime permission checks or user interaction.

## Call Graph
```
- grantDefaultSystemHandlerPermissions() [line 3714, v1 := 'com.samsung.android.dck.timesync']
- → grantPermissionToEachSystemPackage() [PERM_GRANT invocation]
- → grantRuntimePermissions() [direct permission grant with fixed=true]
- → updatePermissionFlags() [PERM_FLAGS] + permission state modification
```

