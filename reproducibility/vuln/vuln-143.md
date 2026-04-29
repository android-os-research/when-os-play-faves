---
id: vuln-143
vendor: Samsung
package: com.sec.android.fotaclient
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-143 · `com.sec.android.fotaclient` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.android.fotaclient` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.sec.android.fotaclient' (OTA firmware update client) can be silently enabled/disabled by any admin without user consent, potentially blocking or forcing firmware updates.

## Attack Surface
A malicious or compromised Knox admin can invoke allowOTAUpgrade() to enable/disable the FOTA client and two related packages (com.wssyncmldm, com.ws.dm), bypassing normal application state management and potentially preventing security patches.

## Call Graph
```
- allowOTAUpgrade() [line 2511-2513]
- → ApplicationPolicy.setApplicationState(ContextInfo, 'com.sec.android.fotaclient', boolean)
- → PackageManagerAdapter.setApplicationEnabledSetting() [PKG_MGMT tag]
- → IPackageManager.setApplicationEnabledSetting()
```

