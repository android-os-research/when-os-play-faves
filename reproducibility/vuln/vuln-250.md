---
id: vuln-250
vendor: Lenovo
package: com.tencent.cmocmna
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-250 · `com.tencent.cmocmna` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.tencent.cmocmna` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 image |

## Privacy Impact
A hardcoded package (com.tencent.cmocmna) can bypass background activity start permission checks via early return, allowing it to launch activities without standard security enforcement.

## Attack Surface
Pre-installed or privileged apps can use this bypass to launch background activities for the Tencent package without triggering PERM_CHECK or APPOPS enforcement, potentially enabling unauthorized activity launches.

## Call Graph
```
- checkBackgroundActivityStart() [line 1636: v0 := 'com.tencent.cmocmna']
- → String.contains(v0) → if-eqz branch [early_return pattern]
- → Implicit PERM_CHECK bypass via early return skipping enforcement
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
