---
id: vuln-184
vendor: Unknown (GX4Pro)
package: com.dobest.dynamic
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-184 · `com.dobest.dynamic` · Unknown (GX4Pro)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (GX4Pro) |
| Package | `com.dobest.dynamic` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.dobest.dynamic' receives default system permissions (PHONE, CONTACTS, SMS, STORAGE, MICROPHONE, CAMERA, NOTIFICATION) without user consent or signature verification.

## Attack Surface
A pre-installed or privileged app can leverage this to grant itself dangerous runtime permissions to access sensitive user data (call logs, contacts, messages, location, camera, microphone) and device capabilities.

## Call Graph
```
- grantDefaultSystemHandlerPermissions() @ line 3416 loads 'com.dobest.dynamic'
- → grantPermissionsToPackage() @ line 576-579 (invoked multiple times)
- → grantRuntimePermissions() @ line 1335+ (PERM_GRANT via grantPermission())
- → PackageManagerWrapper.grantPermission() invokes actual permission grant
```

