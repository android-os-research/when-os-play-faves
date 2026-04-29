---
id: vuln-029
vendor: MIUI
package: com.xiaomi.account
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-029 · `com.xiaomi.account` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.account` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.xiaomi.account is hardcoded into an auto-start allowlist that bypasses AppOps restrictions, allowing it to run background services without user control.

## Attack Surface
A pre-installed Xiaomi account service gains exemption from AppOps auto-start restrictions, enabling persistent background execution and potential data collection or network activity without user awareness.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() line 47: const-string 'com.xiaomi.account'`
- `ArraySet.add() → sAutoStartRestrictions allowlist population`
- `Implicit: AppOps enforcement checks this allowlist to skip restrictions`
```

## Affected Firmware Images
- claude_redmi_validated
