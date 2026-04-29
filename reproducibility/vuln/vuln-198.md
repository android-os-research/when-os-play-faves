---
id: vuln-198
vendor: Vivo
package: com.vivo.faceui
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-198 · `com.vivo.faceui` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.faceui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package string 'com.vivo.faceui' is used to grant special authentication privileges and bypass background authentication checks, allowing face unlock to succeed even when the calling app is in the background.

## Attack Surface
A pre-installed or privileged app can spoof the com.vivo.faceui package name or intercept authentication flows to gain unauthorized biometric authentication without proper foreground/background enforcement.

## Call Graph
```
- AuthenticationClient.onAuthenticated() line 215-216: checks if owner equals 'com.vivo.faceui'
- → Sets mAllowBackgroundAuthentication=true if match
- → Line 227-241: Background authentication check is bypassed if mAllowBackgroundAuthentication is true
- → Context.getApplicationInfo() called at line 254 (PKG_QUERY)
```

