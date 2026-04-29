---
id: vuln-009
vendor: MIUI
package: com.miui.backup
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-009 · `com.miui.backup` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.backup` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.miui.backup is hardcoded into an autostart restriction allowlist, bypassing AppOps enforcement for background execution.

## Attack Surface
A pre-installed backup app gains unrestricted autostart capability, allowing it to execute background tasks without user consent or AppOps restrictions.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() line 38: adds 'com.miui.backup' to sAutoStartRestrictions ArraySet`
- `AppOpsManagerInjector.isAutoStartRestriction() line 191-195: checks if package is in sAutoStartRestrictions or sAllowAutoStartPkgs`
- `Implicit: AppOps enforcement gates background execution based on this allowlist`
```

## Affected Firmware Images
- claude_redmi_validated
