---
id: vuln-110
vendor: Samsung
package: com.samsung.android.app.smartscan
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-110 · `com.samsung.android.app.smartscan` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.smartscan` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.app.smartscan' receives differential treatment via PackageManager.getPackageInfoAsUser() without standard permission checks, allowing privileged introspection of its installation state and permissions.

## Attack Surface
A pre-installed system service (DualAppManagerService) can query detailed package information about smartscan without standard permission enforcement, potentially enabling selective filtering or special handling of this package in dual-app scenarios.

## Call Graph
```
- isFilteredPackage() [ANCHOR] line 412: const-string 'com.samsung.android.app.smartscan'
- → line 417: invoke PackageManager.getPackageInfoAsUser(p1, 0x80, p2)
- → line 418: iget-object requestedPermissions from PackageInfo
- → PKG_QUERY tag confirmed
```

