---
id: vuln-076
vendor: OnePlus
package: com.coloros.phonemanager
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-076 · `com.coloros.phonemanager` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.coloros.phonemanager` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package allowlist (com.coloros.phonemanager, com.coloros.assistantscreen) bypasses normal access control by granting privileged storage interface access based on UID matching rather than proper permission enforcement.

## Attack Surface
A pre-installed OEM app matching one of the hardcoded package names can call getStorageData() to access privileged storage manager functionality without standard permission checks, potentially enabling unauthorized storage operations.

## Call Graph
```
- getStorageData() [ANCHOR]
- → Binder.getCallingUid() [UID_CHECK]
- → getPackagesForUid(callingUid) [PKG_QUERY]
- → String.equals("com.coloros.phonemanager") [hardcoded allowlist check]
- → IOplusStorageManagerService.getStorageData() [privileged call]
```

