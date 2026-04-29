---
id: vuln-122
vendor: Samsung
package: com.samsung.android.packageinstaller
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-122 · `com.samsung.android.packageinstaller` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.packageinstaller` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.packageinstaller' is used in an allowlist check within createSessionInternal that gates package installation logic, potentially allowing privileged installation bypass for this specific package.

## Attack Surface
A pre-installed or privileged app matching this package name could bypass normal package installation constraints and session creation restrictions.

## Call Graph
```
- PackageInstallerService.createSessionInternal() [line 3409: String.equals(com.samsung.android.packageinstaller)]
- → if-eqz branch [early_return with const 0x10401c]
- → Computer.getApplicationInfo() [PKG_QUERY tag]
- → Computer.checkUidPermission() [permission check]
```

