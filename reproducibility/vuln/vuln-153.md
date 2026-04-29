---
id: vuln-153
vendor: Samsung
package: com.vzw.hss.myverizon
verdict: CONFIRMED_HIGH
tag: APPOPS
category: appops_manipulation
---

# vuln-153 · `com.vzw.hss.myverizon` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.vzw.hss.myverizon` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.95 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.vzw.hss.myverizon' (Verizon My Verizon app) is granted SYSTEM_ALERT_WINDOW permission via AppOpsManager.setMode() without user consent when device sales code is 'VZW'.

## Attack Surface
A pre-installed Verizon system app gains the ability to draw system alert windows (overlay capability) unconditionally, bypassing normal permission enforcement. This enables UI spoofing, phishing, or credential harvesting attacks.

## Call Graph
```
- appOpPreAllow() [line 25: const-string 'com.vzw.hss.myverizon']
- → ArrayList.add() [line 25: package added to list]
- → getPackageInfo() [line 31: verify package is system app]
- → AppOpsManager.setMode() [line 34: grant SYSTEM_ALERT_WINDOW with mode 0 (ALLOW)]
```

