---
id: vuln-185
vendor: Vivo
package: co.sitic.pp
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-185 · `co.sitic.pp` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `co.sitic.pp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'co.sitic.pp' is queried via VGC manager to retrieve an autostart blacklist, potentially allowing selective app startup control without standard permission checks.

## Attack Surface
A pre-installed or privileged app can use VivoPmsVgcUtils.getAutoStartBlackList() to query whether 'co.sitic.pp' is blacklisted from autostart, enabling differential treatment of this specific package in the package management system.

## Call Graph
```
- VivoPmsVgcUtils.getAutoStartBlackList() [ANCHOR: const-string 'co.sitic.pp']
- → AbsVivoVgcManager.getStringList('autostart_blacklist', ...)
- → VGC configuration query (implicit PKG_QUERY pattern)
```

