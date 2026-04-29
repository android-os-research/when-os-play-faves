---
id: vuln-116
vendor: Samsung
package: com.samsung.android.kgclient
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-116 · `com.samsung.android.kgclient` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.kgclient` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.92 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.samsung.android.kgclient' is automatically added to VPN exemption lists without user consent, bypassing VPN enforcement for Knox Guard.

## Attack Surface
A pre-installed or privileged app can leverage this to exempt Knox Guard from VPN restrictions, allowing it to operate outside the VPN tunnel and potentially exfiltrate data or perform privileged operations.

## Call Graph
```
- Vpn.setAlwaysOnPackage() [line 1225-1230]
- → KnoxGuardManager.isVpnExceptionRequired() [line 1225]
- → Vpn.setAlwaysOnPackageInternal() [line 1235]
- → AppOpsManager.setMode() [line 1686, 1782]
```

