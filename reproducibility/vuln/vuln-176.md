---
id: vuln-176
vendor: Unknown (A200Pro)
package: com.mediatek.sensorhub.ui
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-176 · `com.mediatek.sensorhub.ui` · Unknown (A200Pro)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (A200Pro) |
| Package | `com.mediatek.sensorhub.ui` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.92 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package string 'com.mediatek.sensorhub.ui' is used to conditionally bypass HOME key handling during MMI (Manufacturing/Maintenance) mode, allowing privileged sensor calibration without user interaction.

## Attack Surface
A pre-installed or privileged app can trigger sensor calibration routines by spoofing the top activity package name or by being present as the foreground app during MMI mode, bypassing normal HOME key enforcement.

## Call Graph
```
- interceptKeyBeforeDispatching() @ line 2815
- → ActivityManager.getRunningTasks() → ComponentName.getPackageName()
- → String.equals('com.mediatek.sensorhub.ui')
- → SystemProperties.getInt('debug.mmi.mode.sensor') conditional branch
```

