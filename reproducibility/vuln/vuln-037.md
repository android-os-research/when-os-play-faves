---
id: vuln-037
vendor: MIUI
package: com.xiaomi.xmsf
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-037 · `com.xiaomi.xmsf` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.xmsf` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded com.xiaomi.xmsf package is added to an allowlist (sAutoStartRestrictions) that likely exempts it from AppOps restrictions, allowing it to bypass auto-start enforcement controls.

## Attack Surface
A pre-installed or privileged app matching com.xiaomi.xmsf gains the ability to auto-start without AppOps restrictions, potentially enabling background execution and data collection without user awareness.

## Call Graph
```
- `<clinit>() line 14-15: creates sAutoStartRestrictions ArraySet`
- `<clinit>() line 62+: conditionally populates allowlist with hardcoded packages including com.xiaomi.xmsf`
- `ArraySet.add() invocation: adds package to enforcement-bypass allowlist`
- `Implicit: allowlist checked by AppOps enforcement logic (not shown in slim file)`
```

## Affected Firmware Images
- claude_redmi_validated
