---
id: vuln-131
vendor: Samsung
package: com.samsung.android.spaymini
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-131 · `com.samsung.android.spaymini` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.spaymini` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Hardcoded package names bypass normal package management checks and gain privileged background execution allowlisting without user consent or dynamic verification.

## Attack Surface
A pre-installed OEM service can unconditionally whitelist Samsung payment apps for background execution, bypassing ActivityManager restrictions that would normally apply to third-party apps.

## Call Graph
```
- PaymentManagerService.<init>() line 85 → Utils.backgroundWhitelist(context, 'com.samsung.android.spaymini', true)
- → Utils.backgroundWhitelist() line 115 → string equality check against hardcoded package
- → Utils.backgroundWhitelist() line 121 → hasValidSignature() [SIG_CHECK]
- → Utils.backgroundWhitelist() line 140-141 → ActivityManager.backgroundAllowlistUid(uid) [PKG_MGMT enforcement]
```

