---
id: vuln-178
vendor: Unknown (DSB0230)
package: com.autonavi.minimap
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-178 · `com.autonavi.minimap` · Unknown (DSB0230)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (DSB0230) |
| Package | `com.autonavi.minimap` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.autonavi.minimap' receives differential UI treatment and navigation bar hiding based on system properties and Settings queries, potentially bypassing normal app lifecycle checks.

## Attack Surface
A pre-installed or privileged app can leverage this hardcoded package name to trigger special behavior (hideNaviBar) that other apps cannot access, creating an unfair advantage in UI control.

## Call Graph
```
- Activity.onResume() [line 1980]
- → String.equals('com.autonavi.minimap') [line 1980]
- → SystemProperties.getInt('sys.launcher.map.layout') [line 1981]
- → Settings$System.getString('setting_key_launcher_widget_navi') [line 1984]
```

