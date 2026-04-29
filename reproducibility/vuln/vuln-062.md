---
id: vuln-062
vendor: Lenovo
package: com.zui.udevice
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-062 · `com.zui.udevice` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.zui.udevice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.zui.udevice' is unconditionally whitelisted from memory cleanup and process killing, allowing it to persist in memory and avoid termination even under memory pressure.

## Attack Surface
A pre-installed or privileged app can leverage this whitelist to avoid being killed during memory reclamation events, maintaining persistent access to system resources and potentially sensitive data.

## Call Graph
```
- ZuiMemoryCleaner.isSpecialApp() [line 1607: String.equals('com.zui.udevice')]
- → ZuiMemoryCleaner.isInWhiteList() [line 1552: calls isSpecialApp()]
- → ZuiMemoryCleaner.getCandidatePackage/getCandidateProcesses() [implicit: filters via isInWhiteList()]
- → ZuiMemoryCleaner.initGroupKill/initQuickKill() [calls getCandidatePackage/getCandidateProcesses()]
```

