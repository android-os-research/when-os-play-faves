---
id: vuln-138
vendor: Samsung
package: com.samsung.systemui.navillera
verdict: CONFIRMED_MEDIUM
tag: PERM_CHECK
category: enforcement_bypass
---

# vuln-138 · `com.samsung.systemui.navillera` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.systemui.navillera` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_CHECK` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.samsung.systemui.navillera' is passed to a permission/package validation check, potentially allowing this specific package to bypass normal caller verification or receive privileged treatment.

## Attack Surface
A pre-installed or compromised com.samsung.systemui.navillera package can invoke setNaviStarSplitImmersiveMode() to modify immersive split-screen mode without standard caller identity verification, affecting window management and display layout.

## Call Graph
```
- setNaviStarSplitImmersiveMode() [ANCHOR] → const-string 'com.samsung.systemui.navillera'
- → ArrayList.add(hardcoded_pkg)
- → MultiStarController.checkMultiStarPackageAndPermission(method_name, pkg_list)
- → [PERM_CHECK implied in method name]
```

