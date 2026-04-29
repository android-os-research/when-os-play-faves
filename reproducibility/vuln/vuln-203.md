---
id: vuln-203
vendor: Vivo
package: com.vivo.globalsearch
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-203 · `com.vivo.globalsearch` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.globalsearch` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.globalsearch' is queried to obtain its UID, which is then cached and used for differential access control decisions without user visibility.

## Attack Surface
A pre-installed or privileged app could spoof the global search package identity or exploit the cached UID mechanism to bypass firewall restrictions intended for other apps.

## Call Graph
```
- isGlobalSearchUid(I) [ANCHOR]
- → const-string 'com.vivo.globalsearch'
- → IPackageManager.getApplicationInfo() [PKG_QUERY]
- → UID cached in mGlobalSearchUid field
```

