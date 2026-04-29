---
id: vuln-013
vendor: MIUI
package: com.miui.dmregservice
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-013 · `com.miui.dmregservice` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.dmregservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.dmregservice' is added to allowlists that bypass signature verification and permission enforcement checks, allowing it privileged access without standard security gates.

## Attack Surface
A pre-installed or privileged app can leverage the whitelisted status of com.miui.dmregservice to bypass APK signature verification (sNoVerifyAllowPackage), skip permission checks (sShellCheckPermissions), and avoid uninstall restrictions (sSilentlyUninstallPackages).

## Call Graph
```
- `PackageManagerServiceImpl.<clinit>() line 1025 — sNoVerifyAllowPackage.add('com.miui.dmregservice')`
- `PackageManagerServiceImpl.initIgnoreApps() line 7796 — Set.add(v2='com.miui.dmregservice')`
- `MiPermissionManagerServiceImpl.<clinit>() line 60 — sAllowedList.add('com.miui.dmregservice')`
- `isAllowedAccessDeviceIdentifiers() — checks sAllowedList to gate DEVICE_ID access`
```

## Affected Firmware Images
- claude_redmi_validated
