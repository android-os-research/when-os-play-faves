---
id: cat2-nubia-permissioncontroller
vendor: Nubia
package: cn.nubia.bbs, cn.nubia.nubiashop, cn.nubia.neoshare, cn.nubia.neogamecenter, com.redteamobile.roaming
verdict: CONFIRMED_HIGH
tag: ENFORCEMENT_GATE_BYPASS
category: cat2_enforcement_level
---

# cat2-nubia-permissioncontroller · Nubia: OEM-Side `PermissionController` Grant Path Bypassing User Consent

## Metadata
| Field | Value |
|---|---|
| Vendor | Nubia (ZTE sub-brand) |
| Affected component | Nubia privileged vendor service (`requestPackagePermissionsInThread`) |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only (system apps, platform-signed apps, or hardcoded WRITE_LIST) |
| Threat type | Permission grant bypass — dangerous permissions + AppOps forced to `MODE_ALLOWED` |

## Summary

Nubia's privileged vendor service exposes `requestPackagePermissionsInThread()`. For each permission the target package declares, this method calls `grantRuntimePermission()` for dangerous permissions and forces `AppOps.setMode(opCode, uid, pkg, MODE_ALLOWED)` — bypassing both user consent dialogs and the AppOps audit layer. Normal permissions have their AppOps mode forced directly without a grant call.

The service verifies that the caller UID owns the supplied package name and requires `cn.nubia.permission.QUICK_PERMISSION_REQUEST`. It then permits the call only for system apps, platform-signed apps, or five hardcoded package names (the WRITE_LIST).

## Mechanism (Smali-Level)

```java
for (String permission : permissions) {
  if (isContain(pkgInfo.requestedPermissions, permission)) {
    int opCode = AppOpsManager.permissionToOpCode(permission);
    if (!isDangerousPermission(context, permission)) {
      if (NORMAL_PERMISSIONS.contains(permission)) {
        appOps.setMode(opCode, pkgInfo.applicationInfo.uid, pkgInfo.packageName, 0);
      }
    } else {
      pm.grantRuntimePermission(pkgInfo.packageName, permission, Process.myUserHandle());
      if (-1 != opCode) appOps.setMode(opCode, pkgInfo.applicationInfo.uid, pkgInfo.packageName, 0);
    }
  }
}
for (Integer op : SELF_SELF_DESIGN_PERMISSIONS) {
  appOps.setMode(op, pkgInfo.applicationInfo.uid, pkgInfo.packageName, 0);
}
```

## Allowlisted Beneficiaries (WRITE_LIST)

- `cn.nubia.bbs`
- `cn.nubia.nubiashop`
- `cn.nubia.neoshare`
- `cn.nubia.neogamecenter`
- `com.redteamobile.roaming`

## Capability Uplift

`cn.nubia.bbs` declares `READ_PRIVILEGED_PHONE_STATE`, `REQUEST_INSTALL_PACKAGES`, `DELETE_PACKAGES`, `SYSTEM_ALERT_WINDOW`, `CAMERA`, `RECORD_AUDIO`, and fine location. Via this path it can self-grant all of these and force the corresponding AppOps modes to `MODE_ALLOWED` — capabilities that the same APK on any other Android device could not obtain without explicit user consent.

## Security Impact

- Dangerous permissions are granted programmatically to OEM-designated apps without user interaction.
- AppOps mode is forced to `MODE_ALLOWED`, bypassing the audit layer that apps like permission monitors rely on.
- No Settings entry reflects these grants as OEM-initiated; they appear as user-granted.
- Auth is name-only for the WRITE_LIST: no certificate binding on the five hardcoded package names.

## Notes

- No dynamic verification was performed (no Nubia test device available).
- Static call-chain evidence confirmed in Nubia firmware images.
- Referenced in paper §Additional Cat2 findings (reproducibility repository).
