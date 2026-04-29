---
id: vuln-127
vendor: Samsung
package: com.samsung.android.sidegesturepad
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-127 · `com.samsung.android.sidegesturepad` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.sidegesturepad` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.sidegesturepad' is whitelisted in a permission enforcement check, allowing it to bypass FORCE_STOP_PACKAGES permission validation.

## Attack Surface
A pre-installed or privileged app can invoke checkLongLivePermissions() without holding the required 'android.permission.FORCE_STOP_PACKAGES' permission if it matches the hardcoded package name.

## Call Graph
```
- ActivityManagerService.checkLongLivePermissions(String) @ line 21441
- → filled-new-array with hardcoded package string
- → ensureCallingPkg([Ljava/lang/String;Ljava/lang/String;) @ line 24127
- → enforceCallingPermission(String, String) @ line 24129
```

