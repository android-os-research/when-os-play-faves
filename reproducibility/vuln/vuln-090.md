---
id: vuln-090
vendor: OnePlus
package: com.oplus.padconnect
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-090 · `com.oplus.padconnect` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.padconnect` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.padconnect' is added to an unsupported drag-and-drop list, potentially bypassing drag-and-drop sharing restrictions that should apply uniformly to all apps.

## Attack Surface
A pre-installed OEM service can selectively disable drag-and-drop sharing for a specific OEM package without user consent or configuration, creating differential treatment.

## Call Graph
```
- OplusGlobalDragAndDropRUSConfigManager.<init>() line 94: v0 := 'com.oplus.padconnect'
- → Collections.singletonList(v0) → mUnSupportDropToShareList
- → isInSupportGlobalDropPkgList() checks mUnSupportDropToShareList
- → OplusGlobalDragAndDropManagerService.grantPermission() [PERM_GRANT tag in propagation trace]
```

