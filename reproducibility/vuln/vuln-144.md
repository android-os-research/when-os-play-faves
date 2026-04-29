---
id: vuln-144
vendor: Samsung
package: com.sec.android.kiosk
verdict: CONFIRMED_MEDIUM
tag: CALLER_ID
category: permission_grant_bypass
---

# vuln-144 · `com.sec.android.kiosk` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.android.kiosk` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `CALLER_ID` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |

## Privacy Impact
The hardcoded package 'com.sec.android.kiosk' is passed directly to IKioskMode.enableKioskMode() without validating the caller's identity, allowing privilege escalation to kiosk mode control.

## Attack Surface
A pre-installed or privileged app can invoke enableKioskMode() with the hardcoded package name to enable kiosk mode restrictions on the device, bypassing normal caller verification.

## Call Graph
```
- enableKioskMode() [line 1456 in KioskMode.smali]
- → IKioskMode.enableKioskMode(ContextInfo, String) [passes hardcoded 'com.sec.android.kiosk']
- → getCallingPackage() [CALLER_ID tag - retrieves caller UID but no enforcement against hardcoded package]
- → sendBroadcast() [broadcasts result to calling package without validation]
```

