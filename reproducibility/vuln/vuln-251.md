---
id: vuln-251
vendor: Lenovo
package: com.zui.clone
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-251 · `com.zui.clone` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.zui.clone` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.72 |
| Threat type | appops_manipulation |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded com.zui.clone package is checked in AppOpsService.noteOperation() to conditionally bypass or alter AppOps permission enforcement, potentially allowing the clone app to perform operations without proper permission checks.

## Attack Surface
A pre-installed com.zui.clone app (Lenovo/ZUI clone feature) gains the ability to bypass AppOps checks for sensitive operations like camera, microphone, location, or SMS access by being whitelisted in the allowlist_check logic.

## Call Graph
```
- AppOpsService.noteOperation() [ANCHOR: com.zui.clone string_compare]
- → if-eqz branch (early_return on match)
- → AppOpsService.checkPermissionWhiteList() [PERM_CHECK]
- → AppOpsService.noteOperationImpl() [APPOPS]
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
