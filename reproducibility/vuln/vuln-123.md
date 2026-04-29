---
id: vuln-123
vendor: Samsung
package: com.samsung.android.pushservice
verdict: CONFIRMED_MEDIUM
tag: UID_CHECK
category: enforcement_bypass
---

# vuln-123 · `com.samsung.android.pushservice` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.android.pushservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `UID_CHECK` |
| Confidence | 0.92 |
| Threat type | enforcement_bypass |

## Privacy Impact
A pre-installed or privileged app can bypass push service identity verification by spoofing the com.samsung.android.pushservice package name, potentially allowing unauthorized notification manipulation.

## Attack Surface
The checkCallerIsPushService method gates notification operations; a malicious app with system/phone UID can pass the isCallerSystemOrPhone() check and then claim to be the push service by matching the hardcoded package string, bypassing intended package identity enforcement.

## Call Graph
```
- checkCallerIsPushService(String, String)
- → isCallerSystemOrPhone()
- → Binder.getCallingUid() [UID_CHECK]
- → isUidSystemOrPhone(int)
```

