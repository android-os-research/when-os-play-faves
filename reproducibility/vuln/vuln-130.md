---
id: vuln-130
vendor: Samsung
package: com.samsung.android.spayfw
verdict: CONFIRMED_HIGH
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-130 · `com.samsung.android.spayfw` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.spayfw` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Hardcoded package 'com.samsung.android.spayfw' is granted background execution privileges and uninstallation protection without user consent or validation.

## Attack Surface
A pre-installed or privileged OEM app can leverage this to prevent removal of Samsung Payment Framework and ensure it runs in the background, enabling persistent data collection or surveillance.

## Call Graph
```
- PaymentManagerService.<init>() line 72: const-string 'com.samsung.android.spayfw'
- → Utils.backgroundWhitelist() line 83-84: invoked with hardcoded package
- → ActivityManager.backgroundAllowlistUid() [PKG_MGMT enforcement]
- → ApplicationPolicy.setApplicationUninstallationDisabled() line 245: hardcoded package disabled from uninstall
```

