---
id: vuln-154
vendor: Transsion
package: com.afiro.infinite
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-154 · `com.afiro.infinite` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.afiro.infinite` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.afiro.infinite' is passed to PolicyBpManager methods that record and log app lifecycle events (force-stop, idle-clean, one-key-clean, auto-clean) without permission checks, allowing telemetry collection on a specific app.

## Attack Surface
A pre-installed system app or privileged process can use this to selectively monitor, log, and potentially trigger cleanup actions on 'com.afiro.infinite' without standard permission enforcement.

## Call Graph
```
- a.a0() [line 6726: hardcoded 'com.afiro.infinite']
- → PolicyBpManager.setOneKeyCleanInfo() [line 400-432]
- → PolicyBpManager.setIdleCleanInfo() [line 494-518]
- → PolicyBpManager.setAutoCleanInfo() [line 457-492]
```

