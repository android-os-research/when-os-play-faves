---
id: vuln-205
vendor: Vivo
package: com.vivo.healthcode
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-205 · `com.vivo.healthcode` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.healthcode` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The health code app receives special treatment in system lists and cgroup configurations, potentially bypassing normal resource management and visibility restrictions applied to other third-party apps.

## Attack Surface
A pre-installed or privileged app can exploit the hardcoded allowlist to gain elevated system privileges, bypass resource limits, or manipulate app visibility/lifecycle management.

## Call Graph
```
- VivoPmsImpl.skipScanUpdatedBuiltIn3PartApp() [line 2919: hardcoded package check]
- → mDeletedBuiltIn3PartAppList.contains() [line 2922: PKG_QUERY via list membership]
- → VivoIoUtils.writePackageNameListToFile() [line 2924: persistence of bypass decision]
- → CgrpUtils.setConfigs() [line 236: hardcoded in SYSTEM_FG_LIST for cgroup priority]
```

