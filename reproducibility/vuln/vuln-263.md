---
id: vuln-263
vendor: Xiaomi
package: com.miui.dmregservice
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-263 · `com.miui.dmregservice` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.dmregservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
Hardcoded packages like 'com.xiaomi.finddevice' and 'com.miui.backup' receive automatic runtime permission grants without user consent via MiuiDefaultPermissionGrantPolicy.

## Attack Surface
Pre-installed MIUI system apps gain privileged access to sensitive permissions (location, contacts, camera, microphone) through the default permission grant policy, bypassing normal Android permission flow.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 68: hardcoded 'com.xiaomi.finddevice']
- → MiuiDefaultPermissionGrantPolicy.sAllowAutoStartForOTAPkgs static field initialization
- → MiuiDefaultPermissionGrantPolicy extends DefaultPermissionGrantPolicyStub
- → DefaultPermissionGrantPolicyStub.grantDefaultPermission() [inferred PERM_GRANT]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
