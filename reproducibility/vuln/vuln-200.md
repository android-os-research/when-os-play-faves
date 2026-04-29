---
id: vuln-200
vendor: Vivo
package: com.vivo.feedback
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-200 · `com.vivo.feedback` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.feedback` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.feedback' is queried and its component state is modified without explicit permission checks, allowing selective disabling of UI elements.

## Attack Surface
A pre-installed or privileged app could leverage this to disable feedback mechanisms or alter user-facing components of the feedback app across users.

## Call Graph
```
- VivoPmsImpl.disableHotQuestionIfNeed(int userId)
- → getPackageInfo('com.vivo.feedback', flags, userId)
- → getApplicationInfo('com.vivo.feedback', flags, userId)
- → setComponentEnabledSetting(ComponentName, state, flags, userId, 'android')
```

