---
id: vuln-019
vendor: MIUI
package: com.miui.packageinstaller
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-019 · `com.miui.packageinstaller` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.packageinstaller` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.packageinstaller' is granted sensitive runtime permissions (READ_EXTERNAL_STORAGE, WRITE_EXTERNAL_STORAGE, READ_PHONE_STATE) without user consent or dynamic checks.

## Attack Surface
A pre-installed or privileged OEM app can invoke grantMiuiPackageInstallerPermssions() to unconditionally grant dangerous permissions to the MIUI package installer, bypassing normal permission grant flows and user awareness.

## Call Graph
```
- `grantMiuiPackageInstallerPermssions() [line 358]`
- `const-string v5, 'com.miui.packageinstaller' [line 366]`
- `PermissionManagerService.grantRuntimePermission(v5, v3, v6) [line 367]`
```

## Affected Firmware Images
- claude_redmi_validated
