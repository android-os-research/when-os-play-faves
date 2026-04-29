---
id: vuln-155
vendor: Transsion
package: com.china3s.android
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: enforcement_bypass
---

# vuln-155 · `com.china3s.android` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.china3s.android` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.china3s.android' receives preferential CPU limit treatment (POWER_CHECK_MAX_CPU_4) compared to other apps, allowing it to consume more CPU resources without throttling.

## Attack Surface
A pre-installed or privileged app matching this package name can bypass power management enforcement and consume excessive CPU cycles, potentially enabling denial-of-service or resource exhaustion attacks.

## Call Graph
```
- lambda$checkExcessivePowerUsage$20 (line 16925-16927)
- → String.equals() comparison with 'com.china3s.android'
- → cpuLimit assignment to POWER_CHECK_MAX_CPU_4
- → ITranActivityManagerService.handleCpuLimit() invocation
```

