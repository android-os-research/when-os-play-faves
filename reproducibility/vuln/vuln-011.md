---
id: vuln-011
vendor: MIUI
package: com.miui.cloudbackup
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-011 · `com.miui.cloudbackup` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.cloudbackup` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.cloudbackup' is granted privileged access to query and manipulate app data directories across all users without standard permission checks, enabling unauthorized data access.

## Attack Surface
A pre-installed system service (MiuiRestoreManagerService) can access internal and external app data for com.miui.cloudbackup without enforcing caller identity verification, allowing data exfiltration or manipulation if the service is compromised or misused.

## Call Graph
```
- `getInternalAppDataRootPathOrNull() [line 206: const-string 'com.miui.cloudbackup']`
- `createPackageContextAsUser(packageName, flags, userHandle) [PKG_QUERY implicit]`
- `getDataDir() on privileged context [data access without permission check]`
```

## Affected Firmware Images
- claude_redmi_validated
