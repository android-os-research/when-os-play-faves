---
id: vuln-258
vendor: Xiaomi
package: com.gohappy.mobileapp
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-258 · `com.gohappy.mobileapp` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.gohappy.mobileapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 image |

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

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
