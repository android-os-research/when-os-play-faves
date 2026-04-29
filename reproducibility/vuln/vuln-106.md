---
id: vuln-106
vendor: Samsung
package: com.samsung.android.app.ledcoverdream
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-106 · `com.samsung.android.app.ledcoverdream` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.ledcoverdream` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package com.samsung.android.app.ledcoverdream is queried and its UID is extracted to bypass background execution restrictions via ActivityManager.backgroundAllowlistUid(), granting it power-saving exemption without user consent.

## Attack Surface
A pre-installed or privileged app can leverage this hardcoded allowlist to ensure com.samsung.android.app.ledcoverdream runs in the background indefinitely, consuming battery and network resources, or enabling persistent surveillance/telemetry.

## Call Graph
```
- backgroundAllowlist() [ANCHOR] → PackageManager.getApplicationInfo("com.samsung.android.app.ledcoverdream", 0)
- → getApplicationInfo() extracts uid → hasValidSignature() signature check
- → ActivityManager.backgroundAllowlistUid(uid) called unconditionally if signature valid
```

