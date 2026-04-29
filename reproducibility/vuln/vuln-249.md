---
id: vuln-249
vendor: Lenovo
package: com.tblenovo.launcher
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_WRITE
category: permission_grant_bypass
---

# vuln-249 · `com.tblenovo.launcher` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.tblenovo.launcher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_WRITE` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.tblenovo.launcher' is granted launcher role and system property write privileges without standard permission checks, allowing it to modify system behavior and potentially intercept user interactions.

## Attack Surface
A pre-installed OEM launcher gains the ability to set system properties and register as the preferred launcher via RoleManager without going through normal permission grant flows, bypassing user consent mechanisms.

## Call Graph
```
- CSDKManagerService$CSDKManagerServiceBinder.setLauncher() [ANCHOR with hardcoded 'com.tblenovo.launcher']
- → setPreferredLauncher()
- → setRoleDefaultApp()
- → SystemProperties.set() [SYS_PROP_WRITE] + RoleManager.addRoleHolderAsUser() [PKG_MGMT]
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
