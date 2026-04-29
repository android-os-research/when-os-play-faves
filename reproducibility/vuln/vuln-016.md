---
id: vuln-016
vendor: MIUI
package: com.miui.greenguard
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-016 · `com.miui.greenguard` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.greenguard` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.greenguard' can be silently disabled via setApplicationEnabledSetting without user consent or permission checks, bypassing normal package management controls.

## Attack Surface
A pre-installed or privileged system service can invoke disableAgentProcess() to disable the GreenGuard parental control agent, allowing circumvention of device restrictions and parental controls.

## Call Graph
```
- `GreenGuardManagerService.disableAgentProcess() [ANCHOR: const-string 'com.miui.greenguard']`
- `→ PackageManager.getApplicationInfo(v1, v3) [PKG_QUERY]`
- `→ PackageManager.setApplicationEnabledSetting(v1, v3, v4) [PKG_MGMT]`
```

## Affected Firmware Images
- claude_redmi_validated
