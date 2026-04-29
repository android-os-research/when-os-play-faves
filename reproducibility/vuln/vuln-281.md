---
id: vuln-281
vendor: Xiaomi
package: com.xiaomi.discover
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-281 · `com.xiaomi.discover` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.xiaomi.discover` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.75 |
| Threat type | installer_privilege |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.xiaomi.discover is whitelisted in an installer verification bypass list (sAllowPackage), allowing it to skip APK signature validation checks that normally protect system integrity.

## Attack Surface
A pre-installed or privileged app can install unsigned or maliciously-signed APKs on behalf of com.xiaomi.discover without standard verification, potentially enabling sideloading of malware or privilege escalation.

## Call Graph
```
- PackageManagerServiceImpl.<clinit>() [ANCHOR: com.xiaomi.discover hardcoded]
- → PackageManagerServiceImpl.initAllowPackageList() [reads sAllowPackage field containing anchor]
- → PackageManagerServiceImpl.assertValidApkAndInstaller() [INSTALLER_VERIFY tag]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
