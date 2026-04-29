---
id: vuln-162
vendor: Transsion
package: com.transsion.camera
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-162 · `com.transsion.camera` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.camera` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package string 'com.transsion.camera' is used to selectively suppress snapshot display in the starting window, potentially allowing the camera app to bypass normal UI flow controls.

## Attack Surface
A pre-installed or privileged OEM app (com.transsion.camera) gains the ability to suppress snapshot previews during activity startup, which could be leveraged to hide visual evidence of app launches or state transitions.

## Call Graph
```
- ActivityRecord.getStartingWindowType() [line 2781]
- → String.contains('com.transsion.camera') [line 2781]
- → early_return with STARTING_WINDOW_TYPE_NONE [line 2783]
- → Slog.v() logging [line 2782]
```

