---
id: vuln-134
vendor: Samsung
package: com.samsung.faceservice
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-134 · `com.samsung.faceservice` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.faceservice` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.faceservice' receives runtime permissions (camera, microphone, location, contacts, SMS, phone, sensors, storage, notifications) without user consent or dynamic validation.

## Attack Surface
A pre-installed Samsung face service app gains privileged access to sensitive user data (location, contacts, camera, microphone, SMS) and device capabilities through automatic permission grants during system initialization.

## Call Graph
```
- grantPermissionsToSysComponentsAndPrivApps() [line 5334: v0 := 'com.samsung.faceservice']
- → String.equals() check [line 5334]
- → grantRuntimePermissions() [PERM_GRANT tag]
- → grantRuntimePermissionsForSystemPackage() [PERM_GRANT tag]
```

