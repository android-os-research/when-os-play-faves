---
id: vuln-085
vendor: OnePlus
package: com.oplus.customize.coreapp
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-085 · `com.oplus.customize.coreapp` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.customize.coreapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.customize.coreapp' receives differential treatment in audio parameter permission checks, bypassing normal permission validation for custom API parameters.

## Attack Surface
A pre-installed OEM app (com.oplus.customize.coreapp) can invoke setParametersPermission() with custom audio parameters and bypass the setCustomApiParametersPermission() check that would normally be enforced for other callers.

## Call Graph
```
- setParametersPermission() [ANCHOR] — line 473: hardcoded string comparison
- → getOpPackageName() — retrieves caller package name (PKG_QUERY pattern)
- → equals() comparison — differential treatment: if caller == 'com.oplus.customize.coreapp', permission check is skipped
- → setCustomApiParametersPermission() — only called if caller != hardcoded package
```

