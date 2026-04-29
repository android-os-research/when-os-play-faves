---
id: vuln-015
vendor: MIUI
package: com.miui.fmservice
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-015 · `com.miui.fmservice` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.fmservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.fmservice' is unconditionally deleted during system initialization when device region is IT and build region is EEA, bypassing normal package management controls.

## Attack Surface
A pre-installed OEM service can force removal of specific packages based on region properties without user consent or standard package management enforcement, potentially removing user-installed or competing applications.

## Call Graph
```
- `deletePackagesByRegion() [ANCHOR] → SystemProperties.get('ro.miui.region') [SYS_PROP_READ]`
- `deletePackagesByRegion() → SystemProperties.get('ro.miui.build.region') [SYS_PROP_READ]`
- `deletePackagesByRegion() → PackageManager.deletePackage('com.miui.fmservice', ...) [PKG_MGMT]`
```

## Affected Firmware Images
- claude_redmi_validated
