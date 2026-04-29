---
id: vuln-157
vendor: Transsion
package: com.fairprice.mcomapp
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-157 · `com.fairprice.mcomapp` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.fairprice.mcomapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
Two hardcoded packages (com.fairprice.mcomapp and com.china3s.android) receive preferential CPU throttling limits, bypassing normal power management enforcement applied to other apps.

## Attack Surface
A pre-installed or privileged app matching these package names can sustain higher CPU usage without being killed, potentially enabling resource exhaustion or denial-of-service attacks against the system.

## Call Graph
```
- lambda$checkExcessivePowerUsage$20 (line 16925-16927)
- → String.equals() comparison with hardcoded packages
- → cpuLimit assignment (POWER_CHECK_MAX_CPU_4 vs POWER_CHECK_MAX_CPU_2/3)
- → ITranActivityManagerService.handleCpuLimit() enforcement decision
```

