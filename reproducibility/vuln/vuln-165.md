---
id: vuln-165
vendor: Transsion
package: com.transsion.resolver
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-165 · `com.transsion.resolver` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.resolver` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.transsion.resolver' bypasses permission enforcement in ContentProvider.enforceReadPermissionInner(), allowing it to access protected content without proper authorization checks.

## Attack Surface
A pre-installed resolver app (com.transsion.resolver) gains unrestricted read access to any ContentProvider's data by returning 0 (permission granted) when the calling package matches, regardless of actual permission status.

## Call Graph
```
- ContentProvider.enforceReadPermissionInner() line 1004
- → String.equals(com.transsion.resolver, attributionSource.getPackageName())
- → if-eqz → return v11 (0, permission granted)
- → PERM_CHECK bypass via hardcoded package comparison
```

