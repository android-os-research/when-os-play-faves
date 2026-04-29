---
id: vuln-105
vendor: Samsung
package: com.samsung.android.app.ledbackcover
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-105 · `com.samsung.android.app.ledbackcover` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.ledbackcover` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package name allows the LED Back Cover service to query and whitelist a specific OEM app's UID without user consent or dynamic package resolution.

## Attack Surface
A pre-installed system service can unconditionally background-whitelist the LED Back Cover app, bypassing normal power management restrictions. If the signature check is weakened or the app is compromised, this grants persistent background execution.

## Call Graph
```
- backgroundWhitelist() [ANCHOR]
- → PackageManager.getApplicationInfo("com.samsung.android.app.ledbackcover", 0) [PKG_QUERY]
- → ActivityManager.backgroundAllowlistUid(uid) [implicit privilege escalation]
```

