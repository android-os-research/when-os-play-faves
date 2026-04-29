---
id: vuln-171
vendor: Transsion
package: com.zhiliaoapp.musically
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-171 · `com.zhiliaoapp.musically` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.zhiliaoapp.musically` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package com.zhiliaoapp.musically receives differential network optimization treatment (whitelist/blacklist bypass) without explicit user consent or visibility.

## Attack Surface
A pre-installed network optimization service can silently prioritize or deprioritize bandwidth allocation for this specific app, affecting its network performance relative to other apps.

## Call Graph
```
- a.<clinit>() line 121: filled-new-array with com.zhiliaoapp.musically → f1 ArraySet
- → a.l(I) → checks f1 set membership (APM_SUPPORT gated)
- → TranNetworkOptimizeControllerImpl.<init>() line 189-213: mWhitelist/mBlacklist arrays populated with hardcoded packages
- → TranNetworkOptimizeControllerImpl.isWhitelistApp()/isBlacklistApp() → array membership checks gate optimization logic
```

