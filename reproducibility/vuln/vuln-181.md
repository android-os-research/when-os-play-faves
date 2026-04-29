---
id: vuln-181
vendor: Unknown (DSB0230)
package: vn.icar.appstore
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-181 · `vn.icar.appstore` · Unknown (DSB0230)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (DSB0230) |
| Package | `vn.icar.appstore` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.85 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'vn.icar.appstore' receives default runtime permissions (PHONE, CONTACTS, SMS, STORAGE, MICROPHONE, CAMERA, LOCATION) without explicit user consent during system initialization.

## Attack Surface
A pre-installed OEM app gains privileged access to sensitive user data (call logs, contacts, messages, location, camera/microphone) by being hardcoded into the default permission grant policy, bypassing normal permission request flows.

## Call Graph
```
- grantDefaultSystemHandlerPermissions() @ line 3848 [invoke-direct with 'vn.icar.appstore']
- → grantPermissionsToPackage() [PERM_GRANT]
- → grantRuntimePermissions() [PERM_GRANT]
- → PackageManagerWrapper.grantPermission() [PERM_GRANT]
```

