---
id: vuln-170
vendor: Transsion
package: com.xui.xhide
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-170 · `com.xui.xhide` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.xui.xhide` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.xui.xhide' can have its application enabled/disabled state manipulated without proper caller verification, potentially allowing privilege escalation or app state tampering.

## Attack Surface
A pre-installed or privileged app can invoke setApplicationEnabledSetting() with the hardcoded package name to enable/disable com.xui.xhide without standard permission checks, bypassing normal package management controls.

## Call Graph
```
- ActivityStarter.checkFingerprintStart() → IPackageManager.setApplicationEnabledSetting()
- → PackageManagerService.setEnabledSettingInternalLocked() → string comparison with 'com.xui.xhide'
- → callingPackage parameter nullified when match detected (line 4159)
```

