---
id: vuln-069
vendor: Nokia
package: com.tmobile.pr.mytmobile
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-069 · `com.tmobile.pr.mytmobile` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.tmobile.pr.mytmobile` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.tmobile.pr.mytmobile' receives default permissions automatically during system boot without user consent or visibility.

## Attack Surface
A pre-installed T-Mobile OEM app gains privileged permissions (likely including location, contacts, SMS, camera, microphone) at boot time via grantDefaultPermissions, bypassing normal permission grant flows.

## Call Graph
```
- systemReady() @ line 19818: invoke-interface {v9, v10, v8, v11}, LegacyPermissionManagerInternal
- → LegacyPermissionManagerInternal.grantDefaultPermissions() [PERM_GRANT]
- → LegacyPermissionManagerInternal.grantDefaultPermissionsToTmobileApp() [PERM_GRANT]
```

