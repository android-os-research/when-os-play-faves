---
id: vuln-024
vendor: MIUI
package: com.miui.vipservice
verdict: CONFIRMED_MEDIUM
tag: DEVICE_ID
category: data_exfiltration
---

# vuln-024 · `com.miui.vipservice` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.vipservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `DEVICE_ID` |
| Confidence | 0.85 |
| Threat type | data_exfiltration |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.vipservice' is whitelisted to access device identifiers (IMEI, MEID, device ID) without standard permission checks, enabling potential IMSI/device tracking.

## Attack Surface
Any pre-installed or privileged app that can impersonate or interact with com.miui.vipservice gains unrestricted access to sensitive device identifiers that would normally require READ_PHONE_STATE permission.

## Call Graph
```
- `<clinit>: line 53 adds 'com.miui.vipservice' to sAllowedList`
- `sAllowedList is used to gate DEVICE_ID access (lines 62-73 populate sGetImeiMessage with device ID methods)`
- `The allowlist directly enables bypass of permission checks for getImei, getDeviceId, getMeid, etc.`
```

## Affected Firmware Images
- claude_redmi_validated
