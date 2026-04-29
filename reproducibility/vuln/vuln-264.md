---
id: vuln-264
vendor: Xiaomi
package: com.miui.fm
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-264 · `com.miui.fm` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.fm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.miui.fm' receives default system permissions automatically without user consent through MiuiDefaultPermissionGrantPolicy.

## Attack Surface
A pre-installed or privileged MiUI service can grant sensitive permissions to com.miui.fm (FM radio app) during system initialization, bypassing normal permission grant flows and user awareness.

## Call Graph
```
- com.android.server.pm.MiuiDefaultPermissionGrantPolicy.<clinit>() [hardcoded com.miui.fm in static init]
- → com.android.server.pm.MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I)
- → com.android.server.pm.MiuiDefaultPermissionGrantPolicy.realGrantDefaultPermissions() [PERM_GRANT]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
