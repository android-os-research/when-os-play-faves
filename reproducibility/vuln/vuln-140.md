---
id: vuln-140
vendor: Samsung
package: com.samsung.voiceserviceplatform
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-140 · `com.samsung.voiceserviceplatform` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.voiceserviceplatform` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
A Knox-based policy API allows disabling or enabling the Samsung voice service platform package without user consent, potentially bypassing voice assistant security controls.

## Attack Surface
A pre-installed Knox-privileged app or enterprise admin tool can invoke disableVoiceDialer() or enableVoiceDialer() to silently disable/enable com.samsung.voiceserviceplatform, circumventing user choice and potentially disabling voice-based security features or enabling unwanted voice services.

## Call Graph
```
- ApplicationPolicy.disableVoiceDialer() [ANCHOR: const-string 'com.samsung.voiceserviceplatform']
- → setApplicationState(String, boolean)
- → PKG_MGMT (application enable/disable)
```

