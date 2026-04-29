---
id: vuln-286
vendor: Xiaomi
package: com.xiaomi.vipaccount
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-286 · `com.xiaomi.vipaccount` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.xiaomi.vipaccount` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.72 |
| Threat type | installer_privilege |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.xiaomi.vipaccount is whitelisted in an installer verification bypass list, allowing it to install packages without standard APK validation checks.

## Attack Surface
A pre-installed Xiaomi VIP account service gains the ability to bypass installer verification (assertValidApkAndInstaller), potentially allowing installation of unsigned or tampered packages.

## Call Graph
```
- PackageManagerServiceImpl.<clinit>() [line 723: com.xiaomi.vipaccount hardcoded]
- → PackageManagerServiceImpl.EP_INSTALLER_PKG_WHITELIST field populated
- → PackageManagerServiceImpl.isTrustedEnterpriseInstaller() reads EP_INSTALLER_PKG_WHITELIST
- → isTrustedEnterpriseInstaller() → assertValidApkAndInstaller() [INSTALLER_VERIFY]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
