---
id: vuln-189
vendor: Vivo
package: com.iqoo.website
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-189 · `com.iqoo.website` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.iqoo.website` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.iqoo.website' can have its component enabled/disabled state manipulated without user consent via setComponentEnabledSetting, affecting app visibility and functionality.

## Attack Surface
A pre-installed or privileged OEM service can silently disable/enable the HotQuestionEntry component in com.iqoo.website or com.vivo.website packages during system startup, bypassing normal package management controls.

## Call Graph
```
- disableHotQuestionIfNeed(int userId)
- → getPackageInfo(com.iqoo.website) [PKG_QUERY]
- → setComponentEnabledSetting(ComponentName, state) [PKG_MGMT]
```

