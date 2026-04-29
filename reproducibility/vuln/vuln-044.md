---
id: vuln-044
vendor: OnePlus
package: com.nll.acr
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-044 · `com.nll.acr` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.nll.acr` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.nll.acr' is added to a background skip list that bypasses permission enforcement for sensitive operations like CALL_PHONE and RECORD_AUDIO.

## Attack Surface
A pre-installed or privileged app matching this package name gains automatic exemption from background permission checks, allowing it to call and record audio without user prompts.

## Call Graph
```
- OplusPermissionInterceptPolicy.<init>() line 1542: v12 := 'com.nll.acr'
- Map.put(v12, ...) → sBackgroundSkipList
- getPermissionState() queries sBackgroundSkipList via early_return pattern
- PERM_CHECK enforcement in checkPermission() is bypassed for listed packages
```

