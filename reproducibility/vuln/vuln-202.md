---
id: vuln-202
vendor: Vivo
package: com.vivo.fuzzylocationmanager
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-202 · `com.vivo.fuzzylocationmanager` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.fuzzylocationmanager` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.fuzzylocationmanager' is bound as a service without verifying its signature or installation state, allowing a malicious replacement to intercept fuzzy location data and user location queries.

## Attack Surface
A pre-installed or privileged app can replace the legitimate fuzzy location service with a malicious version that captures location data before it is obfuscated, or can manipulate the fuzzy location behavior to leak precise coordinates.

## Call Graph
```
- VivoFuzzyLocationManager.bindService() → Intent.setClassName(hardcoded pkg, service class)
- → Context.bindService() → service binding without signature verification
- → VivoFuzzyLocationManager$1.onServiceConnected() → PackageManager.getPackageInfo()
- → getAPPVersion() retrieves package info for the hardcoded package
```

