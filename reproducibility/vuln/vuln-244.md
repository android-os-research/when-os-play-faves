---
id: vuln-244
vendor: MIUI
package: com.xiaomi.uatalive
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-244 · `com.xiaomi.uatalive` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.uatalive` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.75 |
| Threat type | data_exfiltration |

## Privacy Impact
The hardcoded package com.xiaomi.uatalive is whitelisted in isAllowedAccessDeviceIdentifiers() to bypass device identifier access restrictions, allowing it to read IMEI, device ID, or similar sensitive identifiers without standard permission enforcement.

## Attack Surface
A pre-installed or privileged OEM app (com.xiaomi.uatalive) gains unrestricted access to device identifiers that would normally require explicit permission checks, enabling fingerprinting or tracking without user awareness.

## Call Graph
```
- MiPermissionManagerServiceImpl.<clinit>() [line 154: register com.xiaomi.uatalive]
- → sAllowedList field initialization
- → isAllowedAccessDeviceIdentifiers(String, String) [field_read via sAllowedList]
- → DEVICE_ID enforcement bypass (implicit)
```

