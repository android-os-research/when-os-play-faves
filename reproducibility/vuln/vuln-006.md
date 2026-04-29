---
id: vuln-006
vendor: MIUI
package: com.mi.global.shop
verdict: CONFIRMED_HIGH
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-006 · `com.mi.global.shop` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.mi.global.shop` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.95 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.mi.global.shop' is unconditionally deleted during device upgrade if specific conditions are met, without user consent or standard package management controls.

## Attack Surface
A pre-installed system service can silently uninstall a specific package (Mi Global Shop) based on device region and upgrade state, bypassing normal package management safeguards and user awareness.

## Call Graph
```
- `updateApplicationEnableState() [ANCHOR: const-string 'com.mi.global.shop']`
- `→ PackageManager.getApplicationInfo('com.mi.global.shop', 0) [PKG_QUERY]`
- `→ SystemProperties.get('ro.miui.customized.region', '') [SYS_PROP_READ]`
- `→ PackageManager.deletePackage('com.mi.global.shop', null, 0) [PKG_MGMT]`
```

## Affected Firmware Images
- claude_redmi_validated
