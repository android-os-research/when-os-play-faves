---
id: vuln-091
vendor: OnePlus
package: com.oplus.stdsp
verdict: CONFIRMED_MEDIUM
tag: CALLER_ID
category: enforcement_bypass
---

# vuln-091 · `com.oplus.stdsp` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.stdsp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `CALLER_ID` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.stdsp' bypasses caller identity verification, allowing only that specific package to access sensitive cryptographic operations (derived password generation, SRP credential management) without normal permission checks.

## Attack Surface
A pre-installed OEM app (com.oplus.stdsp) gains privileged access to lock credential derivation and SRP authentication flows, potentially allowing it to derive user passwords or manipulate lock verification without standard Android permission enforcement.

## Call Graph
```
- generateDerivedPassword() [ANCHOR]
- → getCallingPackage() [CALLER_ID]
- → hardcoded string comparison: if (callingPackage != 'com.oplus.stdsp') early_return
- → conditional access to privatekey and cryptographic operations
```

