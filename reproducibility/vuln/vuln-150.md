---
id: vuln-150
vendor: Samsung
package: com.verizon.mips.services
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-150 · `com.verizon.mips.services` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.verizon.mips.services` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.verizon.mips.services' receives sticky broadcast intents containing network state and data activity information without permission checks or user consent.

## Attack Surface
A pre-installed Verizon app gains privileged access to real-time network bearer attachment events (5G/LTE/5GNSA status, data activity state, UWB capability) via sticky broadcasts that persist across reboots, enabling telemetry or tracking without standard permission enforcement.

## Call Graph
```
- broadcastNrBearerAttach() [line 90]
- → Intent.setPackage('com.verizon.mips.services') [line 90]
- → ActivityManager.broadcastStickyIntent() [line 91]
```

