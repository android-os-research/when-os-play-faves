---
id: cat2-acr-cert-evidence
vendor: Oplus (OnePlus / OPPO)
package: com.appstar.callrecorder, com.nll.acr
verdict: CONFIRMED_HIGH
tag: ENFORCEMENT_GATE_BYPASS
category: cat2_enforcement_level
---

# cat2-acr-cert-evidence · Oplus: ACR App Certificate Evidence and SDK Network Analysis

## Metadata
| Field | Value |
|---|---|
| Vendor | Oplus (OnePlus) |
| Packages | `com.appstar.callrecorder`, `com.nll.acr` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only (no certificate pinning across stores) |
| Threat type | Background `RECORD_AUDIO` bypass via `sBackgroundSkipList`; SDK privilege inheritance |
| Dynamic verification | Confirmed on CPH2413 (Nord CE 3 Lite 5G, Android 14) |

## Summary

`com.appstar.callrecorder` and `com.nll.acr` appear in Oplus's `sBackgroundSkipList`, allowing them to bypass Android's background microphone access restriction and receive `RECORD_AUDIO` grants from a background context without user interaction. Both apps are self-signed with `SHA1withRSA` certificates (no CA chain), meaning any attacker can adopt either package namespace and inherit the bypass.

## Cross-Store Certificate Evidence

Certificate fingerprint verification was performed across five app-store variants of each application (Google Play, APKPure, Uptodown, APKMirror, and one regional store). No store enforces certificate pinning: each variant carries a distinct or unchecked certificate, confirming that any attacker can adopt either package namespace with a self-generated key and unconditionally inherit the `sBackgroundSkipList` bypass.

## Dynamic Verification

Impersonation APKs signing as `com.appstar.callrecorder` and `com.nll.acr` each received the `RECORD_AUDIO` grant callback (`result=GRANTED`) when requesting the permission from a background context, while the control APK's request was silently dropped. Logcat confirms no `GrantPermissionsActivity` was started for either impersonation APK.

## SDK Inheritance and Network Capture

`com.nll.acr` v33.1 bundles the Otter.ai AISense SDK (`com.aisense.openapi`), which implements a complete audio-upload pipeline (`AISenseClient.upload()` → `uploadToS3()` → S3 PUT to `s3-us-west-2.amazonaws.com`). `com.appstar.callrecorder` bundles AppLovin and Facebook Audience Network ad SDKs. All bundled SDKs inherit `RECORD_AUDIO` access via process-level trust propagation, with no additional grant required.

Network capture via PCAPdroid on first-launch of `com.nll.acr` (before any call was placed) recorded **276.9 KB** of outbound traffic to `googleleads.g.doubleclick.net`, confirming that ad-SDK telemetry leaves the device at startup — behavior that may not align with the app's stated privacy policy claim of "no personal data outside your phone."

## Security Impact

- Name-only binding on `sBackgroundSkipList`: impersonation requires only package name adoption (no certificate match).
- SDK inheritance: Otter.ai audio-upload and ad-telemetry SDKs inherit microphone access without any additional permission grant.
- The bypass operates outside the runtime permission model: no Settings entry, no user-facing revocation surface.
