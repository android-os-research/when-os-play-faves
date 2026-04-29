---
id: vuln-005
vendor: MIUI
package: com.lbe.security.miui
verdict: CONFIRMED_HIGH
tag: APPOPS
category: appops_manipulation
---

# vuln-005 · `com.lbe.security.miui` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.lbe.security.miui` |
| Verdict | **CONFIRMED_HIGH** |
| Confirmed tag | `APPOPS` |
| Confidence | 0.95 |
| Threat type | appops_manipulation |
| Affected firmware | 1 images |

## Privacy Impact
com.lbe.security.miui is hardcoded into an allowlist that exempts it from AppOps enforcement, granting it unrestricted access to sensitive operations without user consent or permission checks.

## Attack Surface
A pre-installed security app gains the ability to bypass AppOps restrictions on sensitive operations (camera, microphone, location, contacts, etc.) by virtue of being in the sAllowAutoStartPkgs allowlist, enabling surveillance or data exfiltration without triggering permission denials.

## Call Graph
```
- `AppOpsManagerInjector.<clinit>() line 117: const-string 'com.lbe.security.miui' → invoke ArraySet.add()`
- `AppOpsManagerInjector.isAutoStartRestriction() line 195: sAllowAutoStartPkgs.contains(pkg) → early return (no restriction)`
- `AppOpsServiceStubImpl.onAppApplyOperation() line 237-256: checks isAutoStartRestriction() to skip enforcement`
- `AppOpsService.noteOperationLocked() [inferred]: allowlist membership gates APPOPS setMode/checkOp enforcement`
```

## Affected Firmware Images
- claude_redmi_validated
