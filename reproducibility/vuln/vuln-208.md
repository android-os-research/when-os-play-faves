---
id: vuln-208
vendor: Vivo
package: com.vivo.pushservice
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-208 · `com.vivo.pushservice` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.pushservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.pushservice' is granted special notification privileges without per-app permission checks, allowing it to bypass standard notification access controls.

## Attack Surface
A pre-installed or privileged app can leverage the hardcoded whitelist in GRANTED_APPS to receive notifications that would normally require explicit user permission, enabling silent tracking or data exfiltration via notification content.

## Call Graph
```
- <clinit>: const-string v3, 'com.vivo.pushservice'
- → <clinit>: filled-new-array {v2, v3, v0, v1} → GRANTED_APPS
- → enqueueNotificationWithTag: UID_CHECK via getCallingUid()
- → isVisibleForListener: PKG_QUERY implicit via GRANTED_APPS membership test
```

