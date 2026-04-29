---
id: vuln-132
vendor: Samsung
package: com.samsung.android.uds
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-132 · `com.samsung.android.uds` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.uds` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.uds' receives privileged notification intents and conditional feature access without standard permission checks, allowing Samsung's UDS app to bypass normal package discovery and access controls.

## Attack Surface
A pre-installed Samsung system app (com.samsung.android.uds) gains the ability to receive data usage notifications and conditional launch intents that are gated only by package name matching, not by signature verification or explicit permission grants. This allows the app to monitor network policy events and trigger UI flows without standard Android security gates.

## Call Graph
```
- enqueueNotification() → isPackageInstalled('com.samsung.android.uds') [line 1970]
- → buildViewDataUsageIntentUDS() → Intent.setPackage('com.samsung.android.uds') [line 6447]
- → PendingIntent.getActivity() with UDS intent [line 1978]
```

