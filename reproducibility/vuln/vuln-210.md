---
id: vuln-210
vendor: Vivo
package: com.vivo.vdfs
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-210 · `com.vivo.vdfs` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.vdfs` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.vdfs' is queried without permission checks, allowing privileged code to detect and interact with a system service package, potentially enabling unauthorized service binding or metadata extraction.

## Attack Surface
A pre-installed app using CoWorkKit can bind to com.vivo.vdfs service and extract its metadata (vivo.vdfs.service.version) without explicit permission enforcement. CgrpUtils initializes system properties that may gate resource management decisions for this package.

## Call Graph
```
- CoWorkKit.getVdfsVersion() [line 313: const-string 'com.vivo.vdfs']
- → PackageManager.getApplicationInfo(String, int) [line 314: PKG_QUERY]
- → ApplicationInfo.metaData.getInt() [line 315: metadata extraction]
```

