---
id: vuln-158
vendor: Transsion
package: com.ludashi.superboost
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-158 · `com.ludashi.superboost` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.ludashi.superboost` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
com.ludashi.superboost is whitelisted in a system policy enforcement set (s1) that gates differential treatment in package management or capability checks, allowing it to bypass standard restrictions.

## Attack Surface
A pre-installed or privileged app can query whether a package is in the s1 whitelist via the public method j.s(String), and use that to grant com.ludashi.superboost special handling (e.g., skip enforcement, allow privileged operations, or bypass security checks).

## Call Graph
```
- j.<clinit>() line 850: aput-object "com.ludashi.superboost" into array v8
- → j.<clinit>() line 851: invoke-static Arrays.asList(v8) → new ArraySet(v8) → sput-object v7, j.s1
- → j.s(String) line 1: sget-object j.s1 → invoke-interface Set.contains(p0)
- → PKG_QUERY: Set membership check used to gate policy decisions
```

