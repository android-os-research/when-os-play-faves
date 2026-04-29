---
id: vuln-056
vendor: LG
package: com.sprd.powersavemodelauncher
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-056 · `com.sprd.powersavemodelauncher` · LG

## Metadata
| Field | Value |
|---|---|
| Vendor | LG |
| Package | `com.sprd.powersavemodelauncher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.sprd.powersavemodelauncher' can have its enabled/disabled state manipulated without user consent via setApplicationEnabledSetting calls, allowing forced enable/disable of the launcher app during power save mode transitions.

## Attack Surface
A pre-installed system service (BackgroundCleanHelper) can programmatically disable launcher apps or enable the power-save launcher without user interaction, affecting app visibility and user choice of default launcher.

## Call Graph
```
- checkLauncherEnabledSetting() → setApplicationEnabledSetting(packageName, COMPONENT_ENABLED_STATE_ENABLED, ...)
- → ensureLauncherAppEnabledSetting() → IPackageManager.setApplicationEnabledSetting('com.sprd.powersavemodelauncher', 1, ...)
- → disableLauncherAppIfNeed() → setApplicationEnabledSetting(launcherName, COMPONENT_ENABLED_STATE_DISABLED, ...)
```

