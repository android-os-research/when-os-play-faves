---
id: vuln-265
vendor: Xiaomi
package: com.miui.greenguard
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-265 · `com.miui.greenguard` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.greenguard` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded com.miui.greenguard package receives default system permissions without explicit user consent through MiuiDefaultPermissionGrantPolicy.

## Attack Surface
A pre-installed OEM component (greenguard) gains privileged permissions at boot time, potentially allowing it to monitor or control other apps without user awareness.

## Call Graph
```
- com.android.server.pm.MiuiDefaultPermissionGrantPolicy.<clinit>() [line 150: com.miui.greenguard]
- → grantDefaultPermission() [PERM_GRANT tag]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
