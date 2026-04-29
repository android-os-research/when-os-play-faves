---
id: vuln-001
vendor: MIUI
package: com.baidu.carlife
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-001 · `com.baidu.carlife` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.baidu.carlife` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.baidu.carlife' receives automatic USB accessory permission grants without user consent when detected as running, bypassing normal permission dialogs.

## Attack Surface
A pre-installed or privileged OEM app (MiuiUsbServiceImpl) automatically grants USB accessory access to Baidu CarLife whenever it detects the app is running in the foreground, circumventing the standard USB permission prompt mechanism.

## Call Graph
```
- `preSelectUsbHandlerForCarWith() [ANCHOR] — hardcoded 'com.baidu.carlife' string at line 41`
- `→ String.equals() comparison at line 101 to identify the package`
- `→ ActivityManager.getRunningAppProcesses() at line 112 to detect if package is running`
- `→ UsbUserPermissionManager.grantAccessoryPermission() at line 125 grants permission without user interaction`
```

## Affected Firmware Images
- claude_redmi_validated
