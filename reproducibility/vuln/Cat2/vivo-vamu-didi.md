---
id: cat2-vivo-vamu-didi
vendor: Vivo
package: com.sdu.didi.psnger, com.sdu.didi.gsui, com.huaxiaozhu.driver, com.meituan.qcs.r.android, com.didapinche.taxidriver, com.lalamove.huolala.driver
verdict: CONFIRMED_MEDIUM
tag: RESOURCE_PRIVILEGE
category: cat2_enforcement_level
---

# cat2-vivo-vamu-didi · Vivo: VAMU Low-Latency Network Privilege for Didi Apps

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Affected component | `VivoAppManageUtils` (telephony system process) |
| Verdict | **CONFIRMED_MEDIUM** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only |
| Threat type | OS-level network resource privilege (modem PDCP parameters + iptables) |

## Summary

`VivoAppManageUtils` in the telephony system process maintains two hardcoded name-only lists and monitors foreground app changes. When a listed package enters the foreground on LTE (type 13), LTE-CA (type 19), or NR (type 20), the system configures modem PDCP low-latency parameters and per-UID iptables rules on behalf of the app — capabilities not accessible through any public Android API.

## Privilege Tiers

| List | Packages | Privilege |
|---|---|---|
| A1 (~86 packages) | `com.sdu.didi.psnger` and others | VAMU Latency Level L2 — standard low-latency PDCP configuration |
| P1 (5 driver apps) | `com.sdu.didi.gsui`, `com.huaxiaozhu.driver`, `com.meituan.qcs.r.android`, `com.didapinche.taxidriver`, `com.lalamove.huolala.driver` | VAMU Latency Level L4 — most aggressive PDCP parameters |

L4 additionally requires `persist.vivo.apmd.lowlatencyprop.flag` index 5 = 1 and device not charging.

## iptables Rule (SM8550, L4 packages)

```
iptables -t mangle -A OUTPUT -m owner --uid <uid> -j TOS --set-tos 0xb8
```

`0xb8` encodes DSCP 46 (Expedited Forwarding, RFC 2474), marking all outgoing IP packets from the app's UID for highest-priority network forwarding. Additionally, `VivoListCenter.sInternalWhiteListForRatioControl` contains `com.sdu.didi.gsui` at index `0x204`, granting supplementary CPU/memory ratio scheduling preference.

## Trigger

`onForegroundActivitiesChanged()` fires when a listed package enters foreground on LTE/NR. No user action or permission request is involved.

## Security Impact

- Name-only binding: any app adopting a listed package name while the legitimate app is absent receives modem-level and iptables privileges.
- The iptables rule marks all UID traffic as Expedited Forwarding, potentially enabling traffic prioritization invisible to the user and unaccountable to Android's network permission model.
- No Settings entry or permission declaration reflects these privileges.

## Related Finding

The Vivo cross-modality fingerprint lockout bypass (`VivoFaceLockoutCacheExtImpl.resetLockoutForFingerprint()`) was also statically confirmed in the same firmware images: a successful face authentication (oemStrength=4095) resets the fingerprint failed-attempt counter (oemStrength=15) via `FingerprintManager.resetLockout()`. Dynamic verification on Vivo V2310 (V29 EEA, Android 13) confirmed no `resetLockout` entries from PIN authentication, establishing the hook is face-HAL-exclusive.

## Notes

- No dynamic verification of VAMU/iptables privilege was performed (hardware-level modem configuration not observable via standard ADB).
- Static call-chain evidence confirmed in Vivo firmware images (Android 13–14).
- Referenced in paper §Additional Cat2 findings (reproducibility repository).
