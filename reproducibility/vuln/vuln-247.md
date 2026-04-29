---
id: vuln-247
vendor: Lenovo
package: com.kidzoye.parentalcontrol
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-247 · `com.kidzoye.parentalcontrol` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.kidzoye.parentalcontrol` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package com.kidzoye.parentalcontrol is allowlisted in a permission/enforcement check, bypassing normal security gates for desktop mode operations.

## Attack Surface
A pre-installed parental control app gains privileged access to desktop mode task management (getAllRootTaskInfo, removeRootTasksInWindowingModes) without standard permission validation, potentially allowing it to manipulate window state and task visibility across the system.

## Call Graph
```
- OVDesktopController.getAllRootTaskInfo() [line 5462: v10.equals(v9) allowlist check]
- → early_return on match (implicit enforcement bypass)
- → ActivityTaskManagerService.getAllRootTaskInfosOnDisplay() [PKG_QUERY]
- → ActivityTaskManagerService.enforceTaskPermission() [PERM_CHECK]
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
