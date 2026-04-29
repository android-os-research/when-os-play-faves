---
id: vuln-137
vendor: Samsung
package: com.samsung.storyservice
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-137 · `com.samsung.storyservice` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.storyservice` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.storyservice' receives runtime permissions (location, contacts, SMS, microphone, camera, etc.) without user consent or dynamic validation.

## Attack Surface
A pre-installed Samsung app gains privileged access to sensitive user data (location, contacts, messages, audio/video) by being hardcoded into the default permission grant policy, bypassing normal permission checks.

## Call Graph
```
- grantPermissionsToSysComponentsAndPrivApps() [line 5466: v0 := 'com.samsung.storyservice']
- → String.equals() check [line 5466]
- → grantRuntimePermissions() [PERM_GRANT tag]
- → grantRuntimePermissionsForSystemPackage() [PERM_GRANT tag]
```

