---
id: vuln-004
vendor: MIUI
package: com.facebook.system
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-004 · `com.facebook.system` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.facebook.system` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.85 |
| Threat type | installer_privilege |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.facebook.system' is added to a no-verify allowlist (sNoVerifyAllowPackage), potentially bypassing APK signature verification for Facebook system packages.

## Attack Surface
A pre-installed or privileged app matching this package name could install unsigned or maliciously-signed APKs without standard verification, compromising system integrity.

## Call Graph
```
- `<clinit>: const-string v0, 'com.facebook.system'`
- `<clinit>: sput-object v0 → sNoVerifyAllowPackage field`
- `sNoVerifyAllowPackage field tagged [INSTALLER_VERIFY]`
```

## Affected Firmware Images
- claude_redmi_validated
