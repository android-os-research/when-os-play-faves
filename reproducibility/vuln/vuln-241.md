---
id: vuln-241
vendor: MIUI
package: com.xiaomi.discover
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-241 · `com.xiaomi.discover` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.discover` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.75 |
| Threat type | installer_privilege |

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

