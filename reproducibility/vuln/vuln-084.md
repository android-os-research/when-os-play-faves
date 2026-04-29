---
id: vuln-084
vendor: OnePlus
package: com.oplus.cosa
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-084 · `com.oplus.cosa` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.cosa` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.cosa' receives special permission enforcement bypass via checkCallingOrSelfPermission, allowing it to bypass normal telephony permission checks.

## Attack Surface
A pre-installed OEM system app (com.oplus.cosa) can invoke checkRevokeByGame() to bypass telephony permission enforcement if it holds the oplus.permission.OPLUS_COMPONENT_SAFE permission, gaining unauthorized access to telephony operations.

## Call Graph
```
- checkRevokeByGame() [ANCHOR]
- → getApplicationInfo() [PKG_QUERY]
- → packageName.equals('com.oplus.cosa')
- → checkCallingOrSelfPermission() [PERM_CHECK with early_return]
```

