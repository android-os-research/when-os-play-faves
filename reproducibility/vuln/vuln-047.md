---
id: vuln-047
vendor: Fairphone
package: com.qualcomm.qti.cne
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-047 · `com.qualcomm.qti.cne` · Fairphone

## Metadata
| Field | Value |
|---|---|
| Vendor | Fairphone |
| Package | `com.qualcomm.qti.cne` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.92 |
| Threat type | enforcement_bypass |

## Privacy Impact
GTS test framework can bypass permission checks for com.qualcomm.qti.cne package on READ_PHONE_STATE, allowing unauthorized access to sensitive phone state information.

## Attack Surface
A pre-installed GTS (Google Test Suite) package can query permissions for com.qualcomm.qti.cne and receive PERMISSION_DENIED (return value -1) for READ_PHONE_STATE even if the permission is granted, while other permissions return the actual grant status. This creates a differential treatment that could be exploited to detect or bypass permission enforcement.

## Call Graph
```
- checkPermission(String, String, int) @ line 950
- → equalsIgnoreCase(com.qualcomm.qti.cne) → if-eqz branch
- → READ_PHONE_STATE check → early return 0 (PERMISSION_GRANTED)
- → else → return -1 (PERMISSION_DENIED)
```

