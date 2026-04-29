---
id: vuln-042
vendor: OnePlus
package: com.cota.notification
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-042 · `com.cota.notification` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.cota.notification` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.cota.notification' is checked for installation and launched without user consent, allowing OEM to silently trigger carrier notification activities.

## Attack Surface
A pre-installed system service can launch arbitrary activities in com.cota.notification (MainActivity, SimPlugActivity, ManualRestartNotification) to display notifications or dialogs to users without explicit permission checks or user interaction.

## Call Graph
```
- needInstallNotificationPackage() → List.contains('com.cota.notification')
- sendCarrierCustomizeNotification() → isInstalled('com.cota.notification', '.MainActivity')
- sendNotifyRebootNotification() → isInstalled('com.cota.notification', '.ManualRestartNotification')
- sendRebootDialog() → isInstalled('com.cota.notification', '.SimPlugActivity') → Context.startActivity()
```

