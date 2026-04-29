---
id: vuln-126
vendor: Samsung
package: com.samsung.android.samsungpay.gear
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-126 · `com.samsung.android.samsungpay.gear` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.samsungpay.gear` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.samsungpay.gear' is whitelisted for background execution without user consent by querying its UID and calling ActivityManager.backgroundAllowlistUid().

## Attack Surface
A pre-installed Samsung payment service gains the ability to execute background tasks indefinitely, bypassing normal background execution restrictions that apply to other apps.

## Call Graph
```
- Utils.backgroundWhitelist(Context, String, boolean) [line 116: equals check for 'com.samsung.android.samsungpay.gear']
- → PackageManager.getApplicationInfo(String, int) [line 127: PKG_QUERY]
- → ActivityManager.backgroundAllowlistUid(int) [line 141: implicit UID_CHECK/PKG_MGMT]
```

