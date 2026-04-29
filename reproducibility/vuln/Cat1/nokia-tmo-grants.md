---
id: cat1-nokia-tmo-grants
vendor: Nokia (HMD Global)
package: com.tmobile.echolocate, com.ironsrc.aura.tmo, com.ironsrc.aura.appmanager.tmo, com.aura.services.tmobile, com.tmobile.pr.adapt, com.tmobile.adaptivenetworking
verdict: CONFIRMED_HIGH
tag: BOOT_GRANT
category: cat1_silent_default_grant
---

# cat1-nokia-tmo-grants · Nokia: T-Mobile Carrier Boot Grants via `grantDefaultPermissionsToTmobileApp()`

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia (HMD Global) |
| Affected component | `DefaultPermissionGrantPolicy.grantDefaultPermissionsToTmobileApp()` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat1 — Silent Default Grant (user-revocable via Settings) |
| Auth strength | Name + system flag (`FLAG_SYSTEM` required) |
| Threat type | Boot-time dangerous permission grant to carrier ecosystem packages |
| Main paper reference | §(para:nokia-disc001) |

## Summary

Nokia's forked `DefaultPermissionGrantPolicy` includes `grantDefaultPermissionsToTmobileApp()`, which pre-grants dangerous permissions to six T-Mobile carrier packages at boot without user interaction. Notably, `READ_PHONE_NUMBERS` is granted to IronSource Aura packages (`com.ironsrc.aura.tmo`, `com.ironsrc.aura.appmanager.tmo`, `com.aura.services.tmobile`) — an ad-tech SDK ecosystem receiving a telephony permission across a signing boundary.

## Permission Grants

| Package | Permissions Granted |
|---|---|
| `com.tmobile.echolocate` | `ACCESS_FINE_LOCATION`, `ACCESS_COARSE_LOCATION`, `ACCESS_BACKGROUND_LOCATION`, `READ_PHONE_STATE` |
| `com.ironsrc.aura.tmo` | `READ_PHONE_NUMBERS` |
| `com.ironsrc.aura.appmanager.tmo` | `READ_PHONE_NUMBERS` |
| `com.aura.services.tmobile` | `READ_PHONE_NUMBERS` |
| `com.tmobile.pr.adapt` | `READ_PHONE_STATE` |
| `com.tmobile.adaptivenetworking` | `READ_PHONE_STATE` |

## Security Impact

- `READ_PHONE_NUMBERS` is a dangerous permission; granting it to IronSource Aura (an ad-tech SDK operator) at boot without user consent is a cross-boundary trust extension.
- Auth requires `FLAG_SYSTEM`, so impersonation by a sideloaded APK is not directly exploitable — the harm is the grant itself, not impersonation.
- Dynamic verification on Nokia C210 (Android 13): boot logcat confirmed `READ_PHONE_NUMBERS` silently granted to IronSource Aura with `GRANTED_BY_DEFAULT` flag before any user interaction.

## Notes

- Static and dynamic evidence confirmed in this work (Nokia C210, Android 13).
