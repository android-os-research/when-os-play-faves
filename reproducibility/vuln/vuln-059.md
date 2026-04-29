---
id: vuln-059
vendor: Lenovo
package: com.zui.clone
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-059 · `com.zui.clone` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.zui.clone` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.92 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.zui.clone' receives automatic APPOPS MODE_ALLOWED (0) for SMS_WRITE operation (opcode 15) when a system property is enabled, bypassing normal permission checks.

## Attack Surface
A pre-installed or privileged app (com.zui.clone) gains unrestricted SMS write capability without user consent or runtime permission enforcement when persist.zui.clone.writeSms.enable=true.

## Call Graph
```
- AppOpsService.noteOperation() [line 2741-2745]
- → String.equals(com.zui.clone, p3) [line 2742]
- → SystemProperties.getBoolean(persist.zui.clone.writeSms.enable) [line 2741]
- → SyncNotedAppOp constructor with MODE_ALLOWED (0) [line 2745]
```

