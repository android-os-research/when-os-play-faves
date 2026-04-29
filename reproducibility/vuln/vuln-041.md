---
id: vuln-041
vendor: OnePlus
package: com.appstar.callrecorder
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-041 · `com.appstar.callrecorder` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.appstar.callrecorder` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.appstar.callrecorder' is added to a background skip list that bypasses permission enforcement for CALL_PHONE and RECORD_AUDIO permissions.

## Attack Surface
A pre-installed or privileged app can use this hardcoded exemption to access microphone and phone call capabilities without triggering permission dialogs or enforcement checks.

## Call Graph
```
- OplusPermissionInterceptPolicy.<init>() line 1538: v10 := 'com.appstar.callrecorder'
- sBackgroundSkipList.add(v10) line 681
- getPermissionState() uses sBackgroundSkipList for PERM_CHECK bypass
- checkPermission() [PERM_CHECK tag] gates enforcement
```

