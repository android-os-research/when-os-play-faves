---
id: vuln-225
vendor: MIUI
package: co.sitic.pp
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-225 · `co.sitic.pp` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `co.sitic.pp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.85 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'co.sitic.pp' receives automatic default permission grants during system initialization without user consent or explicit policy declaration.

## Attack Surface
A pre-installed or privileged app matching this package name gains dangerous runtime permissions (likely CAMERA, LOCATION, CONTACTS, MICROPHONE, etc.) automatically during CTS or default permission grant flows, bypassing normal permission request dialogs.

## Call Graph
```
- grantPermissionsForCTS(I) [line 566: co.sitic.pp hardcoded]
- → grantDefaultPermissions() [PERM_GRANT]
- → realGrantDefaultPermissions() [PERM_GRANT invoked]
- → MIUI_SYSTEM_APPS/MIUI_GLOBAL_APPS array membership grants permissions
```

