---
id: vuln-112
vendor: Samsung
package: com.samsung.android.bbc.fileprovider
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-112 · `com.samsung.android.bbc.fileprovider` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.bbc.fileprovider` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.78 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.bbc.fileprovider' is passed to setPackageSettingInstalled() and setApplicationEnabledSetting(), allowing privileged manipulation of app installation state without user consent.

## Attack Surface
A pre-installed system service can silently enable/disable the BBC file provider package for managed profiles, bypassing normal package management controls and potentially exposing or hiding functionality.

## Call Graph
```
- PersonaManagerService$PersonaHandler.handleMessage() [line 674: p1 := 'com.samsung.android.bbc.fileprovider']
- → PersonaManagerService.setPackageSettingInstalled()
- → IPackageManager.setApplicationEnabledSetting() [PKG_MGMT tag]
```

