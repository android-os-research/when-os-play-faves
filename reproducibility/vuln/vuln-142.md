---
id: vuln-142
vendor: Samsung
package: com.sec.android.app.shealth
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-142 · `com.sec.android.app.shealth` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.android.app.shealth` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.sec.android.app.shealth' is queried and granted background allowlist privilege without user consent or dynamic verification.

## Attack Surface
A pre-installed or privileged system service can unconditionally allowlist Samsung Health's UID in the background, bypassing normal power management and activity restrictions for that app.

## Call Graph
```
- <init>() → backgroundAllowlist(Context)
- → backgroundAllowlist() → PackageManager.getApplicationInfo('com.sec.android.app.shealth', 0) [PKG_QUERY]
- → backgroundAllowlist() → hasValidSignature(Context) [PKG_QUERY via getPackageInfo]
- → backgroundAllowlist() → ActivityManager.backgroundAllowlistUid(uid)
```

