---
id: vuln-186
vendor: Vivo
package: com.baidu.netdisk
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-186 · `com.baidu.netdisk` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.baidu.netdisk` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Baidu NetDisk app receives differential treatment in window management and animation behavior based on hardcoded package name comparison, potentially enabling privilege escalation or feature bypass.

## Attack Surface
A pre-installed or privileged app (Vivo framework) grants special animation/window handling to com.baidu.netdisk without explicit permission checks or user consent.

## Call Graph
```
- VivoAppTransitionImpl.setAnimationForVivoFreeform() line 734
- → String.equals(com.baidu.netdisk, processName)
- → Task.getTopMostActivity().processName comparison
- → Conditional logic gates animation behavior (line 735-737)
```

