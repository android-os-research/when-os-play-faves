---
id: vuln-068
vendor: Nokia
package: com.metropcs.metrozone
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-068 · `com.metropcs.metrozone` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.metropcs.metrozone` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.metropcs.metrozone' receives default permissions automatically during system boot without user consent or visibility.

## Attack Surface
A pre-installed OEM app (com.metropcs.metrozone) gains privileged permissions (likely LOCATION, CONTACTS, CALENDAR, SMS, CALL_LOG based on TMOAPPAURA_PERMISSIONS and TMOAPPNOTIFICATIONS_PERMISSIONS static fields) at system startup, bypassing normal permission grant flows.

## Call Graph
```
- PackageManagerService.systemReady() [line 19805: v10 := 'com.metropcs.metrozone']
- → invoke-interface LegacyPermissionManagerInternal.grantDefaultPermissionsToTmobileApp()
- → [PERM_GRANT] grantDefaultPermissions() or grantRuntimePermission()
```

