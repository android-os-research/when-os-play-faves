---
id: vuln-071
vendor: OnePlus
package: com.celltick.lockscreen
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-071 · `com.celltick.lockscreen` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.celltick.lockscreen` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package com.celltick.lockscreen receives differential treatment in app launch flow, bypassing normal inquiry dialogs that apply to other apps.

## Attack Surface
A pre-installed lockscreen app gains the ability to launch without user confirmation prompts that would normally be shown for other applications, potentially enabling unauthorized activity transitions.

## Call Graph
```
- showInquiryRunningAppDialog() [ANCHOR] — line 224: equalsIgnoreCase("com.celltick.lockscreen")
- → line 225: getPropChooseEnable() check
- → line 228-237: conditional dialog suppression based on package match
```

