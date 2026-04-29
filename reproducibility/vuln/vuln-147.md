---
id: vuln-147
vendor: Samsung
package: com.sprint.sdcplus
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-147 · `com.sprint.sdcplus` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sprint.sdcplus` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.85 |
| Threat type | signature_bypass |

## Privacy Impact
A hardcoded package (com.sprint.sdcplus) can bypass normal package validation if signature verification is weak or misconfigured, potentially allowing unauthorized access to telephony sub-info APIs.

## Attack Surface
A malicious app spoofing the com.sprint.sdcplus package name could gain access to telephony APIs if the signature check is not properly enforced or if the signing certificate is compromised.

## Call Graph
```
- canUseKodiakEpttApi() [ANCHOR]
- → getCallingUid() [UID_CHECK]
- → getNameForUid(uid) [PKG_QUERY]
- → checkSignature(packageName) [SIG_CHECK]
```

