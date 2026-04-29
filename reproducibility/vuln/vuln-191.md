---
id: vuln-191
vendor: Vivo
package: com.sdu.didi.gsui
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: telemetry_privilege
---

# vuln-191 · `com.sdu.didi.gsui` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.sdu.didi.gsui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.72 |
| Threat type | telemetry_privilege |

## Privacy Impact
The hardcoded package 'com.sdu.didi.gsui' (Didi ride-sharing app) is included in OEM framework whitelists that gate system property reads and resource allocation policies, allowing privileged access to device telemetry and performance tuning without explicit user consent.

## Attack Surface
A pre-installed OEM service can use these whitelists to apply special handling (network prioritization, CPU/memory allocation, or telemetry collection) to the Didi app based on system property checks, potentially enabling data exfiltration or performance manipulation.

## Call Graph
```
- VivoListCenter.<clinit>() [line: const-string v24, "com.sdu.didi.gsui"]
- → VivoListCenter.<clinit>() [line: invoke-static {v0, v1}, Landroid/os/SystemProperties;→getBoolean(...)]
- → VivoAppManageUtils.<clinit>() [line: const-string v3, "com.sdu.didi.gsui"]
- → VivoAppManageUtils.<clinit>() [line: invoke-static {v0, v1}, Landroid/os/SystemProperties;→getBoolean(...)]
```

