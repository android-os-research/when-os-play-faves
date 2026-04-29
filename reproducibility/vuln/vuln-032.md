---
id: vuln-032
vendor: MIUI
package: com.xiaomi.midrop
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-032 · `com.xiaomi.midrop` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.midrop` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.xiaomi.midrop' is added to an auto-start restrictions allowlist, bypassing normal enforcement checks that would apply to other applications.

## Attack Surface
Any pre-installed or privileged app that can modify or spoof the com.xiaomi.midrop package identity gains automatic exemption from auto-start restrictions, allowing it to run background services without user consent or system enforcement.

## Call Graph
```
- `<clinit>() line 51: const-string 'com.xiaomi.midrop'`
- `ArraySet.add() → sAutoStartRestrictions field`
- `Implicit PKG_QUERY: package name checked against allowlist in enforcement logic`
```

## Affected Firmware Images
- claude_redmi_validated
