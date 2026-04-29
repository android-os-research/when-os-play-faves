---
id: vuln-193
vendor: Vivo
package: com.vivo.appfilter
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-193 · `com.vivo.appfilter` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.appfilter` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.appfilter' is queried without permission checks to determine if a feature is supported, allowing differential treatment based on presence of a privileged OEM component.

## Attack Surface
A pre-installed app or system service can detect whether the vivo app filter service is present and conditionally enable/disable app jump prompt features, potentially bypassing user consent flows or enabling covert monitoring.

## Call Graph
```
- appJumpPromptClientSupport() [ANCHOR at line 259]
- → Intent.setPackage('com.vivo.appfilter') [line 261]
- → PackageManager.queryIntentActivities() [line 263-264]
- → PKG_QUERY implicit via queryIntentActivities
```

