---
id: vuln-141
vendor: Samsung
package: com.sec.android.app.samsungapps
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-141 · `com.sec.android.app.samsungapps` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.sec.android.app.samsungapps` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded Samsung Apps package is given differential treatment in policy enforcement, potentially bypassing restrictions that apply to other packages.

## Attack Surface
A pre-installed Samsung service or privileged app can invoke isPolicyBlockedPackage() to check if com.sec.android.app.samsungapps is blocked, and receive a hardcoded bypass (return 1) at line 759-761, circumventing normal policy checks.

## Call Graph
```
- isPolicyBlockedPackage() [ANCHOR] line 759: const-string p6, 'com.sec.android.app.samsungapps'
- → line 759-761: invoke-virtual {p6, v0} String.equals() + early return v5 (1)
- → Implicit PKG_QUERY: the method queries package name (v0 = p3.getPackageName()) and compares against hardcoded allowlist
```

