---
id: vuln-271
vendor: Xiaomi
package: com.miui.tsmclient
verdict: CONFIRMED_HIGH
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-271 · `com.miui.tsmclient` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.tsmclient` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.92 |
| Threat type | permission_grant_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded package 'com.xiaomi.finddevice' receives automatic runtime permission grants through the MiuiDefaultPermissionGrantPolicy without user consent or visibility.

## Attack Surface
A pre-installed Xiaomi system app gains privileged access to sensitive permissions (location, contacts, camera, microphone, etc.) by default, enabling surveillance or data exfiltration capabilities.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 68: const-string 'com.xiaomi.finddevice']
- → sAllowAutoStartForOTAPkgs array assignment
- → MiuiDefaultPermissionGrantPolicy extends DefaultPermissionGrantPolicyStub
- → DefaultPermissionGrantPolicyStub.grantDefaultPermission() [PERM_GRANT]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
