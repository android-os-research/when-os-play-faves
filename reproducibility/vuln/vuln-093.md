---
id: vuln-093
vendor: OnePlus
package: com.qualcomm.location
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-093 · `com.qualcomm.location` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.qualcomm.location` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The checkCallingPackageName() method performs only string comparison against the calling UID's package names, allowing any app with the same UID to bypass the check and access sensitive location configuration APIs.

## Attack Surface
A pre-installed app sharing the same UID as the target package (e.g., com.qualcomm.location) can invoke izatGetEnableDgnssConfig(), getPreciseLocationEnabledByUser(), or setPreciseLocationEnableByUser() to read/write precise location settings without proper caller verification.

## Call Graph
```
- OplusPreciseLocationController.izatGetEnableDgnssConfig() [line 252]
- → checkCallingPackageName("com.qualcomm.location") [line 252]
- → Binder.getCallingUid() [line 319]
- → PackageManager.getPackagesForUid(uid) [line 320]
- → String.equals() comparison [line 328]
```

