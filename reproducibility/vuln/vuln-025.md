---
id: vuln-025
vendor: MIUI
package: com.miui.voiceassist
verdict: CONFIRMED_MEDIUM
tag: APPOPS
category: appops_manipulation
---

# vuln-025 · `com.miui.voiceassist` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.voiceassist` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.85 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.miui.voiceassist is hardcoded into an auto-start allowlist that bypasses AppOps restrictions, allowing it to run background services without user consent or visibility.

## Attack Surface
A pre-installed voice assistant app gains unrestricted auto-start capability, enabling persistent background execution, microphone access, and data collection without standard permission enforcement.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() [line 35]`
- `const-string 'com.miui.voiceassist' → ArraySet.add()`
- `sAllowAutoStartPkgs static field (allowlist)`
- `Implicit: AppOps enforcement bypass via allowlist membership`
```

## Affected Firmware Images
- claude_redmi_validated
