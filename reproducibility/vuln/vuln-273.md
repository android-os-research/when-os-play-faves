---
id: vuln-273
vendor: Xiaomi
package: com.miui.vipservice
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-273 · `com.miui.vipservice` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.vipservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.75 |
| Threat type | data_exfiltration |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.miui.vipservice is whitelisted in an allowlist that gates access to device identifiers (IMEI, serial number, etc.), granting it privileged access without per-call permission checks.

## Attack Surface
A pre-installed or privileged MIUI service gains unrestricted access to sensitive device identifiers that would normally require runtime permission enforcement, enabling telemetry or tracking without user consent.

## Call Graph
```
- MiPermissionManagerServiceImpl.<clinit>() [line 149: register com.miui.vipservice]
- → sAllowedList field initialization
- → isAllowedAccessDeviceIdentifiers() [checks if package is in sAllowedList]
- → DEVICE_ID access gate (implicit)
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
