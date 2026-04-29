---
id: vuln-026
vendor: MIUI
package: com.ss.android.article.news
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-026 · `com.ss.android.article.news` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.ss.android.article.news` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.ss.android.article.news' (ByteDance News app) receives special Super Resolution graphics privileges without explicit permission checks or user consent.

## Attack Surface
A pre-installed or privileged graphics framework component grants enhanced rendering capabilities to a third-party news application, potentially enabling performance manipulation or resource prioritization that bypasses normal app sandboxing constraints.

## Call Graph
```
- `SRUtils.<clinit>() adds 'com.ss.android.article.news' to sAccessAppList`
- `SRUtils.isAccessSR() queries sAccessAppList via isAppAccessSR()`
- `isAccessSR() returns true if package is in the whitelist`
- `Caller uses this boolean to gate Super Resolution feature access`
```

## Affected Firmware Images
- claude_redmi_validated
