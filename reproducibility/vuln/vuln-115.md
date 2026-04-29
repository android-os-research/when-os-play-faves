---
id: vuln-115
vendor: Samsung
package: com.samsung.android.ipsgeofence
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-115 · `com.samsung.android.ipsgeofence` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.ipsgeofence` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.ipsgeofence' receives automatic runtime permission grants (location, contacts, SMS, phone, microphone, camera, sensors, storage) without user consent during system boot.

## Attack Surface
A pre-installed Samsung geofencing service gains privileged access to sensitive user data (location, contacts, call logs, messages, audio/video, body sensors) by being hardcoded into the default permission grant policy, bypassing normal permission request flows.

## Call Graph
```
- grantPermissionsToSysComponentsAndPrivApps() [line 5756: v0 := 'com.samsung.android.ipsgeofence']
- → String.equals() check [line 5756]
- → grantRuntimePermissions() [PERM_GRANT tag]
- → grantRuntimePermissionsForSystemPackage() [PERM_GRANT tag]
```

