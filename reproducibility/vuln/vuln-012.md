---
id: vuln-012
vendor: MIUI
package: com.miui.core
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: appops_manipulation
---

# vuln-012 · `com.miui.core` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.core` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
Hardcoded allowlist of packages (including com.miui.core) can bypass AppOps restrictions on auto-start and background execution, allowing these apps to run without user consent.

## Attack Surface
Pre-installed MIUI system apps gain unrestricted background execution and auto-start capabilities, circumventing AppOps enforcement that would normally restrict these behaviors for third-party apps.

## Call Graph
```
- `<clinit>() initializes sAutoStartRestrictions ArraySet`
- `Hardcoded package strings added via ArraySet.add()`
- `These sets are queried by AppOps enforcement logic (inferred from class name and field usage)`
- `PKG_QUERY pattern: allowlist membership check gates AppOps restrictions`
```

## Affected Firmware Images
- claude_redmi_validated
