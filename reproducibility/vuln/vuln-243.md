---
id: vuln-243
vendor: MIUI
package: com.xiaomi.mircs
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-243 · `com.xiaomi.mircs` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.mircs` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.72 |
| Threat type | permission_grant_bypass |

## Privacy Impact
Hardcoded packages (com.xiaomi.finddevice, co.sitic.pp, com.miui.backup) receive automatic runtime permission grants without user consent via the MiuiDefaultPermissionGrantPolicy system.

## Attack Surface
Pre-installed or privileged OEM apps can leverage this policy to grant themselves sensitive permissions (location, contacts, camera, microphone, etc.) at install time without user interaction or visibility.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [ANCHOR: hardcoded 'com.xiaomi.finddevice', 'co.sitic.pp', 'com.miui.backup']
- → sAllowAutoStartForOTAPkgs / MIUI_GLOBAL_APPS static field initialization
- → sMiuiAppDefaultGrantedPermissions (ArrayMap for permission grants)
- → DefaultPermissionGrantPolicyStub parent class (PERM_GRANT context)
```

