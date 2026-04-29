---
id: vuln-113
vendor: Samsung
package: com.samsung.android.coreapps
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-113 · `com.samsung.android.coreapps` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.coreapps` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
A hardcoded package (com.samsung.android.coreapps) receives differential treatment in SMS default application checks, potentially bypassing security enforcement for Samsung's own apps.

## Attack Surface
Pre-installed Samsung apps can exploit this logic to claim SMS privileges or bypass security checks that apply to third-party SMS applications.

## Call Graph
```
- isDefaultSmsApplicationAsUser() [ANCHOR]
- → const-string v5, "com.samsung.android.coreapps"
- → invoke-virtual {p1, v5}, Ljava/lang/String;→equals()
- → Binder.getCallingUid() [UID_CHECK] at line 1486
```

