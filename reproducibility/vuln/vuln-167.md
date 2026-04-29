---
id: vuln-167
vendor: Transsion
package: com.transsion.tower
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-167 · `com.transsion.tower` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.tower` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
com.transsion.tower is exempted from background process killing, allowing it to run indefinitely and access user data without normal lifecycle constraints.

## Attack Surface
A pre-installed or privileged app (com.transsion.tower) gains immunity from background process termination, enabling persistent data collection or surveillance.

## Call Graph
```
- ProcessList.killPackageProcessesLSP() line 2878
- → String.equals(com.transsion.tower) comparison
- → early return skipping process removal
- → ProcessStateRecord.isAgaresComputeOomAdj() check
```

