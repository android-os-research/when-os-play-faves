---
id: vuln-125
vendor: Samsung
package: com.samsung.android.rubin.app
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-125 · `com.samsung.android.rubin.app` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.rubin.app` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.92 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.rubin.app' receives special treatment via signature verification bypass — if the package is platform-signed, Runestone features are enabled without user consent or standard permission checks.

## Attack Surface
A pre-installed Samsung app (or one signed with Samsung's platform key) gains access to Runestone notification features that are gated only by package name and signature, not by explicit permissions or user consent.

## Call Graph
```
- isRuneStoneSupported() [line 15849]
- → RunestoneSupportContract$API.isSupportVersion()
- → RunestoneSupportContract$API.isPlatformSignedPackage()
- → PackageManager.getPackageInfo() [PKG_QUERY]
```

