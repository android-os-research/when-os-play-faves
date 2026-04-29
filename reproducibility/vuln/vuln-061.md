---
id: vuln-061
vendor: Lenovo
package: com.zui.resolver
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-061 · `com.zui.resolver` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.zui.resolver` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.zui.resolver' receives differential treatment in permission enforcement and content provider access checks, potentially bypassing standard security validations.

## Attack Surface
A pre-installed resolver app gains exemption from normal permission checks in ContentProvider.enforceReadPermissionInner() and enforceWritePermissionInner(), allowing it to access protected content without standard validation.

## Call Graph
```
- ContentProvider.enforceReadPermissionInner() line 1019-1020
- → PackageManager.getPackagesForUid() → package name comparison
- → String.contains('com.zui.resolver') → early return with permission bypass
- → PKG_QUERY implicit via getPackagesForUid()
```

