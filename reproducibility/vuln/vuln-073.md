---
id: vuln-073
vendor: OnePlus
package: com.coloros.filemanager
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-073 · `com.coloros.filemanager` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.coloros.filemanager` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
com.coloros.filemanager is hardcoded into a system allowlist that exempts it from runtime app execution restrictions, bypassing normal package management controls.

## Attack Surface
A pre-installed or privileged OEM service can selectively exempt com.coloros.filemanager from app execution policies that apply to other third-party apps, granting it differential capability access without user consent.

## Call Graph
```
- OplusCustomizeApplicationManagerInternal.<init>() [line 73-110: const-string v15, "com.coloros.filemanager"]
- → mSystemAndOwnApps HashSet initialization [line 73-110]
- → readDisallowAppListFile() [line 123, private method not shown]
- → implicit PKG_QUERY via allowlist enforcement in mDisallowedRuningAppList
```

