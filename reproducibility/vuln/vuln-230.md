---
id: vuln-230
vendor: MIUI
package: com.miui.cit
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-230 · `com.miui.cit` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.cit` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.75 |
| Threat type | data_exfiltration |

## Privacy Impact
The hardcoded package com.miui.cit is whitelisted in isAllowedAccessDeviceIdentifiers() to bypass device identifier access restrictions, allowing it to read IMEI, serial numbers, or other sensitive device IDs without standard permission checks.

## Attack Surface
A pre-installed MIUI diagnostic/testing app (com.miui.cit) gains unrestricted access to device identifiers that would normally require explicit permissions, enabling fingerprinting or device tracking.

## Call Graph
```
- MiPermissionManagerServiceImpl.<clinit>() [line 84: register com.miui.cit]
- → sAllowedList field initialization
- → isAllowedAccessDeviceIdentifiers() [occurrence #4: field_read sAllowedList]
- → DEVICE_ID bypass (implicit: method name + whitelist membership = access grant)
```

