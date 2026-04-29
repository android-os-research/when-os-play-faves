---
id: vuln-229
vendor: MIUI
package: com.mipay.wallet
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-229 · `com.mipay.wallet` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.mipay.wallet` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Hardcoded package names (com.mipay.wallet, com.xiaomi.finddevice, com.lbe.security.miui, com.xiaomi.xmsf, etc.) receive differential treatment in permission grants, notification handling, and security policy enforcement without user awareness.

## Attack Surface
Pre-installed or privileged apps can leverage these hardcoded allowlists to bypass standard permission checks, notification restrictions, and security controls that apply to third-party apps.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 68: com.xiaomi.finddevice in sAllowAutoStartForOTAPkgs]
- → grantDefaultPermission() [inferred from class hierarchy DefaultPermissionGrantPolicyStub]
- → PERM_GRANT via sMiuiAppDefaultGrantedPermissions ArrayMap
- → NotificationManagerServiceImpl.<clinit>() [line 399: com.lbe.security.miui in sAllowToastSet; line 720-722: com.xiaomi.wearable, com.xiaomi.hm.health, com.mi.health in OTHER_APPS_LIST]
```

