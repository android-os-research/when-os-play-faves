---
id: vuln-163
vendor: Transsion
package: com.transsion.deskclock
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-163 · `com.transsion.deskclock` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.deskclock` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
com.transsion.deskclock alarms may bypass rate-limiting or quota enforcement mechanisms that apply to other packages

## Attack Surface
A pre-installed or privileged alarm app (com.transsion.deskclock) gains differential treatment in alarm delivery, potentially allowing excessive alarm scheduling that would be rate-limited for other apps

## Call Graph
```
- AlarmManagerService.deliverAlarmsLocked() → isSuspendedWhitelist(packageName) → String.equals("com.transsion.deskclock")
- → AppOpsService.isSuspendedWhitelist() → hardcoded package check
- → ContentProviderRecord.<clinit>() → RELEASE_APPS_LIST.add("com.transsion.deskclock")
```

