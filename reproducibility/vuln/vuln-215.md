---
id: vuln-215
vendor: MIUI
package: com.miui.tsmclient
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-215 · `com.miui.tsmclient` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.tsmclient` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
com.miui.tsmclient is added to a process protection whitelist, allowing it to bypass normal memory management and process termination policies.

## Attack Surface
A pre-installed or privileged app can use this hardcoded package name to gain immunity from process cleanup, memory pressure handling, and force-stop operations.

## Call Graph
```
- ProcessPolicy.<clinit>() line 329
- → sAppProtectMap.put('com.miui.tsmclient', 3)
- → ProcessPolicy.isInAppProtectList(String)
- → PackageManager.getPackageInfo() [PKG_QUERY]
```

