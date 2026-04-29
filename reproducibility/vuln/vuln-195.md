---
id: vuln-195
vendor: Vivo
package: com.vivo.childrenmode
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-195 · `com.vivo.childrenmode` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.childrenmode` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded 'com.vivo.childrenmode' package receives special treatment in system UI initialization, potentially bypassing normal package visibility and query restrictions.

## Attack Surface
A pre-installed or privileged app can exploit this hardcoded exception to gain differential treatment in window attribute handling, specifically for home indicator state management.

## Call Graph
```
- VivoPhoneWindowImpl.initSystemUIColor() [line 451]
- → String.equals('com.vivo.childrenmode') [line 451]
- → PhoneWindow.mIsStartingWindow check [line 451]
- → setHomeIndicatorState() [line 452]
```

