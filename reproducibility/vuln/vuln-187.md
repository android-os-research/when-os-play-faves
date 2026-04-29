---
id: vuln-187
vendor: Vivo
package: com.bbk.iqoo.feedback
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-187 · `com.bbk.iqoo.feedback` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.bbk.iqoo.feedback` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.bbk.iqoo.feedback' is included in a removable platform package list that bypasses standard package management restrictions during installation.

## Attack Surface
A pre-installed OEM app can leverage this whitelist to avoid uninstallation restrictions or signature verification that applies to other packages, granting it persistent presence on the device.

## Call Graph
```
- InstallPackageHelper.<clinit>() [ANCHOR: const-string v5, 'com.bbk.iqoo.feedback']
- → filled-new-array/range {v1..v46} → REMOVABLE_PLATFORM_PKG_LIST
- → sput-object → static field assignment (PKG_MGMT context)
```

