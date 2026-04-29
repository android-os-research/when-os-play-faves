---
id: vuln-136
vendor: Samsung
package: com.samsung.knox.kss
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: binder_plumbing
---

# vuln-136 · `com.samsung.knox.kss` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.knox.kss` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | binder_plumbing |

## Privacy Impact
The hardcoded 'com.samsung.knox.kss' package is used to construct a ComponentName and send broadcasts to a specific Knox keyguard receiver across multiple user profiles, potentially enabling targeted delivery of state-change notifications without explicit permission checks.

## Attack Surface
A pre-installed or privileged app could intercept or manipulate the broadcast delivery mechanism to the Knox keyguard receiver, or exploit the hardcoded package name to inject malicious broadcasts into the Knox security framework.

## Call Graph
```
- sendStateChangeBroadcast(int, String)
- → new ComponentName('com.samsung.knox.kss', 'com.samsung.knox.kss.KnoxKeyguardReceiver')
- → Intent.setComponent(ComponentName)
- → Context.sendBroadcastAsUser(Intent, UserHandle)
```

