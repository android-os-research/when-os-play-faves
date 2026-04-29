---
id: vuln-077
vendor: OnePlus
package: com.debug.loggerui
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: telemetry_privilege
---

# vuln-077 · `com.debug.loggerui` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.debug.loggerui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.85 |
| Threat type | telemetry_privilege |

## Privacy Impact
The hardcoded package 'com.debug.loggerui' receives privileged broadcast intents with modem logging commands, allowing it to control telephony debug logging without explicit permission checks.

## Attack Surface
A pre-installed or compromised 'com.debug.loggerui' app gains the ability to enable/disable modem dump-back logging and control MTK connsys logging state via privileged broadcasts sent from the telephony framework without standard permission enforcement.

## Call Graph
```
- setRusDump() [ANCHOR]
- → SystemProperties.getInt(persist.sys.mdlog_dumpback) [SYS_PROP_READ at line 188]
- → SystemProperties.set(persist.sys.mdlog_dumpback, value) [SYS_PROP_WRITE at line 191]
- → Context.sendBroadcast(Intent, android.permission.SET_DEBUG_APP) [hardcoded receiver at line 194]
```

