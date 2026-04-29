---
id: vuln-102
vendor: Samsung
package: com.knox.vpn.proxyhandler
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-102 · `com.knox.vpn.proxyhandler` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.knox.vpn.proxyhandler` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.knox.vpn.proxyhandler' is directly bound as a service without package verification, allowing potential privilege escalation or service hijacking if the package is compromised or spoofed.

## Attack Surface
A pre-installed or privileged app could intercept or replace the proxy handler service binding, gaining control over VPN proxy configuration and network traffic routing for all users.

## Call Graph
```
- bindProxyService() [line 246-247: const-string 'com.knox.vpn.proxyhandler']
- → Intent.setClassName(packageName, className) [line 247]
- → Context.bindServiceAsUser(intent, connection, flags, userHandle) [line 249]
```

