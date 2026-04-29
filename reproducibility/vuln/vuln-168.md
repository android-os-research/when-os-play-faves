---
id: vuln-168
vendor: Transsion
package: com.transsion.wallet.infinix
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-168 · `com.transsion.wallet.infinix` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.wallet.infinix` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.75 |
| Threat type | signature_bypass |

## Privacy Impact
The hardcoded package 'com.transsion.wallet.infinix' receives differential treatment in signature verification logic, potentially allowing it to bypass standard security checks.

## Attack Surface
A pre-installed or privileged app matching this package name can exploit weakened signature verification during package scanning and initialization, gaining elevated privileges without proper cryptographic validation.

## Call Graph
```
- PackageManagerService.addForInitLI() @ line 10716
- → String.equals(v6, v11) — hardcoded package comparison
- → PackageParser$SigningDetails.checkCapability() — signature capability check
- → SystemProperties.get() — system property read for policy decision
```

