---
id: vuln-283
vendor: Xiaomi
package: com.xiaomi.miplay.client
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-283 · `com.xiaomi.miplay.client` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.xiaomi.miplay.client` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.95 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.xiaomi.miplay_client' is automatically granted default permissions without user consent via the MiuiDefaultPermissionGrantPolicy system.

## Attack Surface
A pre-installed or privileged app can leverage this hardcoded whitelist entry to gain default runtime permissions (camera, microphone, location, contacts, etc.) that would normally require user approval.

## Call Graph
```
- ApplicationPackageManager.<clinit>() — line 1133 (BlackList array initialization with 'com.xiaomi.miplay_client' at index 0x39)
- → MiuiDefaultPermissionGrantPolicy.<clinit>() — line 156 (MIUI_GLOBAL_APPS field contains the anchor string)
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I) — reads MIUI_GLOBAL_APPS field
- → MiuiDefaultPermissionGrantPolicy.realGrantDefaultPermissions() — invokes grantDefaultPermission() [PERM_GRANT tag]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
