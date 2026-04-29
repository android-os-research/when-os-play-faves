---
id: vuln-148
vendor: Samsung
package: com.tencent.mm
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-148 · `com.tencent.mm` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.tencent.mm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package string 'com.tencent.mm' (WeChat) is used to selectively degrade image compression quality, potentially enabling differential treatment or fingerprinting of a specific application.

## Attack Surface
A pre-installed OEM service can detect WeChat and apply custom compression logic (quality capped at 0x46 instead of 0x64), which could be exploited to degrade user experience, enable tracking, or bypass security checks specific to that app.

## Call Graph
```
- Bitmap.compress() [line 1540]
- → IPackageManager.getNameForUid(uid) [line 1555]
- → String.contains('com.tencent.mm') [line 1560]
- → conditional branch gates compression quality [line 1561]
```

