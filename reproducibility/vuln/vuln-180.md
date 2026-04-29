---
id: vuln-180
vendor: Unknown (DSB0230)
package: com.qiyi.video
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-180 · `com.qiyi.video` · Unknown (DSB0230)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (DSB0230) |
| Package | `com.qiyi.video` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.qiyi.video' receives differential treatment in audio focus management, potentially bypassing normal UID-based enforcement checks and gaining unfair audio focus priority.

## Attack Surface
A pre-installed or privileged app can exploit this hardcoded exception to maintain audio focus even when it should be revoked, or to bypass audio focus enforcement that applies to other apps.

## Call Graph
```
- MediaFocusControl.requestAudioFocus() line 1004-1006: string comparison against 'com.qiyi.video'
- → MediaFocusControl.requestAudioFocus() line 1006: conditional branch sets focusChangeHint=1 (GAIN_TRANSIENT_MAY_DUCK)
- → Binder.getCallingUid() invoked at line 967 for UID tracking
- → AppOpsManager.noteOp() at line 998-1000 checks audio focus permission but is bypassed for matched package
```

