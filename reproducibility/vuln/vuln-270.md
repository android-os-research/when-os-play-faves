---
id: vuln-270
vendor: Xiaomi
package: com.miui.smsextra
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-270 · `com.miui.smsextra` · Xiaomi

## Metadata
| Field | Value |
|---|---|
| Vendor | Xiaomi |
| Package | `com.miui.smsextra` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 image |

## Privacy Impact
Hardcoded package names (com.miui.smsextra, com.xiaomi.finddevice, com.lbe.security.miui, com.xiaomi.xmsf) receive differential treatment in permission grants, notification access, and security policy enforcement without user consent.

## Attack Surface
Pre-installed or privileged apps matching these hardcoded package names bypass standard permission grant flows, notification access controls, and security manager restrictions. A compromised or malicious app with one of these package names gains elevated capabilities.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 68-90: hardcoded com.xiaomi.finddevice, com.miui.backup in MIUI_GLOBAL_APPS]
- → sMiuiAppDefaultGrantedPermissions (ArrayMap for default granted permissions)
- → PERM_GRANT context (DefaultPermissionGrantPolicy parent class grants permissions to these apps)
- → NotificationManagerServiceImpl.<clinit>() [line 399, 720-722: hardcoded com.lbe.security.miui, com.xiaomi.wearable, com.xiaomi.hm.health, com.mi.health in allowlists]
- → sAllowToastSet, OTHER_APPS_LIST (differential notification/toast treatment)
- → SecurityManagerService.<init>() [implicit: service manages access control for hardcoded packages]
```

## Affected Firmware Images
- xiaomi_firmwarescanner_validated
