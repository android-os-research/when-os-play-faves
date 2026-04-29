---
id: vuln-177
vendor: Unknown (DSB0230)
package: at.a1.android.xploretv
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-177 · `at.a1.android.xploretv` · Unknown (DSB0230)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (DSB0230) |
| Package | `at.a1.android.xploretv` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'at.a1.android.xploretv' bypasses audio playback tracking and logging that would normally apply to other apps, allowing it to hide its media activity from system auditing.

## Attack Surface
A pre-installed or privileged app (at.a1.android.xploretv) can invoke MediaCodec.start() and have its calling package name suppressed or specially handled, preventing normal audio playback attribution and telemetry collection.

## Call Graph
```
- MediaCodec.start() [line 2299]
- → Binder.getCallingPid() [line 2299, UID_CHECK]
- → String.equals('at.a1.android.xploretv') [line 2303]
- → AudioTrack.writePlayPackage() [line 2314, conditional execution based on package match]
```

