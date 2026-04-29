---
id: vuln-096
vendor: OnePlus
package: com.tencent.mm
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-096 · `com.tencent.mm` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.tencent.mm` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
WeChat (com.tencent.mm) receives special UI/configuration handling that bypasses normal resource application flow, potentially allowing differential treatment or capability elevation.

## Attack Surface
A pre-installed OEM framework component grants WeChat exclusive dark mode and compact window configuration adjustments without standard permission checks, enabling UI manipulation or feature access unavailable to other apps.

## Call Graph
```
- OplusCompactWindowAppManager.updateCustomDarkModeForWechat() [ANCHOR: const-string 'com.tencent.mm']
- → String.equals(currentProcessName) [conditional gate]
- → supportCompactWindow() [internal check]
- → ResourcesImpl.mResourcesImplExt.getConfiguration() [PKG_QUERY-adjacent resource access]
```

