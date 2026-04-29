---
id: vuln-048
vendor: Fairphone
package: com.skype.raider
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-048 · `com.skype.raider` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `com.skype.raider` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
A pre-installed or privileged app can call setMode() with MODE_IN_CALL (mode 3) and have its caller package string (com.skype.raider or similar VoIP apps) matched against hardcoded package names to trigger special audio parameter configuration without proper UID/privilege validation for the beneficiary.

## Attack Surface
A system app or app with MODIFY_PHONE_STATE permission can invoke setMode(3, binder, 'com.skype.raider') and bypass normal caller identity checks by matching the hardcoded package string, allowing it to set voip_app_type parameters that would normally require the actual calling app to have the permission.

## Call Graph
```
- setMode(int, IBinder, String) @ line 5361
- → String.equals('com.skype.raider') @ line 5361
- → AudioSystem.setParameters('voip_app_type=5') @ line 5362
- → Binder.getCallingUid() @ line 5298 [UID_CHECK, but only checked at entry, not re-validated for package match]
```

