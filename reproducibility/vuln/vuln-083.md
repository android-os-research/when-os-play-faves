---
id: vuln-083
vendor: OnePlus
package: com.oplus.cast
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-083 · `com.oplus.cast` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.cast` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The method uses UID_CHECK (getCallingUid/getCallingPid) to gate permission decisions, but hardcoded package names like 'com.oplus.cast' may receive differential treatment or bypass enforcement based on string comparison rather than proper permission checks.

## Attack Surface
A pre-installed OEM app (com.oplus.cast or similar hardcoded packages) can call setParametersPermission() to set audio parameters that would normally be restricted to system UIDs (>= 0x2710), bypassing the UID-based enforcement via string-based package whitelisting.

## Call Graph
```
- setParametersPermission() [ANCHOR]
- → getCallingUid() check at line 460
- → String comparison against hardcoded 'com.oplus.cast' and other packages in <clinit>
- → Early return based on package name match, bypassing UID enforcement
```

