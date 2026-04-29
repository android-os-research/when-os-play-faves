---
id: vuln-103
vendor: Samsung
package: com.nttdocomo.android.remotelock
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-103 · `com.nttdocomo.android.remotelock` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.nttdocomo.android.remotelock` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package com.nttdocomo.android.remotelock is added to a NON_MDM_ADMINS exclusion list, allowing it to bypass standard MDM admin enforcement checks and gain privileged access to device management APIs without proper authorization.

## Attack Surface
A pre-installed or privileged app (NTT Docomo remote lock service) can invoke enterprise device management functions that would normally require active admin status, potentially enabling unauthorized device control, data access, or policy manipulation.

## Call Graph
```
- EnterpriseDeviceManagerServiceImpl.<clinit>() line 427: adds com.nttdocomo.android.remotelock to NON_MDM_ADMINS list
- → EnterpriseDeviceManagerServiceImpl.enforceActiveAdminPermissionByContext() uses NON_MDM_ADMINS for permission bypass logic
- → DevicePolicyManagerService.isSamsungInternalAdmin() line 61388: string comparison gates admin status
- → IPackageManager.getApplicationInfo() [PKG_QUERY] invoked to verify package installation
```

