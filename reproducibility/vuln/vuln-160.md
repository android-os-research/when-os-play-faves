---
id: vuln-160
vendor: Transsion
package: com.sh.smart.caller
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-160 · `com.sh.smart.caller` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.sh.smart.caller` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.sh.smart.caller' receives special capability grants (0xf = all capabilities) that bypass normal OOM adjuster logic, potentially allowing it to retain elevated process state and avoid memory pressure enforcement.

## Attack Surface
A pre-installed or privileged app matching this package name gains immunity from standard memory management policies, allowing it to maintain foreground-like capabilities even when backgrounded, potentially starving other apps of resources.

## Call Graph
```
- OomAdjuster.getDefaultCapability() [line 2570: hardcoded package check]
- → String.equals() comparison against 'com.sh.smart.caller'
- → returns 0xf (all capabilities) if match
- → ProcessServiceRecord.mApp.processName used in PKG_QUERY context
```

