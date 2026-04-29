---
id: vuln-067
vendor: Nokia
package: com.log.logservice
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-067 · `com.log.logservice` · Nokia

## Metadata
| Field | Value |
|---|---|
| Vendor | Nokia |
| Package | `com.log.logservice` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.log.logservice' receives special treatment in classloader initialization, potentially bypassing normal package verification and allowing it to access system resources with elevated privileges.

## Attack Surface
A pre-installed or privileged app matching this package name gains the ability to set isBundledApp=true unconditionally, which affects library path construction and classloader behavior, potentially allowing access to system libraries and resources normally restricted to bundled apps.

## Call Graph
```
- LoadedApk.createOrUpdateClassLoaderLocked() line 928
- → String.equals() comparison with 'com.log.logservice'
- → isBundledApp flag set to true (line 930)
- → makePaths() called with isBundledApp=true (line 1104)
```

