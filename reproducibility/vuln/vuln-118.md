---
id: vuln-118
vendor: Samsung
package: com.samsung.android.knox.kpecore
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-118 · `com.samsung.android.knox.kpecore` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.knox.kpecore` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.knox.kpecore' is whitelisted to bypass direct permission check APIs, allowing it to query package information and permissions without standard enforcement.

## Attack Surface
A pre-installed or privileged app matching this package name gains the ability to call direct permission check APIs (bypassing normal permission enforcement) and query sensitive package/permission information about other apps.

## Call Graph
```
- <clinit>: line 309 — const-string v5, 'com.samsung.android.knox.kpecore'
- → <clinit>: line 309 — filled-new-array into allowToUsingDirectPermissionCheckAPI
- → checkCallerIsKPECore: [inferred] — checks if caller is in allowToUsingDirectPermissionCheckAPI list
- → PKG_QUERY enforcement: caller bypasses standard permission checks
```

