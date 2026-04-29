---
id: vuln-257
vendor: Xiaomi
package: com.facebook.system
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-257 · `com.facebook.system` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.facebook.system` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.75 |
| Threat type | installer_privilege |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.facebook.system' is whitelisted in installer verification logic, allowing it to bypass standard APK signature and installer validation checks.

## Attack Surface
A pre-installed or privileged app matching this package name can install arbitrary APKs without standard security verification, potentially enabling sideloading of malicious applications.

## Call Graph
```
- PackageManagerServiceImpl.<clinit>() [line 772: register 'com.facebook.system']
- → isTrustedEnterpriseInstaller() [reads EP_INSTALLER_PKG_WHITELIST field]
- → assertValidApkAndInstaller() [INSTALLER_VERIFY]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
