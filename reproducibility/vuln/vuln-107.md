---
id: vuln-107
vendor: Samsung
package: com.samsung.android.app.mobiledoctor
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-107 · `com.samsung.android.app.mobiledoctor` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.app.mobiledoctor` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.85 |
| Threat type | signature_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.app.mobiledoctor' receives special treatment via signature verification, potentially allowing a malicious app with the same package name to bypass security checks if signature validation is weakened or spoofed.

## Attack Surface
A pre-installed or privileged app could exploit this hardcoded package name to gain maintenance mode privileges or bypass package management restrictions intended for legitimate Samsung diagnostic tools.

## Call Graph
```
- isMobileDoctorProcess() [ANCHOR: const-string 'com.samsung.android.app.mobiledoctor']
- → String.equals() comparison against ApplicationInfo.packageName
- → PackageManagerInternal.isPlatformSigned() [SIG_CHECK]
```

