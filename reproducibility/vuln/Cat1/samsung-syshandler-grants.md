---
id: cat1-samsung-syshandler-grants
vendor: Samsung
package: co.sitic.pp, com.mobiletools.systemhelper
verdict: CONFIRMED_HIGH
tag: BOOT_GRANT
category: cat1_silent_default_grant
---

# cat1-samsung-syshandler-grants · Samsung: Non-AOSP Packages in `grantDefaultSystemHandlerPermissions()`

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Affected component | `DefaultPermissionGrantPolicy.grantDefaultSystemHandlerPermissions()` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat1 — Silent Default Grant (user-revocable via Settings) |
| Auth strength | Name only |
| Threat type | Boot-time dangerous permission grant to third-party packages via system handler path |

## Summary

Samsung's `grantDefaultSystemHandlerPermissions()` grants large bundles of dangerous permissions to two non-AOSP packages as if they were default system handlers. On stock Android, this code path grants permissions only to packages resolving standard system intents (dialer, SMS app, contacts, etc.); Samsung extends it to hardcoded third-party packages with no certificate binding.

## Permission Grants

### `co.sitic.pp`
`ACCESS_BACKGROUND_LOCATION`, `ACCESS_COARSE_LOCATION`, `ACCESS_FINE_LOCATION`, `CALL_PHONE`, `PROCESS_OUTGOING_CALLS`, `READ_CALENDAR`, `READ_CONTACTS`, `READ_EXTERNAL_STORAGE`, `READ_PHONE_STATE`, `RECEIVE_SMS`, `WRITE_CALENDAR`, `WRITE_CONTACTS`, `WRITE_EXTERNAL_STORAGE`

### `com.mobiletools.systemhelper`
`ACCESS_BACKGROUND_LOCATION`, `ACCESS_COARSE_LOCATION`, `ACCESS_FINE_LOCATION`, `CALL_PHONE`, `READ_CALENDAR`, `READ_CALL_LOG`, `READ_CONTACTS`, `READ_EXTERNAL_STORAGE`, `READ_PHONE_STATE`, `READ_SMS`, `RECEIVE_SMS`, `RECEIVE_WAP_PUSH`, `RECORD_AUDIO`, `SEND_SMS`, `WRITE_CALL_LOG`, `WRITE_CONTACTS`

## Security Impact

- Both packages receive 13+ dangerous permissions at boot with no user interaction.
- Auth is name-only: no certificate binding is applied. Any app adopting either package name when the legitimate package is absent would inherit the full permission bundle at boot.
- `com.mobiletools.systemhelper` receives `READ_SMS`, `SEND_SMS`, `RECEIVE_WAP_PUSH`, and `RECORD_AUDIO` — a particularly sensitive combination with no justification from the AOSP default handler model.
- Stock Android's `grantDefaultSystemHandlerPermissions()` grants only to dynamically resolved default handlers (dialer, SMS app, etc.); neither package name is hardcoded in AOSP.

## Notes

- Static call-chain evidence confirmed in Samsung firmware images (Android 12–14).
- No dedicated dynamic verification for this specific finding; Samsung boot re-grant behavior was dynamically confirmed on SM-A556E (§cat1-boot-grants).
