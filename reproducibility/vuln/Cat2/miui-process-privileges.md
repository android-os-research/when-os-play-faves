---
id: cat2-miui-process-privileges
vendor: MIUI (Xiaomi)
package: multiple (name-only, 113+ packages)
verdict: CONFIRMED_HIGH
tag: RESOURCE_PRIVILEGE
category: cat2_enforcement_level
---

# cat2-miui-process-privileges · MIUI: Cloud-Controlled Process Scheduling and OOM Protection

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI / HyperOS (Xiaomi) |
| Affected component | `RealTimeModeControllerImpl`, `ProcessPolicy`, `SLAAppLib` (miui-services.jar, NetworkBoost.jar) |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only (no signature or UID verification) |
| Threat type | OS-level resource privilege — real-time CPU, OOM immunity, guaranteed memory, kernel QoS |
| Dynamic verification | Confirmed on Redmi 24040RN64Y (Redmi Note 13 Pro 5G, Android 14, build V816.0.8.0.UNTEUXM) |

## Summary

MIUI firmware ships four mechanisms that grant selected third-party applications persistent elevated system resources. All are name-only (no signature or UID verification); two can be updated silently via Xiaomi's cloud configuration infrastructure without a firmware update, while two are hardcoded in firmware.

## Finding 1: `RT_PKG_WHITE_LIST` — Real-Time CPU Scheduling (113 packages)

`com.android.server.wm.RealTimeModeControllerImpl` (in `miui-services.jar`) maintains `RT_PKG_WHITE_LIST`, a `HashSet` whose processes receive `SCHED_FIFO` real-time kernel scheduling priority — not requestable through any public Android API. The list is initialized empty at boot and populated exclusively from Xiaomi cloud configuration (key `perf_shielder_RTMODE`, namespace `perf_rtmode`) via `MiuiSettings$SettingsCloudData.getCloudDataString()`.

Live enumeration via `adb shell dumpsys SchedBoostService` returned 113 entries, including WeChat, QQ, Douyin/TikTok, Toutiao, Taobao, Alipay, Didi, WhatsApp, Instagram, YouTube, Facebook, Telegram, and Snapchat.

## Finding 2: `sSecretlyProtectAppList` (SPAL) — OOM Immunity

`com.android.server.am.ProcessPolicy` maintains `sSecretlyProtectAppList`: apps on this list pass the same branch as `isPersistent()` system processes in `promoteLockedApp()`, receiving `LOCKED_MAX_ADJ` and `LOCKED_MAX_PROCESS_STATE` — immune to the Linux OOM killer under any memory pressure. The field name `sSecretlyProtectAppList` is embedded verbatim in the smali source.

Live inspection via `adb shell dumpsys ProcessManager` confirmed four entries: `com.tencent.mm` (WeChat), `com.google.android.gms`, `com.xiaomi.channel`, `com.xiaomi.channel:remote`.

## Finding 3: `sFastBootAppMap` — Guaranteed Memory Residency

`ProcessPolicy` maintains `sFastBootAppMap`, a `HashMap` mapping package name to a memory threshold. Apps in this map receive "FastBoot" residency: the framework keeps their process resident in RAM up to the configured threshold even when fully backgrounded. Unlike `RT_PKG_WHITE_LIST`, this map is hardcoded in firmware.

```
sFastBootAppMap.put("com.tencent.mm",       memoryThreshold); // WeChat
sFastBootAppMap.put("com.tencent.mobileqq", memoryThreshold); // QQ
```

Confirmed via `adb shell dumpsys ProcessManager` FA section.

## Finding 4: `SLAAppLib` (NetworkBoost) — Kernel-Level Network QoS (26+ packages)

`com.xiaomi.NetworkBoost.slaservice.SLAAppLib` (in `NetworkBoost.jar`) initializes at boot via `initSLAAppDefault()`, hardcoding 26+ package names. Apps on this list are enrolled in Xiaomi's NetworkBoost SLA system, receiving kernel-level QoS rules applied via `tc` (traffic control) and netfilter — capabilities not requestable through any public Android API.

Enrolled packages include WeChat, QQ, TikTok, Taobao, Alipay, Instagram, YouTube, WhatsApp, Telegram, and Spotify. Confirmed installed packages: `com.spotify.music` (UID 10315), `com.google.android.youtube` (UID 10223), `com.facebook.katana` (UID 10304), `com.amazon.mShop.android.shopping` (UID 10299).

## Security Impact

- Two of four mechanisms are cloud-updatable without a firmware update, meaning the privilege surface can change post-deployment invisibly to users or auditors.
- All four are name-only: any app adopting a listed package name (when the legitimate app is absent) inherits OS-level scheduling and network priorities.
- Stock Android subjects all apps to the same OOM-killer and memory-pressure policy; no package name confers guaranteed memory residency or kernel-level QoS.
