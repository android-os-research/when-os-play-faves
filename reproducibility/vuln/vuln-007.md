---
id: vuln-007
vendor: MIUI
package: com.mi.globalbrowser
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-007 · `com.mi.globalbrowser` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.mi.globalbrowser` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.mi.globalbrowser is hardcoded into an auto-start restrictions allowlist, potentially bypassing AppOps restrictions on background execution and auto-start capabilities.

## Attack Surface
A pre-installed or privileged app (com.mi.globalbrowser) gains exemption from auto-start restrictions that would normally apply to other apps, allowing it to execute background tasks without user consent or standard permission enforcement.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions ArraySet`
- `adds com.mi.globalbrowser to allowlist via ArraySet.add()`
- `sAutoStartRestrictions field is used to gate APPOPS auto-start checks`
- `hardcoded package receives differential treatment in AppOps enforcement`
```

## Affected Firmware Images
- claude_redmi_validated
