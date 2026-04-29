---
id: vuln-236
vendor: MIUI
package: com.orange.aura.oobe
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: permission_grant_bypass
---

# vuln-236 · `com.orange.aura.oobe` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.orange.aura.oobe` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package com.orange.aura.oobe is whitelisted in DevicePolicyManagerService's CARRIER_PREINSTALL_LIST and DELEGATIONS arrays, allowing it to bypass normal permission checks and gain elevated device policy capabilities without explicit user consent.

## Attack Surface
A pre-installed OEM package (com.orange.aura.oobe) gains the ability to: (1) enable/disable system apps via enableSystemApp(), (2) manage application restrictions, (3) install certificates, (4) access enrollment-specific identifiers, (5) manage permissions via getPermissionGrantState(), and (6) perform other delegated device policy operations that would normally require admin approval.

## Call Graph
```
- DevicePolicyManagerService.<clinit>() [line 2963: hardcoded package]
- → CARRIER_PREINSTALL_LIST field initialization
- → enableSystemApp() / isCallerDelegate() [PERM_CHECK context]
- → getPermissionGrantState() / installKeyPair() [privilege escalation]
```

