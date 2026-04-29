---
id: vuln-081
vendor: OnePlus
package: com.mediatek.simprocessor
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-081 · `com.mediatek.simprocessor` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.mediatek.simprocessor` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.mediatek.simprocessor' receives PHB (phonebook) state change broadcasts without standard permission checks, allowing it privileged access to telephony state transitions.

## Attack Surface
A pre-installed or privileged app can intercept PHB ready/not-ready state changes and potentially manipulate phonebook access or trigger state-dependent behaviors in the simprocessor package.

## Call Graph
```
- broadcastPhbStateChangedIntent(ZZ) [line 700 in RuimRecordsExt, line 1920 in SIMRecordsExt]
- → Intent.setPackage('com.mediatek.simprocessor')
- → Context.sendBroadcastAsUser(intent, UserHandle.ALL)
- → No explicit permission check before broadcast
```

