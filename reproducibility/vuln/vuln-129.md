---
id: vuln-129
vendor: Samsung
package: com.samsung.android.snote
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-129 · `com.samsung.android.snote` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.snote` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.android.snote' is launched via Intent.setClassName() in launchActionMemo(), which is reachable from a gesture handler. A UID_CHECK (Binder.getCallingUid()) exists in the call chain but only in a nested persona/user-handle resolution path, not as a direct gate to the Intent launch itself.

## Attack Surface
A pre-installed or privileged app could trigger the double-tap gesture to launch the memo app without explicit user consent or permission checks at the Intent.startServiceAsUser() call site.

## Call Graph
```
- launchActionMemo() [line 3729: Intent.setClassName('com.samsung.android.snote', ...)]
- → Context.startServiceAsUser(intent, userHandle)
- → getFocusedUserHandle() [calls SemPersonaManager.getFocusedUser()]
- → ISemPersonaManager.getFocusedUser() [invokes Binder.getCallingUid() at UID_CHECK]
```

