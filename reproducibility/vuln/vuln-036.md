---
id: vuln-036
vendor: MIUI
package: com.xiaomi.smarthome
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-036 · `com.xiaomi.smarthome` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.smarthome` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.xiaomi.smarthome' is conditionally skipped from preinstall copy during OTA upgrades based on carrier detection, allowing selective package management bypass for a specific app.

## Attack Surface
A pre-installed or privileged app can leverage this carrier-based exemption to prevent legitimate preinstall app updates, potentially maintaining outdated or vulnerable versions of com.xiaomi.smarthome.

## Call Graph
```
- `copyPreinstallAppsForBoot() [line 2073: hardcoded 'com.xiaomi.smarthome' in equals() check]`
- `→ SystemProperties.get('persist.sys.carrier.name') [line 1049: SYS_PROP_READ]`
- `→ DeletePackageHelper.<init>() [line 993: PKG_MGMT instantiation]`
- `→ conditional skip logic prevents copyPreinstallApp() invocation [line 1051-1054]`
```

## Affected Firmware Images
- claude_redmi_validated
