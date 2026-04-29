---
id: vuln-119
vendor: Samsung
package: com.samsung.android.knox.mpos
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-119 · `com.samsung.android.knox.mpos` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.knox.mpos` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.knox.mpos' receives special treatment in permission checks, allowing it to bypass normal UID validation if it is signed with the platform key.

## Attack Surface
A malicious or compromised app with the hardcoded package name and platform signature could bypass the checkPermission() enforcement gate, gaining unauthorized access to MPOS service functionality.

## Call Graph
```
- checkPermission() [ANCHOR] → getCallingUid() [UID_CHECK]
- → checkPermission() → getNameForUid(uid) [PKG_QUERY]
- → checkPermission() → getApplicationInfo(packageName, flags) [PKG_QUERY]
- → checkPermission() → string comparison 'com.samsung.android.knox.mpos'.equals(callerPackageName) + isSignedWithPlatformKey() [early_return bypass]
```

