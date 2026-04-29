---
id: vuln-053
vendor: LG
package: com.facebook.orca
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-053 · `com.facebook.orca` · LG

## Metadata
| Field | Value |
|---|---|
| Vendor | LG |
| Package | `com.facebook.orca` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Facebook Messenger (com.facebook.orca) receives differential treatment in background cleanup logic, potentially exempting it from force-stop enforcement that applies to other apps.

## Attack Surface
A pre-installed or privileged power management service can selectively exempt Facebook Messenger from background app termination, allowing it to persist and consume resources while other apps are forcibly stopped.

## Call Graph
```
- BackgroundCleanHelper.<init>() line 303: filled-new-array {com.facebook.katana, com.facebook.orca, com.tencent.mm}
- → mExceptionAppListForAssociateLaunch field assignment
- → checkLauncherEnabledSetting() uses mExceptionLauncherAppList for differential logic
- → PKG_QUERY via getApplicationEnabledSetting() and isInstalledApp()
```

