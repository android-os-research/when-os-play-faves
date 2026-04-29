---
id: vuln-038
vendor: MIUI
package: de.telekom.tsc
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-038 · `de.telekom.tsc` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `de.telekom.tsc` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.85 |
| Threat type | installer_privilege |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'de.telekom.tsc' is added to a no-verify-allow list, potentially bypassing APK signature verification for this specific package during installation.

## Attack Surface
A pre-installed or privileged app matching this package name could install unsigned or maliciously-signed APKs without standard verification checks, enabling code injection or privilege escalation.

## Call Graph
```
- `<clinit>: const-string v2, 'de.telekom.tsc'`
- `<clinit>: sput-object v0, sNoVerifyAllowPackage (INSTALLER_VERIFY tag)`
- `sNoVerifyAllowPackage field used in installer verification logic`
```

## Affected Firmware Images
- claude_redmi_validated
