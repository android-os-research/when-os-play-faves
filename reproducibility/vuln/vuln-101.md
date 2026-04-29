---
id: vuln-101
vendor: Samsung
package: com.kddi.extcontroldevice
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-101 · `com.kddi.extcontroldevice` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.kddi.extcontroldevice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
A hardcoded package 'com.kddi.extcontroldevice' gains privileged access to RLL (Remote Lock) device control without proper signature or permission verification, bypassing normal Android security boundaries.

## Attack Surface
Any app spoofing the package name 'com.kddi.extcontroldevice' or a pre-installed malicious app with that package name can control NFC and GPS device locks, potentially enabling unauthorized device manipulation.

## Call Graph
```
- isAccessPermitted() [ANCHOR]
- → Binder.getCallingUid() [UID_CHECK]
- → PackageManager.getPackagesForUid(callerUid) [PKG_QUERY]
- → String.equals('com.kddi.extcontroldevice') [hardcoded bypass]
```

