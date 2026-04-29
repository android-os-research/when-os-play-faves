---
id: vuln-075
vendor: OnePlus
package: com.coloros.oshare
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-075 · `com.coloros.oshare` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.coloros.oshare` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.coloros.oshare' can be silently disabled or enabled without user consent via MDM framework integration, allowing privileged code to control app availability.

## Attack Surface
A pre-installed or privileged app with access to OplusDeviceApplicationManager can invoke setOShareDisabled() to remotely disable/enable the OShare app (file sharing service) for all users, bypassing normal package management controls and user choice.

## Call Graph
```
- setOShareDisabled(Z) [ANCHOR: const-string 'com.coloros.oshare']
- → DeviceApplicationManager.getInstance()
- → setDisabledAppList(ComponentName, List<String>, int)
- → PKG_MGMT enforcement (implicit via MDM framework)
```

