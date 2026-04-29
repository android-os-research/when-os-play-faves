---
id: vuln-237
vendor: MIUI
package: com.qualcomm.qti.autoregistration
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-237 · `com.qualcomm.qti.autoregistration` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.qualcomm.qti.autoregistration` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.75 |
| Threat type | data_exfiltration |

## Privacy Impact
The hardcoded package 'com.qualcomm.qti.autoregistration' is whitelisted in a device identifier access control list, allowing it to bypass normal permission checks for sensitive device identifiers (IMEI, serial number, etc.).

## Attack Surface
A pre-installed or privileged Qualcomm auto-registration service gains unrestricted access to device identifiers without standard permission enforcement, potentially enabling telemetry or tracking without user awareness.

## Call Graph
```
- MiPermissionManagerServiceImpl.<clinit>() — hardcoded package added to sAllowedList
- → isAllowedAccessDeviceIdentifiers(String, String) — checks if caller is in sAllowedList
- → DEVICE_ID access granted if package matches
```

