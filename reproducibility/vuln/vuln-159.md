---
id: vuln-159
vendor: Transsion
package: com.payjoy.access
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-159 · `com.payjoy.access` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.payjoy.access` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
A hardcoded package (com.payjoy.access) can be enabled/disabled without standard permission enforcement, allowing privileged control over a financial service package.

## Attack Surface
Pre-installed system services or OEM apps can invoke PayJoyFinancialController.disableControl() or enableControl() to toggle com.payjoy.access state without user consent or permission checks.

## Call Graph
```
- PayJoyFinancialController.disableControl() → PackageManager.enabledPackage(com.payjoy.access, userId, false)
- → PayJoyFinancialController.enableControl() → PackageManager.enabledPackage(com.payjoy.access, userId, true)
- → PackageManagerService.setEnabledSettings() → String.equals(com.payjoy.access) allowlist check
- → PackageManager.enabledPackage() → PKG_MGMT operation on hardcoded package
```

