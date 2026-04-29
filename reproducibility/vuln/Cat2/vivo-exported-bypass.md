---
id: cat2-vivo-exported-bypass
vendor: Vivo
package: (framework — ParsedActivityUtils)
verdict: CONFIRMED_MEDIUM
tag: ENFORCEMENT_GATE_BYPASS
category: cat2_enforcement_level
---

# cat2-vivo-exported-bypass · Vivo: `android:exported` Bypass for Selected Third-Party Apps

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Affected component | `com.android.server.pm.parsing.pkg.ParsedActivityUtils` |
| Verdict | **CONFIRMED_MEDIUM** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only |
| Threat type | Enforcement gate bypass (install-time) |

## Summary

Vivo's `ParsedActivityUtils` introduces an early-return branch that suppresses the Android 12 parse-time `android:exported` error when: (i) the package name appears in a hardcoded 16-entry allowlist, and (ii) the activity matches a Unity entry-activity heuristic (e.g., class name contains `UnityPlayerActivity`). When the condition matches, Vivo logs `"ignore the exported check"` and continues parsing without raising the install-blocking error, making non-compliant APKs installable on Vivo Android 12+ devices that would be rejected on stock Android.

This is not a generic Unity compatibility shim: the allowlist is hardcoded inside the framework parser (not a developer-facing API or a backward-compatibility setting), and its entries span unrelated app categories.

## Allowlisted Packages (Representative)

- `com.uncosoft.highheels`
- `com.nanotribe.games.arrowfest`
- `com.google.android.apps.inputmethod.hindi`
- `pk.gov.railways`
- `com.megamarket`
- 11 further entries

## Security Impact

Non-compliant third-party APKs that export activities without declaring `android:exported="true"` (violating the Android 12 manifest requirement) install and run normally on Vivo. Stock Android rejects these at parse time. The bypass is name-only: any APK claiming one of the allowlisted package names and containing a Unity-named activity class bypasses the enforcement gate at install time. No certificate binding is applied.

## Attack Surface

A sideloaded APK adopting an allowlisted package name with a `UnityPlayerActivity`-named component class will be installed without the `android:exported` enforcement error on Vivo Android 12+ firmware. The allowlisted package does not need to already be installed.

## Call Chain

```
ParsedActivityUtils.parseActivity()
  → hardcoded allowlist check (package name string equals)
  → Unity entry-activity heuristic (class name contains "UnityPlayerActivity")
  → early return, suppressing android:exported parse error
  → package install proceeds normally
```

## Notes

- No dynamic verification was performed (no test device available for this specific finding).
- Static call-chain evidence confirmed in Vivo firmware images (Android 12–14).
- Referenced in paper §Additional Cat2 findings (reproducibility repository).
