---
id: vuln-117
vendor: Samsung
package: com.samsung.android.knox.attestation
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-117 · `com.samsung.android.knox.attestation` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.knox.attestation` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
A hardcoded package name (com.samsung.android.knox.attestation) bypasses caller identity verification, allowing only that specific package to access attestation data without proper UID/signature validation.

## Attack Surface
If the hardcoded package is compromised, spoofed, or if a pre-installed app with that package name is malicious, it gains unrestricted access to platform attestation functions. The check uses string equality on package name rather than signature verification, which is weaker than proper SIG_CHECK.

## Call Graph
```
- grdmSetAttestationData() [ANCHOR]
- → Binder.getCallingPid() [UID_CHECK]
- → getCallerPackageName(pid) [implicit UID→PKG mapping]
- → String.equals(hardcoded_pkg) [enforcement gate]
```

