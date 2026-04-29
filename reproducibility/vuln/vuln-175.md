---
id: vuln-175
vendor: Unknown (A200Pro)
package: com.goodix.fingerprint.setting
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-175 · `com.goodix.fingerprint.setting` · Unknown (A200Pro)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (A200Pro) |
| Package | `com.goodix.fingerprint.setting` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.92 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded 'com.goodix.fingerprint.setting' package is checked against the running foreground app to conditionally suppress HOME key handling, allowing this specific package to bypass normal home button behavior.

## Attack Surface
A pre-installed or privileged app matching this package name gains the ability to suppress HOME key events that would normally trigger home screen navigation, potentially enabling unauthorized UI control or lockout scenarios.

## Call Graph
```
- interceptKeyBeforeDispatching() @ line 2804-2820
- → ActivityManager.getRunningTasks(1) → topActivity.getPackageName()
- → String.equals('com.goodix.fingerprint.setting') @ line 2808
- → conditional early_return if matched
```

