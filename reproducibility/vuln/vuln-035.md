---
id: vuln-035
vendor: MIUI
package: com.xiaomi.simactivate.service
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-035 · `com.xiaomi.simactivate.service` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.simactivate.service` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.xiaomi.simactivate.service' is whitelisted in an IGNORE_PACKAGE_NAMES array used to bypass normal telephony and SMS application checks, allowing it to operate without standard permission/policy enforcement.

## Attack Surface
A pre-installed Xiaomi SIM activation service gains exemption from standard telephony permission checks and SMS application policy enforcement, potentially allowing it to send SMS, access call state, or manipulate telephony settings without normal security gates.

## Call Graph
```
- `TelephonyBaseUtilsImpl.<clinit>() [line 52-60] — hardcoded package added to IGNORE_PACKAGE_NAMES static field`
- `SmsApplicationInjector.<clinit>() [line 7-15] — same hardcoded package in IGNORE_PACKAGE_NAMES`
- `These arrays are used by callers to skip PKG_QUERY and permission checks on listed packages`
```

## Affected Firmware Images
- claude_redmi_validated
