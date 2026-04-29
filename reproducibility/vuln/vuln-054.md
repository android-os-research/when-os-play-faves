---
id: vuln-054
vendor: LG
package: com.hmdglobal.app.camera
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-054 · `com.hmdglobal.app.camera` · LG

## Metadata
| Field | Value |
|---|---|
| Vendor | LG |
| Package | `com.hmdglobal.app.camera` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded camera package string allows differential treatment of the HMD Global camera app during power button long-press, potentially bypassing normal assistant launch flow and enabling privileged behavior without user consent.

## Attack Surface
A pre-installed or privileged app (or the camera app itself if compromised) can exploit this hardcoded check to suppress normal power-button behavior and trigger a float window UI that may grant unintended capabilities.

## Call Graph
```
- powerLongPress(J) @ line 1450-1451: String.equals(com.hmdglobal.app.camera)
- → getTopActivity() → ComponentName.getPackageName() [PKG_QUERY]
- → KeyguardServiceDelegate.isShowing() [UID_CHECK via ActivityManager]
- → FloatWindowManager.showFloatWindow() [UI privilege escalation]
```

