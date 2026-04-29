---
id: vuln-253
vendor: Lenovo
package: com.zui.launcher
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-253 · `com.zui.launcher` · Lenovo

## Metadata
| Field | Value |
|---|---|
| Vendor | Lenovo |
| Dump ID | `19569a46c165` |
| Package | `com.zui.launcher` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | enforcement_bypass |
| Affected firmware | 1 image |

## Privacy Impact
The hardcoded com.zui.launcher package name is used to bypass or skip security checks in multiple framework methods, allowing the launcher to receive differential treatment without proper permission validation.

## Attack Surface
A pre-installed or privileged app can spoof the launcher identity or exploit these hardcoded checks to gain unauthorized access to UI invalidation, rendering, or theme resource decisions that should be gated by proper permission checks.

## Call Graph
```
- isLauncher(String) → String.equals(com.zui.launcher) → early_return
- → onDescendantInvalidated() → Context.getPackageName() → String.equals(com.zui.launcher) → conditional skip of ViewRootImpl.isCts()
- → isCallByLauncher() → String.equals(com.zui.launcher) → return boolean
```

## Affected Firmware Images
- lenovo_zui_19569a46c165
