---
id: vuln-207
vendor: Vivo
package: com.vivo.multinlp
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: enforcement_bypass
---

# vuln-207 · `com.vivo.multinlp` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.multinlp` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
System property reads (ro.vivo.product.overseas, persist.radio.vivo.mcc) gate conditional binding of Google Mobile Services and NLP packages, potentially allowing region-based service manipulation without explicit user consent.

## Attack Surface
A pre-installed Vivo system service can conditionally enable/disable GMS and NLP binding based on device region properties, affecting location and search services available to the user.

## Call Graph
```
- checkShouldBindGms() [ANCHOR]
- → SystemProperties.get('persist.radio.vivo.mcc')
- → isChineseMcc() string comparison
- → conditional mShouldBindGms assignment
```

