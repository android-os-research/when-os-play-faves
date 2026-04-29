---
id: vuln-094
vendor: OnePlus
package: com.redteamobile.roaming
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-094 · `com.redteamobile.roaming` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.redteamobile.roaming` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.redteamobile.roaming' is added to ALLOW_ADD_INSTALL_PERM_DATA_APPS list, which grants it automatic installation-time data permissions without user consent.

## Attack Surface
A pre-installed or privileged app can leverage this allowlist to automatically grant sensitive data permissions (LOCATION, CONTACTS, CALENDAR, etc.) to com.redteamobile.roaming at install time, bypassing runtime permission prompts.

## Call Graph
```
- OplusSensitivePermGrantPolicyManager.<clinit>() [line 133-140: const-string v6, 'com.redteamobile.roaming' added to ALLOW_ADD_INSTALL_PERM_DATA_APPS ArrayList]
- → ALLOW_ADD_INSTALL_PERM_DATA_APPS static field populated
- → Implicit flow to permission grant policy enforcement (method name indicates sensitive perm grant policy)
```

