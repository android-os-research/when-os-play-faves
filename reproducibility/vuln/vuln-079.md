---
id: vuln-079
vendor: OnePlus
package: com.heytap.openid
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-079 · `com.heytap.openid` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.heytap.openid` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.heytap.openid' receives differential treatment based on UID verification, potentially bypassing normal security checks for OpenID-related operations.

## Attack Surface
A pre-installed or privileged app matching the hardcoded UID can invoke isCallerIsOpenID() to gain special notification handling privileges without standard permission enforcement.

## Call Graph
```
- isCallerIsOpenID() [ANCHOR: const-string 'com.heytap.openid']
- → Binder.getCallingUid() [UID_CHECK]
- → isCallerOpenIDOrStdIDInner(pkg, uid) [implicit privilege check]
```

