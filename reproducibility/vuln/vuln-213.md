---
id: vuln-213
vendor: Vivo
package: com.yozo.vivo.office
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-213 · `com.yozo.vivo.office` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.yozo.vivo.office` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package com.yozo.vivo.office is granted persistent URI permissions (READ_URI_PERMISSION and WRITE_URI_PERMISSION flags=3) to access arbitrary content provider URIs without user consent or permission checks.

## Attack Surface
A pre-installed or privileged app can invoke takePkgPersistableUriPermission() to grant com.yozo.vivo.office persistent access to any URI (files, contacts, calendar, etc.) that the system has access to, bypassing normal Android permission model.

## Call Graph
```
- takePkgPersistableUriPermission() [ANCHOR at line 560]
- → ContentResolver.takePersistableUriPermission(packageName, uri, flags)
- → PERM_GRANT (implicit: grants URI permission to hardcoded package)
```

