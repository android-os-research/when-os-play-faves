---
id: vuln-111
vendor: Samsung
package: com.samsung.android.applock
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-111 · `com.samsung.android.applock` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.applock` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.applock' is targeted for implicit intent delivery without permission checks, allowing the AppLock service to be invoked with sensitive app lock state information.

## Attack Surface
A pre-installed or privileged app could intercept or spoof the CHECK_APPLOCK_SERVICE intent, gaining access to which apps are locked and their user IDs, or could replace the legitimate applock service with a malicious one.

## Call Graph
```
- lambda$checkAppLockState$0 (line 277-278: setPackage with hardcoded 'com.samsung.android.applock')
- → Intent.setPackage() targets the package without verifying it exists or is legitimate
- → Implicit intent delivery to a hardcoded package bypasses normal package resolution security
```

