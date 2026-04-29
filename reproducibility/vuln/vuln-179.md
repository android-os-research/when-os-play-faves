---
id: vuln-179
vendor: Unknown (DSB0230)
package: com.qiyi.video.pad
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-179 · `com.qiyi.video.pad` · Unknown (DSB0230)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (DSB0230) |
| Package | `com.qiyi.video.pad` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |

## Privacy Impact
The hardcoded package 'com.qiyi.video.pad' receives differential audio focus handling that bypasses normal enforcement for ring/call scenarios, potentially allowing unauthorized audio playback during phone calls.

## Attack Surface
A pre-installed OEM app (com.qiyi.video.pad) gains the ability to request audio focus with modified behavior: (1) focusChangeHint is forced to 1 instead of the caller's requested value when the package matches, (2) SystemProperties.set('sys.phonecall.state') is invoked to signal ring/call state, enabling muting of other audio sources.

## Call Graph
```
- requestAudioFocus() line 925-926: string comparison for 'com.qiyi.video.pad'
- → line 927: focusChangeHint reassigned to 1 (FOCUS_GAIN_TRANSIENT_MAY_DUCK)
- → line 939: SystemProperties.set('sys.phonecall.state', '1') called
- → line 918-922: AppOpsManager.noteOp(0x20, uid, packageName) gated by flags check
```

