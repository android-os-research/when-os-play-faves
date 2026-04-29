---
id: vuln-197
vendor: Vivo
package: com.vivo.dr
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-197 · `com.vivo.dr` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.dr` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.dr' is queried without permission checks, allowing the location service to silently verify and interact with a privileged OEM diagnostic package.

## Attack Surface
A pre-installed app or system service can use this proxy to detect, bind to, and communicate with the com.vivo.dr diagnostic service without explicit permission enforcement, potentially exfiltrating location data or enabling unauthorized location monitoring.

## Call Graph
```
- <init>: const-string v0, 'com.vivo.dr' → stored in DR_PKG_NAME field
- → checkServiceExists(): reads DR_PKG_NAME, constructs Intent with hardcoded package
- → checkServiceExists(): invokes PackageManager.getPackageInfo(v4='com.vivo.dr', 0) [PKG_QUERY]
- → Result cached in mLocMonitorServicePkgExist, used to gate service binding
```

