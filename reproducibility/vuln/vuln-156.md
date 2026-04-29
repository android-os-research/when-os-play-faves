---
id: vuln-156
vendor: Transsion
package: com.domobile.applockwatcher
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-156 · `com.domobile.applockwatcher` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.domobile.applockwatcher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
A hardcoded package (com.domobile.applockwatcher) receives special treatment in home intent resolution, bypassing normal filtering when the calling UID matches that package, potentially allowing it to intercept or monopolize home screen resolution.

## Attack Surface
A pre-installed or privileged app with UID matching com.domobile.applockwatcher can force itself to be selected as the home activity when a HOME intent is resolved, bypassing user preference and normal resolution logic.

## Call Graph
```
- ResolveIntentHelper.chooseBestActivity() line 2163: String.equals(com.domobile.applockwatcher)
- → line 2163-2330: UID_CHECK via Binder.getCallingUid() at line 2323
- → line 2323-2330: Computer.getPackagesForUid(callingUid) returns array containing com.domobile.applockwatcher
- → line 2328-2330: Early return of first ResolveInfo without normal priority/preference checks
```

