---
id: vuln-218
vendor: MIUI
package: com.xiaomi.miaudiovisual
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-218 · `com.xiaomi.miaudiovisual` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.xiaomi.miaudiovisual` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.xiaomi.miaudiovisual' receives differential treatment in audio visual feature activation without explicit user consent or permission checks.

## Attack Surface
A pre-installed or privileged app can trigger audio visual effects on lock screen by matching the hardcoded package name, bypassing normal permission enforcement for this feature.

## Call Graph
```
- startAudioVisualIfsatisfiedWith() @ line 1444
- → shouldRun('com.xiaomi.miaudiovisual', context) @ line 1444
- → PackageManager.getNameForUid(uid) @ line 1442
- → Set.contains(pkg) @ line 1443
```

