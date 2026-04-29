---
id: vuln-166
vendor: Transsion
package: com.transsion.smartpanel
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-166 · `com.transsion.smartpanel` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.smartpanel` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
com.transsion.smartpanel gains unrestricted access to ContentProvider URIs without standard permission enforcement, bypassing read/write permission checks.

## Attack Surface
A pre-installed or privileged app (com.transsion.smartpanel) can query any exported ContentProvider without holding required READ/WRITE permissions, accessing sensitive data from other apps' providers.

## Call Graph
```
- ContentProvider.enforceReadPermissionInner() line 1009
- → String.equals() check for 'com.transsion.smartpanel'
- → Early return with v11 (0) bypassing permission denial
- → Caller gains unrestricted URI access
```

