---
id: vuln-228
vendor: MIUI
package: com.gohappy.mobileapp
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-228 · `com.gohappy.mobileapp` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.gohappy.mobileapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package com.gohappy.mobileapp is whitelisted in DevicePolicyManagerService delegation and carrier preinstall lists, bypassing normal permission enforcement for sensitive device policy operations.

## Attack Surface
A pre-installed or privileged app matching this package name gains unvetted access to device policy delegation methods (enableSystemApp, installKeyPair, getApplicationRestrictions, getPermissionGrantState, etc.) without standard caller identity verification.

## Call Graph
```
- DevicePolicyManagerService.<clinit>() registers com.gohappy.mobileapp in CARRIER_PREINSTALL_LIST
- → enableSystemApp() reads CARRIER_PREINSTALL_LIST field
- → isCallerDelegate() reads DELEGATIONS array containing the package
- → Delegates to getPermissionGrantState(), installKeyPair(), getApplicationRestrictions() — all PERM_CHECK gated
```

