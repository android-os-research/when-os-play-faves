---
id: vuln-133
vendor: Samsung
package: com.samsung.controlpanel
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-133 · `com.samsung.controlpanel` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.controlpanel` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package com.samsung.controlpanel is granted privileged access to dismiss split tasks without standard caller identity verification, potentially allowing unauthorized task manipulation.

## Attack Surface
A pre-installed or privileged app can invoke dismissSplitTask() to manipulate the multitasking UI state, affecting user's running applications and window layout without proper permission enforcement.

## Call Graph
```
- dismissSplitTask() [ANCHOR]
- → checkMultiStarPackageAndPermission()
- → implicit PERM_CHECK via package whitelist
```

