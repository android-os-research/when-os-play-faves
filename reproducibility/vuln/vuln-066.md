---
id: vuln-066
vendor: Nokia
package: com.ironsrc.aura.tmo
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-066 · `com.ironsrc.aura.tmo` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.ironsrc.aura.tmo` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.ironsrc.aura.tmo' receives default permissions automatically during system boot without user consent or visibility.

## Attack Surface
A pre-installed OEM app gains privileged permissions (likely including location, contacts, SMS, camera, microphone) at boot time, enabling data exfiltration or surveillance capabilities.

## Call Graph
```
- PackageManagerService.systemReady() [line 19781: v10 := 'com.ironsrc.aura.tmo']
- → invoke-interface LegacyPermissionManagerInternal.grantDefaultPermissionsToTmobileApp()
- → LegacyPermissionManagerInternal.grantDefaultPermissions() [PERM_GRANT tag]
```

