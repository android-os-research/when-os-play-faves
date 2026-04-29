---
id: vuln-027
vendor: MIUI
package: com.tencent.mm
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-027 · `com.tencent.mm` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.tencent.mm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
WeChat (com.tencent.mm) is granted privileged access to Super Resolution graphics features without explicit permission checks or user consent, enabling enhanced visual capabilities reserved for allowlisted apps.

## Attack Surface
A pre-installed or privileged app can invoke isAccessSR() to determine if WeChat has been granted SR access, or directly call isAppAccessSR() to check any package's status. This allows differential treatment of WeChat compared to other apps, potentially enabling feature gating or capability escalation.

## Call Graph
```
- `SRUtils.<clinit>() — hardcodes com.tencent.mm into sAccessAppList ArrayList`
- `SRUtils.isAccessSR() — checks if com.tencent.mm is in the allowlist`
- `SRUtils.isAppAccessSR(String) — [not shown but inferred] queries allowlist membership (PKG_QUERY pattern)`
```

## Affected Firmware Images
- claude_redmi_validated
