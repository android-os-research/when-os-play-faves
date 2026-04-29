---
id: vuln-192
vendor: Vivo
package: com.teslacoilsw.launcher
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-192 · `com.teslacoilsw.launcher` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.teslacoilsw.launcher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
Tesla Coil launcher gains access to user profiles without standard permission enforcement, potentially enabling profile enumeration or cross-profile data access.

## Attack Surface
A pre-installed or privileged launcher app can call getUserProfiles() and receive an unfiltered list of user profiles, bypassing the hardcoded package name check that applies to other launchers.

## Call Graph
```
- UserManager.getUserProfiles() [line 5008]
- → String.equals(com.teslacoilsw.launcher) [line 5021]
- → List.remove(userHandle) [line 5024]
- → PKG_QUERY: getCallingUid() + context.getPackageName() comparison
```

