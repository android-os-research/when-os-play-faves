---
id: vuln-226
vendor: MIUI
package: com.altice.android.myapps
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-226 · `com.altice.android.myapps` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.altice.android.myapps` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.72 |
| Threat type | installer_privilege |

## Privacy Impact
The hardcoded package com.altice.android.myapps is whitelisted as a trusted enterprise installer, bypassing normal APK signature verification and installation restrictions.

## Attack Surface
A pre-installed or privileged app matching this package name can install arbitrary APKs without standard security checks, potentially enabling sideloading of malicious applications.

## Call Graph
```
- PackageManagerServiceImpl.<clinit>() [line 758]
- → PackageManagerServiceImpl.isTrustedEnterpriseInstaller()
- → EP_INSTALLER_PKG_WHITELIST field read
- → INSTALLER_VERIFY enforcement
```

