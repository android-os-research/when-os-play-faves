---
id: vuln-082
vendor: OnePlus
package: com.nearme.instant.platform
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-082 · `com.nearme.instant.platform` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.nearme.instant.platform` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.nearme.instant.platform' receives special ContentProvider authority adjustment privileges, allowing it to masquerade as 'com.tencent.mm' and access WeChat's content provider without standard permission checks.

## Attack Surface
A pre-installed or privileged app (com.nearme.instant.platform) can intercept and redirect ContentProvider queries intended for WeChat (com.tencent.mm) to arbitrary authorities, potentially exfiltrating sensitive data or performing unauthorized operations on WeChat's data.

## Call Graph
```
- adjustCallingPkg() [ANCHOR] — string comparison with hardcoded 'com.nearme.instant.platform'
- → getPackageName() on AttributionSource [PKG_QUERY implicit]
- → SystemProperties.get('persistent.sys.fastapp.authority') [SYS_PROP_READ]
- → getFastAppReplacePkg('com.tencent.mm') [PKG_MGMT implicit]
```

