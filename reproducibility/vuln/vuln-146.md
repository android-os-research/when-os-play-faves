---
id: vuln-146
vendor: Samsung
package: com.sec.usbsettings
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-146 · `com.sec.usbsettings` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.usbsettings` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.sec.usbsettings' can bypass AppOps checks to manipulate USB function modes without standard permission enforcement.

## Attack Surface
A pre-installed or privileged app can invoke setCurrentFunctions() with the hardcoded package name to set USB modes (MTP, PTP, MIDI, etc.) while evading AppOps-based access controls that would normally restrict such operations.

## Call Graph
```
- UsbDeviceManager.setCurrentFunctions() [line 2721: v2 := 'com.sec.usbsettings']
- → String.equals() comparison (early_return pattern)
- → SystemProperties.set() [SYS_PROP_WRITE]
- → ← SemUsbBackend.setMode() [APPOPS tag in caller chain]
```

