---
id: vuln-030
vendor: MIUI
package: com.xiaomi.gamecenter
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-030 · `com.xiaomi.gamecenter` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.gamecenter` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.85 |
| Threat type | installer_privilege |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.xiaomi.gamecenter' is added to a no-verify-allow list that bypasses APK signature verification during installation.

## Attack Surface
A pre-installed or privileged app can install unsigned or maliciously-signed APKs under the guise of com.xiaomi.gamecenter without cryptographic validation, enabling arbitrary code execution.

## Call Graph
```
- `<clinit>() line with const-string 'com.xiaomi.gamecenter'`
- `sput-object to sNoVerifyAllowPackage static field`
- `sNoVerifyAllowPackage used in INSTALLER_VERIFY bypass logic`
```

## Affected Firmware Images
- claude_redmi_validated
