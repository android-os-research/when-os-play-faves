---
id: vuln-045
vendor: OnePlus
package: com.oplus.powermonitor
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-045 · `com.oplus.powermonitor` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.powermonitor` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded 'com.oplus.powermonitor' package receives privileged intents with sensitive battery/charging data without explicit permission checks or user consent.

## Attack Surface
A pre-installed or privileged app can intercept intents containing USB status, OTG state, plug type, and high-power scene notifications intended for com.oplus.powermonitor, potentially allowing unauthorized monitoring or manipulation of charging behavior.

## Call Graph
```
- OplusBatteryService.processOplusBatteryPluggedChanedLocked() [line 571]
- Intent.setPackage('com.oplus.powermonitor') [line 571]
- Handler.post(Runnable) [line 573]
- Context.sendBroadcast(Intent) [implicit via BatteryStatsImplExtImpl lambda]
```

