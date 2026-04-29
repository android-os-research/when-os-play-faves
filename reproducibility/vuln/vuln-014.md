---
id: vuln-014
vendor: MIUI
package: com.miui.fm
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-014 · `com.miui.fm` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.fm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.miui.fm' is added to a restriction list that controls auto-start behavior via AppOps, allowing selective enforcement bypass for this OEM app.

## Attack Surface
A pre-installed OEM app (com.miui.fm) gains exemption from auto-start restrictions that would normally apply to third-party apps, enabling persistent background execution without user awareness.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() [line 42: const-string 'com.miui.fm']`
- `→ sAutoStartRestrictions.add(v1) [line 42]`
- `→ Static field used by AppOps enforcement logic (inferred from class name and field semantics)`
```

## Affected Firmware Images
- claude_redmi_validated
