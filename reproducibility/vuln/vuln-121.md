---
id: vuln-121
vendor: Samsung
package: com.samsung.android.oneconnect
verdict: CONFIRMED_HIGH
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-121 · `com.samsung.android.oneconnect` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.oneconnect` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.oneconnect' is automatically added to the system background allowlist without user consent or dynamic verification, granting it persistent background execution privileges.

## Attack Surface
A pre-installed or privileged app (SmartThingsService) unconditionally whitelists com.samsung.android.oneconnect for background execution. If this package is compromised or replaced, it gains unrestricted background activity capability, enabling persistent data collection, location tracking, or other surveillance.

## Call Graph
```
- SmartThingsService.<init>() [line 35] → backgroundWhitelist(Context)
- → backgroundWhitelist() [line 60] → PackageManager.getApplicationInfo(com.samsung.android.oneconnect, 0)
- → backgroundWhitelist() [line 68] → hasValidSignature(Context, com.samsung.android.oneconnect)
- → backgroundWhitelist() [line 73] → IActivityManager.backgroundAllowlistUid(uid)
```

