---
id: cat1-oplus-operator
vendor: Oplus (OnePlus / OPPO / Realme)
package: (operator-keyed, via OppoOperatorManagerService)
verdict: CONFIRMED_HIGH
tag: BOOT_GRANT
category: cat1_silent_default_grant
---

# cat1-oplus-operator · Oplus: `OppoOperatorManagerService` SIM-Keyed Permission Grants and APK Deployment

## Metadata
| Field | Value |
|---|---|
| Vendor | Oplus (OnePlus, OPPO, Realme) |
| Affected component | `OppoOperatorManagerService` (system server) |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat1 — Silent Default Grant (user-revocable via Settings) + Cat2 elements (SIM-driven APK deployment) |
| Auth strength | SIM/operator metadata (operator XML, SIM country) |
| Threat type | Operator-XML-driven permission grants at boot; SIM-triggered silent APK deployment |
| Main paper reference | §(subsec:oplus-operator-grants), §(subsec:cat2-region-overrides) |

## Summary

`OppoOperatorManagerService` combines SIM-keyed feature flags, dangerous permission grants, and APK deployment. At boot it parses operator XML keyed by operator/SIM country. `grantCustomizedRuntimePermissions()` invokes the grant API via reflection with `systemFixed=true`, bypassing user consent. Operator XML, external to the firmware, can thus silently grant dangerous permissions post-deployment.

## SIM-Keyed Feature Enablement

```java
public boolean hasFeatureDynamiclyEnabeld(String name) {
    if (this.mEnableDynamicFeature
        && !TextUtils.isEmpty(sSimCountry)
        && this.mFeaturesMap != null
        && this.mFeaturesMap.get(sSimOperator) != null
        && this.mFeaturesMap.get(sSimOperator).get(sSimCountry) != null
        && this.mFeaturesMap.get(sSimOperator).get(sSimCountry).contains(name)) {
        return true;
    }
    return false;
}
```

## Permission Group Mappings

```java
NAME_TO_SET.put("android.permission-group.PHONE",    PHONE_PERMISSIONS);
NAME_TO_SET.put("android.permission-group.CONTACTS", CONTACTS_PERMISSIONS);
NAME_TO_SET.put("android.permission-group.LOCATION", LOCATION_PERMISSIONS);
NAME_TO_SET.put("android.permission-group.CALENDAR", CALENDAR_PERMISSIONS);
NAME_TO_SET.put("android.permission-group.SMS",      SMS_PERMISSIONS);
```

Entire permission groups can be granted to operator-designated packages via a single operator XML entry.

## SIM-Triggered APK Deployment

`copySimTriggeredApps()` fires on SIM state changes and copies operator APKs into `/data/app`:

```java
public static void copySimTriggeredApps(boolean isUpgrade,
        Installer installer, Object installLock) {
    ...
    copyPackageToData(srcFile, destDir, pkg.getPkgName(), null);
}
```

The service tracks user uninstalls to suppress re-deployment:
```java
private static final String PACKAGE_STATE_FILE =
    "/data/system/operator_package_state.xml";
private static ArrayList<String> sUninstalledPackagesByUser = new ArrayList<>();
```

## Security Impact

- Operator XML is external to the firmware and can change post-deployment, meaning the permission surface is not fully determined by the firmware image.
- `systemFixed=true` on grants means user revocation via Settings may not persist across boots.
- SIM-triggered APK deployment installs arbitrary operator APKs into `/data/app` without user confirmation, keyed solely on SIM operator/country metadata.
- Stock Android has no privileged service that reads operator XML to grant permissions or silently deploy APKs.

## Notes

- Static call-chain evidence confirmed in Oplus firmware images (Android 12–14).
- No device-level dynamic verification was performed beyond what is described in the main paper's dynamic validation section.
