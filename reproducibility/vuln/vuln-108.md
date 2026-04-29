---
id: vuln-108
vendor: Samsung
package: com.samsung.android.app.notes
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-108 · `com.samsung.android.app.notes` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.notes` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded Samsung Notes package is queried to extract its UID, which is then passed to backgroundAllowlistUid() to exempt it from background execution restrictions without user consent or dynamic package verification.

## Attack Surface
A pre-installed system service can unconditionally whitelist the Samsung Notes app from background restrictions, bypassing normal power management policies. If the package name is spoofed or the signature check is weak, a malicious app could gain the same exemption.

## Call Graph
```
- backgroundAllowlist() [ANCHOR] → const-string 'com.samsung.android.app.notes'
- → PackageManager.getApplicationInfo(pkgName, 0) [PKG_QUERY]
- → extract uid from ApplicationInfo
- → ActivityManager.backgroundAllowlistUid(uid) [enforcement bypass]
```

