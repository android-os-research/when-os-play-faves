---
id: vuln-238
vendor: MIUI
package: com.sfr.android.sfrjeux
verdict: CONFIRMED_MEDIUM
tag: INSTALLER_VERIFY
category: installer_privilege
---

# vuln-238 · `com.sfr.android.sfrjeux` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.sfr.android.sfrjeux` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `INSTALLER_VERIFY` |
| Confidence | 0.72 |
| Threat type | installer_privilege |

## Privacy Impact
The hardcoded package com.sfr.android.sfrjeux is whitelisted in an enterprise installer trust list, potentially bypassing normal package installation verification for this specific package.

## Attack Surface
A pre-installed or privileged app matching this package name gains exemption from standard installer verification checks, allowing it to install packages without normal security gates.

## Call Graph
```
- PackageManagerServiceImpl.<clinit>() [line 753]
- → isTrustedEnterpriseInstaller()
- → EP_INSTALLER_PKG_WHITELIST field check
- → INSTALLER_VERIFY bypass
```

