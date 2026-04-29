---
id: vuln-063
vendor: Nokia
package: com.amazon.appmanager
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-063 · `com.amazon.appmanager` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.amazon.appmanager` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.amazon.appmanager' is forcibly disabled (enabled state set to 2) during package scanning without user consent or permission checks, potentially preventing legitimate app functionality.

## Attack Surface
A pre-installed OEM framework service can silently disable the Amazon Appmanager package on every boot/scan cycle, bypassing normal package management controls and user expectations.

## Call Graph
```
- scanFinished() [ANCHOR]
- → getPackageSettings('com.amazon.appmanager')
- → packageSettingSetEnabled(v0, 0x2) — direct PKG_MGMT state modification
```

