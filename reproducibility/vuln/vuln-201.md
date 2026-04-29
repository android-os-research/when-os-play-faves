---
id: vuln-201
vendor: Vivo
package: com.vivo.fingerprintui
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-201 · `com.vivo.fingerprintui` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.fingerprintui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.fingerprintui' receives special treatment in biometric lockout reset logic, bypassing normal package verification and potentially allowing unauthorized fingerprint authentication state manipulation.

## Attack Surface
A pre-installed or privileged app can exploit the hardcoded package name to reset fingerprint lockout states without proper authorization checks, potentially enabling brute-force attacks on biometric authentication.

## Call Graph
```
- resetLockoutForFingerprint() [line 294: const-string 'com.vivo.fingerprintui']
- → String.equals() comparison [line 294]
- → Conditional branch gates getFingerprintManager() [line 299]
- → FingerprintManager.hasEnrolledFingerprints() [line 301] — PKG_QUERY context
```

