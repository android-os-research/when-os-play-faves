---
id: vuln-135
vendor: Samsung
package: com.samsung.ipservice
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-135 · `com.samsung.ipservice` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.ipservice` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.ipservice' receives automatic runtime permission grants (location, contacts, SMS, phone, microphone, camera) without user consent or system validation.

## Attack Surface
A pre-installed Samsung system app gains privileged access to sensitive user data (location, contacts, call logs, SMS) and device capabilities (microphone, camera) through hardcoded permission grants that bypass normal permission flow.

## Call Graph
```
- grantPermissionsToSysComponentsAndPrivApps() [line 5624: v0 := 'com.samsung.ipservice']
- → String.equals() check [line 5624]
- → grantRuntimePermissions() [PERM_GRANT tag]
- → grantRuntimePermissionsForSystemPackage() [PERM_GRANT tag]
```

