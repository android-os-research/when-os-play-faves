---
id: vuln-124
vendor: Samsung
package: com.samsung.android.rajaampat
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-124 · `com.samsung.android.rajaampat` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.rajaampat` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.rajaampat' is whitelisted for background execution without user consent, bypassing normal package management restrictions.

## Attack Surface
A pre-installed or privileged app can invoke backgroundWhitelist() to grant background execution allowlist status to com.samsung.android.rajaampat if it passes signature verification, enabling persistent background activity.

## Call Graph
```
- backgroundWhitelist(Context, String, Z) [line 117: const-string 'com.samsung.android.rajaampat']
- → hasValidSignature(Context, String) [line 121: SIG_CHECK]
- → getApplicationInfo(String, int) [line 127: PKG_QUERY]
- → backgroundAllowlistUid(int) [line 141: ActivityManager allowlist grant]
```

