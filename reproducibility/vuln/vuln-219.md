---
id: vuln-219
vendor: Lenovo
package: com.lenovo.leos.cloud.sync
verdict: CONFIRMED_HIGH
tag: APPOPS
category: appops_manipulation
---

# vuln-219 · `com.lenovo.leos.cloud.sync` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.lenovo.leos.cloud.sync` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.92 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.lenovo.leos.cloud.sync' is granted SMS write permission via AppOpsManager.setMode() without user consent or runtime checks, bypassing normal permission enforcement.

## Attack Surface
A pre-installed Lenovo cloud sync app gains unrestricted SMS send capability through system-level AppOps mode manipulation, enabling silent SMS exfiltration or premium SMS fraud.

## Call Graph
```
- grantWriteSmsPermission(int) [line 278: v0 := 'com.lenovo.leos.cloud.sync']
- → grantAppOp(String, int, int)
- → AppOpsManager.setMode() [APPOPS tag]
- → IAppOpsService.setMode() [APPOPS enforcement]
```

