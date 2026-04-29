---
id: vuln-151
vendor: Samsung
package: com.verizon.pushtotalkplus
verdict: CONFIRMED_HIGH
tag: APPOPS
category: appops_manipulation
---

# vuln-151 · `com.verizon.pushtotalkplus` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.verizon.pushtotalkplus` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.95 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.verizon.pushtotalkplus' is granted SYSTEM_ALERT_WINDOW appop permission without user consent, bypassing normal permission enforcement.

## Attack Surface
A pre-installed Verizon app gains the ability to draw system alert windows (overlay capability) on any device with VZW sales code, without user awareness or consent.

## Call Graph
```
- appOpPreAllow() [line 26: const-string 'com.verizon.pushtotalkplus']
- → ArrayList.add(v6) [line 26: package added to list]
- → Iterator.next() [line 29-30: iterate over packages]
- → AppOpsManager.setMode(SYSTEM_ALERT_WINDOW, uid, pkg, MODE_ALLOW) [line 34: grant appop]
```

