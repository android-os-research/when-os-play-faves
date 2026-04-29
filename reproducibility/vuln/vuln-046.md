---
id: vuln-046
vendor: Fairphone
package: com.microsoft.teams
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-046 · `com.microsoft.teams` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `com.microsoft.teams` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
A pre-installed OEM app can set audio mode to VOIP (mode 3) and trigger special audio parameter handling for com.microsoft.teams without proper UID/caller verification, potentially allowing unauthorized audio routing or microphone/speaker control.

## Attack Surface
Pre-installed system apps or apps with MODIFY_PHONE_STATE permission can invoke setMode() with a spoofed caller package name to trigger Teams-specific audio parameters (voip_app_type=4) and associated SetModeDeathHandler state changes (playback/recording active flags) without the actual Teams app being involved.

## Call Graph
```
- setMode(int, IBinder, String) @ line 5358
- → String.equals(com.microsoft.teams) @ line 5358
- → AudioSystem.setParameters(voip_app_type=4) @ line 5359
- → SetModeDeathHandler.setPlaybackActive/setRecordingActive @ lines 5428-5429
```

