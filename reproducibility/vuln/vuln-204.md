---
id: vuln-204
vendor: Vivo
package: com.vivo.health
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-204 · `com.vivo.health` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.health` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.health' receives privileged widget configuration access without proper UID verification, allowing it to bypass normal permission checks.

## Attack Surface
A pre-installed or privileged app (com.vivo.health) can call setCustomWidgetList() to configure custom widgets without standard security enforcement that applies to other callers.

## Call Graph
```
- AppWidgetServiceImpl.setCustomWidgetList()
- → Binder.getCallingUid() [UID_CHECK]
- → PackageManager.getNameForUid()
- → String.equals() comparison with hardcoded 'com.vivo.health'
```

