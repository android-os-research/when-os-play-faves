---
id: vuln-252
vendor: Lenovo
package: com.zui.game.service
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-252 · `com.zui.game.service` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.zui.game.service` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.65 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.zui.game.service' is used in game mode detection logic that gates UID-based access control decisions, potentially allowing the game service to bypass normal permission enforcement.

## Attack Surface
A pre-installed or privileged game service could leverage this hardcoded package name in ZuiModeManagerService to trigger special handling that weakens UID-based access checks, gaining elevated capabilities without proper caller verification.

## Call Graph
```
- ZuiModeManagerService.shouldNotInterruptGameMode() [ANCHOR: com.zui.game.service]
- → String.contains() check on package name
- → judgeGameMode() caller
- → Binder.getCallingUid() [UID_CHECK] in resource resolution chain
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
