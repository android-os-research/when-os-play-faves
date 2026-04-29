---
id: vuln-100
vendor: Samsung
package: com.dish.wireless.activation
verdict: CONFIRMED_HIGH
tag: APPOPS
category: appops_manipulation
---

# vuln-100 · `com.dish.wireless.activation` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.dish.wireless.activation` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.95 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.dish.wireless.activation' is granted SYSTEM_ALERT_WINDOW appops permission unconditionally when device sales code is 'DSG', bypassing normal permission checks.

## Attack Surface
A pre-installed or privileged OEM app (com.dish.wireless.activation) gains the ability to draw system alert windows without user consent or runtime permission checks, enabling overlay attacks, phishing, or UI spoofing.

## Call Graph
```
- appOpPreAllow() [line 52-53]: hardcoded string 'com.dish.wireless.activation' added to ArrayList
- → appOpPreAllow() [line 58-61]: PackageManager.getPackageInfo() called to verify package exists and is system app
- → appOpPreAllow() [line 61]: AppOpsManager.setMode(SYSTEM_ALERT_WINDOW, uid, package, MODE_ALLOW) called directly
```

