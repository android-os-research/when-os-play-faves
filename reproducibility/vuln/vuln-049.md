---
id: vuln-049
vendor: Fairphone
package: de.telekom.tsc
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-049 · `de.telekom.tsc` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `de.telekom.tsc` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'de.telekom.tsc' receives default system permissions (APPENABLE_PERMISSIONS) without standard authorization checks, potentially granting sensitive capabilities.

## Attack Surface
A pre-installed or privileged app can leverage this to grant permissions to the Telekom package that would normally require user consent or admin approval.

## Call Graph
```
- DefaultPermissionGrantPolicy.grantDefaultSystemHandlerPermissions() [line 792]
- → grantPermissionsToPackage() [PERM_GRANT call]
- → hardcoded 'de.telekom.tsc' package string
```

