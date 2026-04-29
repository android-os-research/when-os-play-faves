---
id: vuln-164
vendor: Transsion
package: com.transsion.dualapp
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-164 · `com.transsion.dualapp` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.dualapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.transsion.dualapp' receives differential permission enforcement in checkPermission(), potentially bypassing standard INSTALL_PACKAGES/DELETE_PACKAGES checks if it passes a system app verification.

## Attack Surface
A pre-installed or privileged app (com.transsion.dualapp) can exploit this differential permission check to install/delete packages with reduced scrutiny compared to other apps, provided it passes the isSystemApp() check.

## Call Graph
```
- ActivityManagerService.checkPermission() [line 6129-6146]
- → String.equals() comparison with 'com.transsion.dualapp' [line 6137]
- → isSystemApp() verification [line 6137]
- → checkComponentPermission() fallback [line 6154]
```

