---
id: vuln-055
vendor: LG
package: com.payjoy.access
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-055 · `com.payjoy.access` · LG

## Metadata
| Field | Value |
|---|---|
| Vendor | LG |
| Package | `com.payjoy.access` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The package com.payjoy.access is hardcoded in a protection list that prevents it from being disabled by normal users or apps, effectively granting it persistent system-level privilege.

## Attack Surface
A pre-installed or privileged app (or the OEM itself) can use this to lock down com.payjoy.access against user-initiated disabling, ensuring it remains active even if the user wants to remove it.

## Call Graph
```
- HMDPackageManager.<clinit>() line 108: DisableBlackList array initialization with com.payjoy.access
- → HMDPackageManager.isDisablingPrevented() line 116-120: checks if package is in DisableBlackList and returns false (preventing disable)
- → PackageManagerService.setEnabledSettings() line 4148-4150: string comparison against com.payjoy.access throws IllegalArgumentException if matched
- → PackageManagerService.setEnabledSettings() caller chain: setApplicationEnabledSetting → setEnabledSettings [PKG_MGMT enforcement]
```

