---
id: vuln-169
vendor: Transsion
package: com.transsion.wallet.tecno
verdict: CONFIRMED_MEDIUM
tag: SYS_PROP_READ
category: enforcement_bypass
---

# vuln-169 · `com.transsion.wallet.tecno` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.wallet.tecno` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SYS_PROP_READ` |
| Confidence | 0.75 |
| Threat type | enforcement_bypass |

## Privacy Impact
A hardcoded package string comparison gates system property reads that may influence package scanning and installation policy decisions, potentially allowing selective enforcement bypass for a specific OEM package.

## Attack Surface
Pre-installed or privileged apps can exploit differential treatment of 'com.transsion.wallet.tecno' during package initialization to bypass normal verification or policy enforcement.

## Call Graph
```
- PackageManagerService.addForInitLI() @ line 10729
- → invoke-virtual String.equals() with hardcoded 'com.transsion.wallet.tecno'
- → SystemProperties.get() called in same method
- → Result flows to PKG_MGMT and SIG_CHECK operations
```

