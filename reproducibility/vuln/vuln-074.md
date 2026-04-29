---
id: vuln-074
vendor: OnePlus
package: com.coloros.findmyphone
verdict: CONFIRMED_HIGH
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-074 · `com.coloros.findmyphone` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.coloros.findmyphone` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.coloros.findmyphone' can be forcibly disabled/enabled without user consent via setApplicationEnabledSetting, bypassing normal package management controls.

## Attack Surface
A pre-installed or privileged service can invoke setFindMyPhoneDisabled() to disable the Find My Phone app remotely, preventing users from locating their device. This is a critical capability that should require explicit user action or device admin consent.

## Call Graph
```
- setFindMyPhoneDisabled() [ANCHOR: const-string v3, 'com.coloros.findmyphone']
- → checkPermission() [PERM_CHECK at line 3375]
- → PackageManager.setApplicationEnabledSetting(v3, v6/v5, v4) [PKG_MGMT at lines 3379, 3382]
```

