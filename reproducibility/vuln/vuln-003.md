---
id: vuln-003
vendor: MIUI
package: com.ebay.mobile
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-003 · `com.ebay.mobile` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.ebay.mobile` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.ebay.mobile' is added to a default SLA (Service Level Agreement) whitelist during initialization, potentially granting it network optimization privileges without explicit user consent or per-app permission checks.

## Attack Surface
A pre-installed OEM service can silently whitelist eBay for dual-WiFi, dual-data, or gaming SLA features, bypassing normal app permission flows and allowing eBay to consume network resources with priority treatment.

## Call Graph
```
- `initSLAAppDefault() [line ~3442: v5 := 'com.ebay.mobile']`
- `→ filled-new-array {v4..v9} creates package array`
- `→ addSLAAppDefault(uid) [line 1398+]`
- `→ mAppLists.add() + dbAddSLAApp() [line 1402-1403]`
```

## Affected Firmware Images
- claude_redmi_validated
