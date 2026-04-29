---
id: vuln-092
vendor: OnePlus
package: com.oppo.ctautoregist
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_WRITE
category: telemetry_privilege
---

# vuln-092 · `com.oppo.ctautoregist` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oppo.ctautoregist` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_WRITE` |
| Confidence | 0.78 |
| Threat type | telemetry_privilege |

## Privacy Impact
The hardcoded package 'com.oppo.ctautoregist' can trigger SystemProperties.set() calls to write system properties, potentially enabling telemetry or state manipulation without user consent.

## Attack Surface
A pre-installed or privileged app matching this package name gains the ability to set system properties via oemSendData(), which could be used to alter device behavior or enable telemetry collection.

## Call Graph
```
- oemSendData() [line 184-185: const-string 'com.oppo.ctautoregist', String comparison]
- → invoke-static SystemProperties.set(v1, v2) [SYS_PROP_WRITE tag detected in method annotation]
```

