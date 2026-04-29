---
id: vuln-120
vendor: Samsung
package: com.samsung.android.mcfserver
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-120 · `com.samsung.android.mcfserver` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.mcfserver` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package name 'com.samsung.android.mcfserver' is queried without permission checks, allowing any caller to determine if the MCF server is installed and retrieve its version code.

## Attack Surface
A malicious app can call getServiceVersionCode() to detect MCF server presence and version, enabling targeted attacks or fingerprinting of Samsung devices running this service.

## Call Graph
```
- getServiceVersionCode() [ANCHOR]
- → PackageManager.getPackageInfo('com.samsung.android.mcfserver', 0x80) [PKG_QUERY]
- → PackageInfo.getLongVersionCode() [data extraction]
```

