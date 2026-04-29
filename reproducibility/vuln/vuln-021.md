---
id: vuln-021
vendor: MIUI
package: com.miui.qr
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: enforcement_bypass
---

# vuln-021 · `com.miui.qr` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.qr` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.qr' is added to a whitelist that grants exemption from IMEI restriction checks, allowing it to access device identifiers when the system property 'ro.miui.restrict_imei' is set to '1'.

## Attack Surface
A pre-installed QR code app gains unrestricted access to IMEI/device ID methods (getImeiForSlot, getDeviceId, getMeid, etc.) even when the device owner has enabled IMEI restriction via system property, bypassing the intended privacy control.

## Call Graph
```
- `<clinit>: line 31-35 reads 'ro.miui.restrict_imei' via SystemProperties.get()`
- `<clinit>: line 37-47 populates sAllowedList with hardcoded packages including 'com.miui.qr'`
- `sAllowedList is used to gate DEVICE_ID access (inferred from sGetImeiMessage set at lines 62-73)`
```

## Affected Firmware Images
- claude_redmi_validated
