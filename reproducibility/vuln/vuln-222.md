---
id: vuln-222
vendor: Lenovo
package: com.zui.game.service
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-222 · `com.zui.game.service` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.zui.game.service` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.65 |
| Threat type | enforcement_bypass |

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

