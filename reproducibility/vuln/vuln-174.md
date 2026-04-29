---
id: vuln-174
vendor: Unisoc
package: com.sprd.powersavemodelauncher
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-174 · `com.sprd.powersavemodelauncher` · Unisoc

## Metadata
| Field | Value |
|---|---|
| Vendor | Unisoc |
| Package | `com.sprd.powersavemodelauncher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.sprd.powersavemodelauncher' can be selectively disabled/enabled via setApplicationEnabledSetting without standard permission checks, allowing privileged control over a system launcher.

## Attack Surface
A pre-installed or privileged app (BackgroundCleanHelper) gains the ability to disable/enable the power-save launcher app during ultra-saving mode transitions, bypassing normal package management controls.

## Call Graph
```
- BackgroundCleanHelper.checkLauncherEnabledSetting() [line 3305: contains check for 'com.sprd.powersavemodelauncher']
- → setApplicationEnabledSetting(String, int, int, int, String) [line 3346: invokes IPackageManager.setApplicationEnabledSetting]
- → IPackageManager.setApplicationEnabledSetting() [PKG_MGMT tag]
```

