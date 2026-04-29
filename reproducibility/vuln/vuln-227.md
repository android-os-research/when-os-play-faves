---
id: vuln-227
vendor: MIUI
package: com.amazon.venezia
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-227 · `com.amazon.venezia` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.amazon.venezia` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.75 |
| Threat type | installer_privilege |

## Privacy Impact
The hardcoded package com.amazon.venezia is added to a whitelist that bypasses APK signature and installer verification checks during package installation.

## Attack Surface
A pre-installed or privileged app can exploit this whitelist to install unsigned or improperly signed packages under the com.amazon.venezia identity without standard verification enforcement.

## Call Graph
```
- initAllowPackageList() reads sAllowPackage field containing com.amazon.venezia
- → initAllowPackageList() invokes assertValidApkAndInstaller()
- → assertValidApkAndInstaller() is tagged INSTALLER_VERIFY
```

