---
id: vuln-052
vendor: Fairphone
package: com.facebook.katana
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-052 · `com.facebook.katana` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `com.facebook.katana` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
Facebook (com.facebook.katana) gains differential audio mode handling without standard AppOps enforcement, allowing it to set VOIP mode with special parameters that bypass normal permission checks.

## Attack Surface
A pre-installed or privileged Facebook app can invoke setMode(MODE_VOIP=3) and trigger special audio system parameter configuration (voip_app_type=7) that is not subject to the same AppOps checks as other callers.

## Call Graph
```
- AudioService.setMode() line 5364: string_compare 'com.facebook.katana'
- → conditional branch (if-nez) at line 5364 gates special handling
- → AudioSystem.setParameters('voip_app_type=7') at line 5365 (no AppOps check)
- → SetModeDeathHandler lifecycle management (APPOPS-tagged in callees)
```

