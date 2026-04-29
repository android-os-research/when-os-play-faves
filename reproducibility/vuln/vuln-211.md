---
id: vuln-211
vendor: Vivo
package: com.vivo.vhome
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-211 · `com.vivo.vhome` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.vhome` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.vhome' receives differential treatment in signature verification logic, potentially allowing it to bypass normal package validation checks.

## Attack Surface
A pre-installed or privileged app can exploit this hardcoded whitelist to skip signature verification that would normally be enforced for other packages, gaining unvalidated system privileges.

## Call Graph
```
- ActivityManagerService.isSystemWhitelist(String, int)
- → IPackageManager.getPackageInfo(String, long, int)
- → SigningInfo.getSigningDetails()
- → hardcoded signature check against '28:3D:60:DD:CD:20:C5:6E:A1:71:9C:E9:05:27:F1:23:5A:E8:0E:FA:'
```

