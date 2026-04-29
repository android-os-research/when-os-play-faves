---
id: vuln-240
vendor: MIUI
package: com.xiaomi.ab
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-240 · `com.xiaomi.ab` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.ab` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.75 |
| Threat type | data_exfiltration |

## Privacy Impact
The hardcoded package com.xiaomi.ab is whitelisted in isAllowedAccessDeviceIdentifiers(), granting it unrestricted access to device identifiers (IMEI, serial number, etc.) without per-call permission checks.

## Attack Surface
A pre-installed or privileged app matching this package name can query device identifiers via the permission manager without runtime permission enforcement, enabling telemetry or tracking.

## Call Graph
```
- MiPermissionManagerServiceImpl.<clinit>() [line 168: com.xiaomi.ab added to sAllowedList]
- → MiPermissionManagerServiceImpl.isAllowedAccessDeviceIdentifiers() [reads sAllowedList, checks if caller is in whitelist]
- → Implicit: whitelist membership bypasses DEVICE_ID permission checks
```

