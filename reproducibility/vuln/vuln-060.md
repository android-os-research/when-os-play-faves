---
id: vuln-060
vendor: Lenovo
package: com.zui.desktoplauncher
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-060 · `com.zui.desktoplauncher` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.zui.desktoplauncher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded 'com.zui.desktoplauncher' package string is used to conditionally skip process termination logic in killPackageProcessesLSP, allowing the desktop launcher to evade normal process lifecycle management when desktop mode is active.

## Attack Surface
A pre-installed or privileged desktop launcher app gains immunity from standard process termination during package operations, potentially allowing it to persist or interfere with app lifecycle enforcement.

## Call Graph
```
- ProcessList.killPackageProcessesLSP() line 3087
- → processName.contains('com.zui.desktoplauncher')
- → conditional early_return skipping removeProcessLocked()
- → PKG_QUERY differential treatment via string comparison
```

