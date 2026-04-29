---
id: vuln-173
vendor: Unisoc
package: com.mediatek.camera
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-173 · `com.mediatek.camera` · Unisoc

## Metadata
| Field | Value |
|---|---|
| Vendor | Unisoc |
| Package | `com.mediatek.camera` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded 'com.mediatek.camera' package string is used to detect when the camera app is the top-running application, enabling conditional logic that bypasses normal activity launch restrictions in PC mode.

## Attack Surface
A pre-installed or privileged app (BvPcModeManagerServiceImpl) can suppress activity launches for the camera package while allowing other apps to launch freely, creating differential treatment that could be exploited to restrict user access to the camera during PC mode transitions.

## Call Graph
```
- BvPcModeManagerServiceImpl.enableStartActivityInPcMode() checks if ActivityRecord.packageName matches hardcoded 'com.mediatek.camera'
- → returns false (blocks launch) only for camera; returns true for other apps
- → PKG_QUERY via implicit package name comparison
- → gates activity launch permission in PC mode
```

