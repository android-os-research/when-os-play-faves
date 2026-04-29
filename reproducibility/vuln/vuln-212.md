---
id: vuln-212
vendor: Vivo
package: com.vivo.website
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-212 · `com.vivo.website` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.website` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.website' is exempted from normal device admin deletion restrictions, allowing forced removal without standard policy checks.

## Attack Surface
A pre-installed Vivo system service can unilaterally delete the com.vivo.website package even when it is a device admin, bypassing the normal DevicePolicyManager ownership checks that would normally prevent deletion.

## Call Graph
```
- DeletePackageHelper.deletePackageX() [ANCHOR: const-string 'com.vivo.website']
- → isPackageDeviceAdmin(packageName, userId) check
- → DevicePolicyManager.isProfileOwnerApp() / isDeviceOwnerApp() bypass
- → PKG_MGMT: deletePackageX() proceeds without standard admin protection
```

