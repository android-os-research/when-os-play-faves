---
id: vuln-089
vendor: OnePlus
package: com.oplus.onet
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-089 · `com.oplus.onet` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.onet` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.onet' is queried to determine version and presence without permission checks, enabling differential treatment of a privileged OEM package.

## Attack Surface
A pre-installed or privileged app can leverage these utility methods to detect, version-check, and conditionally enable features for com.oplus.onet without user consent or audit trail.

## Call Graph
```
- if.do(I) [line 260]: const-string 'com.oplus.onet'
- → if.do(I) [line 261]: PackageManager.getPackageInfo(v0, v1) — PKG_QUERY
- → if.do() [line 114]: const-string 'com.oplus.onet' + String.equals() comparison
- → if.if() [line 3]: const-string 'com.oplus.onet' + Intent.setPackage() + queryIntentServices() — PKG_QUERY
```

