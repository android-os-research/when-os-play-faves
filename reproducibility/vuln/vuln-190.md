---
id: vuln-190
vendor: Vivo
package: com.mihoyo.hyperion
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: telemetry_privilege
---

# vuln-190 · `com.mihoyo.hyperion` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.mihoyo.hyperion` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.75 |
| Threat type | telemetry_privilege |

## Privacy Impact
System property reads in <clinit> may gate differential behavior for hardcoded packages like com.mihoyo.hyperion without user consent.

## Attack Surface
A pre-installed telephony framework component uses system property state (persist.sys.vivolog.state) to conditionally apply network/congestion management policies to specific apps, potentially enabling telemetry or QoS manipulation.

## Call Graph
```
- <clinit>: const-string v72, "com.mihoyo.hyperion"
- → <clinit>: SystemProperties.get("persist.sys.vivolog.state", "off")
- → <clinit>: String.equals("on") — conditional branch
- → sput-boolean Z — static field set based on property
```

