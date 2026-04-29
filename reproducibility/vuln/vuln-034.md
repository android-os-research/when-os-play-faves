---
id: vuln-034
vendor: MIUI
package: com.xiaomi.scanner
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-034 · `com.xiaomi.scanner` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.scanner` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.xiaomi.scanner is hardcoded into an auto-start allowlist that bypasses AppOps restrictions, allowing it to run background services without user consent or visibility.

## Attack Surface
A pre-installed Xiaomi scanner app gains exemption from auto-start restrictions and can execute background tasks that would normally be gated by AppOps policies, potentially enabling persistent data collection or surveillance.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() [line 44: const-string 'com.xiaomi.scanner']`
- `→ sAutoStartRestrictions.add(v1) [line 44]`
- `→ sAutoStartRestrictions ArraySet (static field used by AppOps enforcement)`
```

## Affected Firmware Images
- claude_redmi_validated
