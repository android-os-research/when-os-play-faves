---
id: vuln-199
vendor: Vivo
package: com.vivo.familycare.local
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-199 · `com.vivo.familycare.local` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.familycare.local` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.familycare.local' is added to uninstall and delete-flags whitelists, allowing it to bypass normal package management restrictions and deletion safeguards.

## Attack Surface
A pre-installed family care app gains immunity from uninstallation and can bypass standard package deletion flags, preventing users from removing it even if they wish to.

## Call Graph
```
- VivoAppsRestriction.<clinit>() [ANCHOR: const-string 'com.vivo.familycare.local']
- → mUninstallWhitelist.add(v2) [line 66]
- → mDeleteFlagsWhitelist.add(v2) [line 77]
- → isAppsRestrictionSurpport() queries mPackages.get('com.vivo.familycare.local') [PKG_QUERY]
```

