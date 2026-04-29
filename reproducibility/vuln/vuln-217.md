---
id: vuln-217
vendor: MIUI
package: com.speedymovil.wire
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-217 · `com.speedymovil.wire` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.speedymovil.wire` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.speedymovil.wire' receives runtime permissions (READ_PHONE_STATE, RECEIVE_SMS, CALL_PHONE) without user consent when the device region is 'mx_telcel', bypassing normal permission grant flows.

## Attack Surface
A pre-installed or privileged app can gain sensitive permissions automatically on Mexican Telcel devices without user interaction, enabling access to phone state, SMS, and call capabilities.

## Call Graph
```
- grantPermissionsForCTS(I) line 265: const-string v2, 'com.speedymovil.wire'
- → grantPermissionsForCTS(I) line 267: invoke grantRuntimePermissionsLPw(...)
- → grantRuntimePermissionsLPw(...) line 415: invoke PackageManagerService.grantRuntimePermission(...)
- → PackageManagerService.grantRuntimePermission() [PERM_GRANT]
```

