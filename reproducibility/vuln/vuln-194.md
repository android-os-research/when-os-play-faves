---
id: vuln-194
vendor: Vivo
package: com.vivo.appstore
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-194 · `com.vivo.appstore` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.appstore` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
com.vivo.appstore receives differential installation treatment (bypass of verification flags) compared to other installers, potentially allowing installation of packages without standard security checks.

## Attack Surface
A pre-installed or privileged app (com.vivo.appstore, com.bbk.appstore) can install packages with the INSTALL_ALL_USERS flag set unconditionally, bypassing normal verification requirements that apply to other installers.

## Call Graph
```
- PackageInstallerService.createSessionInternal() line 793-795
- → String.equals() check for 'com.vivo.appstore' and 'com.bbk.appstore'
- → iput() to set INSTALL_ALL_USERS flag (0x100000) in installFlags
- → InstallPackageHelper.executePostCommitStepsLIF() processes flagged installation
```

