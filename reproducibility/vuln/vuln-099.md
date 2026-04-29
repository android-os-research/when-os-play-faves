---
id: vuln-099
vendor: Samsung
package: com.att.eptt
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-099 · `com.att.eptt` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.att.eptt` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.85 |
| Threat type | signature_bypass |

## Privacy Impact
A hardcoded package name (com.att.eptt) is granted privileged telephony API access if it passes a signature check, potentially allowing a spoofed or compromised app to access sensitive subscriber information.

## Attack Surface
An attacker who can obtain the signing certificate of com.att.eptt (or a pre-installed variant) gains unrestricted access to Kodiak EPTT APIs, which likely expose subscriber identity, call state, or other telephony metadata.

## Call Graph
```
- canUseKodiakEpttApi() [ANCHOR]
- → const-string v1, "com.att.eptt"
- → invoke-virtual {v1, v0}, String.equals()
- → invoke-direct {p0, v0}, checkSignature(String)
```

