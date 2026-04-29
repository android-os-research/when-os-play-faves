---
id: vuln-017
vendor: MIUI
package: com.miui.mishare.connectivity
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-017 · `com.miui.mishare.connectivity` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.mishare.connectivity` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.mishare.connectivity' is added to privileged allowlists that bypass normal security checks, enabling it to access restricted functionality without standard permission enforcement.

## Attack Surface
A pre-installed OEM app (MiShare connectivity) gains exemption from URI validation checks and resolver activity filtering, allowing it to perform actions that would normally be restricted or require user consent.

## Call Graph
```
- `ResolverActivityStubImpl.<clinit>() adds 'com.miui.mishare.connectivity' to PRIV_PACKAGES Set`
- `ActivityTaskManagerServiceImpl.<clinit>() adds 'com.miui.mishare.connectivity' to mIgnoreUriCheckPkg HashSet`
- `mIgnoreUriCheckPkg is checked to bypass URI validation (PKG_QUERY context)`
- `PRIV_PACKAGES is used in customResolver() to filter resolver display list`
```

## Affected Firmware Images
- claude_redmi_validated
