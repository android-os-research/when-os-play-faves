---
id: vuln-088
vendor: OnePlus
package: com.oplus.nhs
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-088 · `com.oplus.nhs` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.nhs` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.nhs' is bound directly without signature verification or permission checks, allowing privileged modem/power management operations to be invoked by an OEM service.

## Attack Surface
A malicious app spoofing the com.oplus.nhs package name could intercept modem power state notifications and telemetry, or a compromised com.oplus.nhs service gains unchecked access to power/modem control APIs from TriggerModem.

## Call Graph
```
- TriggerModem.connectNhs() [ANCHOR: const-string 'com.oplus.nhs']
- → new ComponentName(pkg, service)
- → Context.bindServiceAsUser(intent, connection, flags, user)
- → implicit PKG_QUERY (no signature check before bind)
```

