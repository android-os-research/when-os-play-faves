---
id: vuln-057
vendor: LG
package: com.tencent.mm
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-057 · `com.tencent.mm` · LG

## Metadata
| Field | Value |
|---|---|
| Vendor | LG |
| Package | `com.tencent.mm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded 'com.tencent.mm' package is used in exception lists that bypass normal app lifecycle restrictions, allowing WeChat to operate under different power-saving rules than other apps.

## Attack Surface
A pre-installed power controller can exempt WeChat from background cleanup, force-stop, and app idle policies that apply to other applications, giving it persistent network and execution privileges.

## Call Graph
```
- BackgroundCleanHelper.<init>() line 303 — filled-new-array with 'com.tencent.mm'
- → BackgroundCleanHelper.mExceptionAppListForAssociateLaunch field assignment
- → BackgroundCleanHelper.checkLauncherEnabledSetting() — uses exception list for PKG_QUERY via getApplicationEnabledSetting()
- → BackgroundCleanHelper.isInstalledApp() — queries package installation status
```

