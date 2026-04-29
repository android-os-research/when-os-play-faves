---
id: vuln-072
vendor: OnePlus
package: com.coloros.childrenspace
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-072 · `com.coloros.childrenspace` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.coloros.childrenspace` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.coloros.childrenspace' can be silently enabled/disabled without user interaction or consent via setApplicationEnabledSetting().

## Attack Surface
A pre-installed or privileged OEM service can toggle the children's space app on/off programmatically, bypassing normal package management controls and user awareness.

## Call Graph
```
- setKidsSpaceDisabled() [ANCHOR: const-string 'com.coloros.childrenspace']
- → checkPermission() [PERM_CHECK gate]
- → PackageManager.setApplicationEnabledSetting(v3, v1, v2) [PKG_MGMT]
```

