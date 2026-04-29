---
id: vuln-188
vendor: Vivo
package: com.iqoo.user.engineermode
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-188 · `com.iqoo.user.engineermode` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.iqoo.user.engineermode` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.iqoo.user.engineermode' is exempted from asset relaunch restrictions and included in privileged allowlists, potentially allowing it to bypass activity lifecycle enforcement and access restricted functionality.

## Attack Surface
A pre-installed or privileged app matching this package name can bypass activity relaunch restrictions, avoid asset reloading, and potentially access freeform window management features without normal constraints.

## Call Graph
```
- VivoActivityRecordImpl.shouldAssetRelaunch() line 2423
- → String.contains() check for 'com.iqoo.user.engineermode'
- → Early return with true (skip relaunch)
- → PKG_QUERY differential treatment
```

