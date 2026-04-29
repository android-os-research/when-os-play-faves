---
id: vuln-128
vendor: Samsung
package: com.samsung.android.sm.devicesecurity
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-128 · `com.samsung.android.sm.devicesecurity` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.sm.devicesecurity` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package name 'com.samsung.android.sm.devicesecurity' is queried via PackageManager.getPackageInfo() to verify its installation status and system flags, enabling conditional broadcast delivery that bypasses normal package visibility controls.

## Attack Surface
A pre-installed or privileged app can use this hardcoded package name to determine whether the device security app is installed and enabled, then conditionally send broadcasts (PACKAGE_ADDED, PACKAGE_REMOVED) to it without standard permission checks, allowing it to monitor package lifecycle events.

## Call Graph
```
- BroadcastHelper.getDSPackageName() [line 146]
- → SemFloatingFeature.getString() [line 147]
- → Context.getPackageManager() [line 149]
- → PackageManager.getPackageInfo() [line 150] [PKG_QUERY]
```

