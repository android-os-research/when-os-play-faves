---
id: vuln-145
vendor: Samsung
package: com.sec.hiddenmenu
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-145 · `com.sec.hiddenmenu` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.hiddenmenu` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.sec.hiddenmenu' can bypass normal USB function restrictions by being granted special APPOPS privileges without user consent.

## Attack Surface
A pre-installed Samsung system app or privileged process can invoke setCurrentFunctions() with the hidden menu package name to enable restricted USB modes (MTP, PTP, MIDI, tethering) that would normally require user approval or permission checks.

## Call Graph
```
- UsbDeviceManager.setCurrentFunctions() [line 2730: string compare 'com.sec.hiddenmenu']
- → SystemProperties.set() [SYS_PROP_WRITE]
- → ← SemUsbBackend.setMode() [APPOPS tag in caller chain]
- → ← UsbService.semSetMode() [APPOPS tag in caller chain]
```

