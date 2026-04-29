---
id: vuln-064
vendor: Nokia
package: com.aura.services.tmobile
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-064 · `com.aura.services.tmobile` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.aura.services.tmobile` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.aura.services.tmobile' receives default permissions automatically during system boot without user consent or visibility.

## Attack Surface
A pre-installed T-Mobile OEM service gains privileged permissions (likely including location, contacts, SMS, camera, microphone) at boot time, enabling data exfiltration or surveillance capabilities.

## Call Graph
```
- PackageManagerService.systemReady() [line 19794: v10 := 'com.aura.services.tmobile']
- → invoke-interface LegacyPermissionManagerInternal.grantDefaultPermissionsToTmobileApp()
- → LegacyPermissionManagerInternal.grantDefaultPermissions() [PERM_GRANT tag]
```

