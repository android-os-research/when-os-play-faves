---
id: vuln-051
vendor: Fairphone
package: us.zoom.videomeetings
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-051 · `us.zoom.videomeetings` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `us.zoom.videomeetings` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
A pre-installed or privileged app can call setMode() with hardcoded package names (including us.zoom.videomeetings) to trigger VoIP audio mode configuration without proper UID/caller identity validation for the beneficiary package.

## Attack Surface
The setMode() method accepts a caller package name (p3) and uses it to set VoIP app type parameters via AudioSystem.setParameters(). A privileged caller can pass 'us.zoom.videomeetings' or other hardcoded package names to configure audio modes that would normally require MODIFY_PHONE_STATE permission, bypassing the permission check for the actual beneficiary.

## Call Graph
```
- setMode(int, IBinder, String) @ line 5349
- → String.equals('us.zoom.videomeetings') @ line 5349
- → AudioSystem.setParameters(voip_app_type=3) @ line 5350
- → Binder.getCallingUid() @ line 5298 [UID_CHECK not enforced for beneficiary]
```

