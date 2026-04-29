---
id: vuln-172
vendor: Transsion
package: share.sharekaro.pro
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-172 · `share.sharekaro.pro` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `share.sharekaro.pro` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'share.sharekaro.pro' is whitelisted in foldable device lists and can bypass certain app resizing restrictions, potentially allowing it to operate in modes not intended for other apps.

## Attack Surface
A pre-installed or privileged app with access to TranFoldingScreenController can use the hardcoded package name to gain special treatment in foldable device configurations, bypassing normal resize enforcement.

## Call Graph
```
- TranFoldingScreenController.<clinit>() line 21 — hardcoded 'share.sharekaro.pro' in RESIZE_MODE_UNRESIZEABLE_BLOCK_LIST
- → TranFoldingScreenController.isPkgInUnresizeableBlockList() — checks if package is in blocklist
- → ActivityManagerService.startInstrumentation() line 98241 — string comparison with hardcoded package
- → AppOpsService.setMode() — APPOPS tag invoked in call chain
```

