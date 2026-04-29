---
id: vuln-149
vendor: Samsung
package: com.tmobile.echolocate
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-149 · `com.tmobile.echolocate` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.tmobile.echolocate` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded T-Mobile package 'com.tmobile.echolocate' receives differential treatment in force-stop policies, potentially allowing it to persist when other apps are terminated.

## Attack Surface
A pre-installed T-Mobile app gains exemption from standard process lifecycle management, enabling persistent data collection or service operation without user control.

## Call Graph
```
- <init>: const-string v3, "com.tmobile.echolocate" → iput-object v3, TMO_PKG_NAME
- → initTmoForceStopPolicy or shouldAvoidForceStopForTmoPkg (inferred from method names)
- → PKG_QUERY via PackageManager.getPackageInfo() for signature verification
```

