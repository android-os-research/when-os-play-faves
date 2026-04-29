---
id: vuln-209
vendor: Vivo
package: com.vivo.setupwizard
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-209 · `com.vivo.setupwizard` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.setupwizard` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The skipSetupWizard method disables the setup wizard and marks device as provisioned without user consent, allowing bypass of initial device setup security checks.

## Attack Surface
A pre-installed or privileged app can call skipSetupWizard(userId) to bypass setup wizard, skip user setup completion checks, and mark the device as provisioned—potentially allowing unauthorized configuration or access to device features.

## Call Graph
```
- VivoAmsImpl.skipSetupWizard(I)
- → IPackageManager.setApplicationEnabledSetting(com.vivo.setupwizard, COMPONENT_ENABLED_STATE_DISABLED, ...)
- → PKG_MGMT: setApplicationEnabledSetting
- → Settings.Global/Secure/System.putInt (device_provisioned, user_setup_complete, setup_wizard_has_run)
```

