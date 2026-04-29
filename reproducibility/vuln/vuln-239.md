---
id: vuln-239
vendor: MIUI
package: com.ume.browser.hs
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-239 · `com.ume.browser.hs` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.ume.browser.hs` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.92 |
| Threat type | permission_grant_bypass |

## Privacy Impact
Hardcoded packages (com.xiaomi.finddevice, co.sitic.pp, com.miui.backup) receive automatic runtime permission grants without user consent via MiuiDefaultPermissionGrantPolicy.

## Attack Surface
Pre-installed OEM apps gain privileged access to sensitive permissions (location, contacts, camera, microphone, etc.) through the default permission grant mechanism, bypassing Android's runtime permission model.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [ANCHOR: hardcoded 'com.xiaomi.finddevice', 'co.sitic.pp', 'com.miui.backup']
- → sAllowAutoStartForOTAPkgs / MIUI_GLOBAL_APPS static field initialization
- → sMiuiAppDefaultGrantedPermissions ArrayMap (used by grantDefaultPermission in parent DefaultPermissionGrantPolicyStub)
- → PERM_GRANT (implicit via class hierarchy and field purpose)
```

