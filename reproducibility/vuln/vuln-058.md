---
id: vuln-058
vendor: Lenovo
package: com.kidzoye.parentalcontrol
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-058 · `com.kidzoye.parentalcontrol` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Package | `com.kidzoye.parentalcontrol` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.kidzoye.parentalcontrol' receives differential treatment in task enumeration and lifecycle management, potentially bypassing normal app lifecycle enforcement.

## Attack Surface
A pre-installed parental control app gains the ability to suppress task killing and special handling during PC mode transitions, allowing it to persist when other apps are terminated.

## Call Graph
```
- getAllRootTaskInfo(I) @ line 2755
- → String.equals() comparison with hardcoded package
- → conditional branch skips mKilledApps.add() for this package only
- → Handler.post() executes task-specific runnable without killing the app
```

