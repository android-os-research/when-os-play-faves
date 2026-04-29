---
id: vuln-028
vendor: MIUI
package: com.tmall.wireless
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-028 · `com.tmall.wireless` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.tmall.wireless` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package name com.tmall.wireless is added to a default SLA allowlist without user consent, potentially granting it network optimization privileges that bypass normal enforcement checks.

## Attack Surface
A pre-installed OEM app (Tmall/Alibaba) gains automatic enrollment in SLA (Service Level Agreement) network optimization, bypassing the normal allowlist mechanism that should require explicit user or system approval.

## Call Graph
```
- `initSLAAppDefault() [line 3400: v8 := "com.tmall.wireless"]`
- `filled-new-array {v4..v9} → addSLAAppDefault(uid)`
- `addSLAAppDefault() → getSLAAppByUid() [PKG_QUERY via Application.getApplicationInfo()]`
- `mAppLists.add() + dbAddSLAApp() → SQLiteDatabase.insert()`
```

## Affected Firmware Images
- claude_redmi_validated
