---
id: vuln-043
vendor: OnePlus
package: com.jiochat.jiochatapp
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-043 · `com.jiochat.jiochatapp` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.jiochat.jiochatapp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.jiochat.jiochatapp' is added to a background skip list that exempts it from permission interception and prompting, allowing silent access to sensitive permissions.

## Attack Surface
A pre-installed or privileged app can leverage this hardcoded exemption to access camera, microphone, location, and other sensitive permissions without user awareness or consent prompts.

## Call Graph
```
- OplusPermissionInterceptPolicy.<init>() line 1540: v11 := 'com.jiochat.jiochatapp'
- filled-new-array → sBackgroundSkipList.add()
- getPermissionState() queries sBackgroundSkipList
- Permission check logic skips enforcement for listed packages
```

