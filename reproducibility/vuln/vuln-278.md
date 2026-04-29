---
id: vuln-278
vendor: Xiaomi
package: com.speedymovil.wire
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-278 · `com.speedymovil.wire` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.speedymovil.wire` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
Hardcoded packages (com.xiaomi.finddevice, co.sitic.pp, com.miui.backup) receive automatic runtime permission grants without user consent through the MiuiDefaultPermissionGrantPolicy system.

## Attack Surface
A pre-installed OEM app or privileged system service can leverage this policy to grant sensitive permissions (location, contacts, camera, microphone, etc.) to hardcoded packages automatically during system initialization, bypassing normal permission grant flows.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [ANCHOR: hardcoded 'com.xiaomi.finddevice', 'co.sitic.pp', 'com.miui.backup']
- → sAllowAutoStartForOTAPkgs / MIUI_GLOBAL_APPS static field initialization
- → sMiuiAppDefaultGrantedPermissions (ArrayMap for default granted permissions)
- → DefaultPermissionGrantPolicyStub parent class (PERM_GRANT context)
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
