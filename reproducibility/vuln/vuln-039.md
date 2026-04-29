---
id: vuln-039
vendor: MIUI
package: org.benchmark.demo
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-039 · `org.benchmark.demo` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `org.benchmark.demo` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 6 images |

## Privacy Impact
Benchmark apps in the hardcoded allowlist can be selectively restricted or allowed network access based on device release status, enabling differential treatment of specific packages.

## Attack Surface
A pre-installed or privileged app (SecurityManagerService) can query package information and apply firewall rules to a hardcoded list of benchmark apps, potentially bypassing normal network access controls for those packages.

## Call Graph
```
- `RestrictAppNetManager.init() @ line 177: ArrayList.add('org.benchmark.demo')`
- `RestrictAppNetManager.updateFirewallRule() @ line 199: getUidByPackageName(context, pkgName)`
- `RestrictAppNetManager.getUidByPackageName() @ line 262: PackageManager.getApplicationInfo(pkgName, 0)`
- `MiuiNetworkManagementService.setMiuiFirewallRule() [network enforcement]`
```

## Affected Firmware Images
- POCO_X5_5G_Taiwan_V14.0.2.0.TMPTWXM_output
- Xiaomi_Pad_5_China_V14.0.23.3.13.DEV_output
- Xiaomi_Pad_5_China_V14.0.23.4.17.DEV_output
- Xiaomi_Pad_5_EEA_V14.0.4.0.TKXEUXM_output
- Xiaomi_Pad_5_Global_V14.0.3.0.TKXMIXM_output
- Xiaomi_Pad_5_India_V14.0.1.0.TKXINXM_output
