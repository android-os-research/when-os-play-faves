---
id: vuln-104
vendor: Samsung
package: com.osp.app.signin
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-104 · `com.osp.app.signin` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.osp.app.signin` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.75 |
| Threat type | signature_bypass |

## Privacy Impact
A hardcoded Samsung account package (com.osp.app.signin) is granted privileged permission checks without proper signature validation enforcement, allowing a spoofed app to bypass security gates.

## Attack Surface
A malicious app with the package name com.osp.app.signin can invoke hasPermission() to bypass signature verification and gain access to reactive service operations intended only for Samsung's official account app.

## Call Graph
```
- hasPermission() [ANCHOR: const-string v1, "com.osp.app.signin"]
- → PackageManager.getPackageInfo(p1, 0x40) [PKG_QUERY]
- → PackageManager.checkSignatures(v5, p1) [SIG_CHECK]
- → early return on signature mismatch (line ~240)
```

