---
id: vuln-224
vendor: Unknown
package: com.skype.rover
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-224 · `com.skype.rover` · Unknown

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown |
| Package | `com.skype.rover` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
A hardcoded package (com.skype.rover) is force-stopped and its components are disabled without user consent or dynamic package resolution.

## Attack Surface
Pre-installed OEM code can forcibly terminate and disable Skype Rover functionality, potentially disrupting user communication or enabling selective app suppression.

## Call Graph
```
- UsbCameraManager$VideoDevThread.run() [ANCHOR: com.skype.rover at line 288]
- → ActivityManager.forceStopPackage(v3)
- → UsbCameraManager.disableComponent()
- → PackageManager.setComponentEnabledSetting() [PKG_MGMT]
```

