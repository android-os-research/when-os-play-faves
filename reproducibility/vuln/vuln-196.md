---
id: vuln-196
vendor: Vivo
package: com.vivo.customtool
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-196 · `com.vivo.customtool` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.customtool` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
The hardcoded package 'com.vivo.customtool' bypasses standard device owner verification, allowing it to clear device owner status without normal caller identity checks.

## Attack Surface
A pre-installed or privileged app matching this package name can invoke clearDeviceOwner() with minimal authentication, circumventing the normal requirement that only the actual device owner can clear itself.

## Call Graph
```
- clearDeviceOwner(String) → isVivoCustomTool() [line 10445]
- → isVivoCustomTool(int) → isCallingFromPackage('com.vivo.customtool', uid) [line 25168]
- → isCallingFromPackage() → IPackageManager.checkSignatures('android', 'com.vivo.customtool', uid) [line 25169]
```

