---
id: vuln-268
vendor: Xiaomi
package: com.miui.packageinstaller
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-268 · `com.miui.packageinstaller` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.packageinstaller` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.miui.packageinstaller' is granted sensitive runtime permissions (READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE, READ_PHONE_STATE) without user consent or dynamic checks.

## Attack Surface
A pre-installed or privileged app can leverage this to grant the package installer app broad file and phone state access, enabling data exfiltration or surveillance capabilities without standard permission dialogs.

## Call Graph
```
- grantMiuiPackageInstallerPermssions() [ANCHOR] line 378
- → const-string v5, 'com.miui.packageinstaller' line 388
- → PermissionManagerService.grantRuntimePermission(v5, v3, v6, v7) line 388 [PERM_GRANT]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
