---
id: vuln-182
vendor: Unknown (GS5)
package: com.dobest.dynamic
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-182 · `com.dobest.dynamic` · Unknown (GS5)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (GS5) |
| Package | `com.dobest.dynamic` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.dobest.dynamic' receives dangerous runtime permissions (PHONE, CONTACTS, SMS, STORAGE, MICROPHONE, CAMERA, NOTIFICATION) without user consent or signature verification.

## Attack Surface
A pre-installed OEM app with this package name gains access to sensitive user data (call logs, contacts, messages, files, audio/video) and device capabilities (microphone, camera) by default during system initialization.

## Call Graph
```
- grantDefaultSystemHandlerPermissions() @ line 3280 [hardcoded 'com.dobest.dynamic']
- → grantPermissionsToPackage() [PERM_GRANT invocation]
- → grantRuntimePermissions() [direct permission grant via PackageManagerWrapper.grantPermission()]
- → PackageManagerWrapper.grantPermission() [PERM_GRANT tag confirmed]
```

