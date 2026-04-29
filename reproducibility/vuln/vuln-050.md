---
id: vuln-050
vendor: Fairphone
package: jp.naver.line.android
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-050 · `jp.naver.line.android` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `jp.naver.line.android` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.75 |
| Threat type | appops_manipulation |

## Privacy Impact
OEM-modified AudioService allows jp.naver.line.android (LINE app) to set audio mode to VOIP_COMMUNICATION (mode 3) with special voip_app_type parameter, potentially bypassing normal audio permission checks for voice call handling.

## Attack Surface
A pre-installed or privileged LINE app gains the ability to switch audio modes and set VoIP-specific audio parameters without standard permission enforcement, affecting call audio routing and microphone/speaker control.

## Call Graph
```
- setMode(int,IBinder,String) @ line 5367
- → String.equals(jp.naver.line.android) @ line 5367
- → AudioSystem.setParameters(voip_app_type=6) @ line 5368
- → SetModeDeathHandler.setMode(I) @ line 5403
```

