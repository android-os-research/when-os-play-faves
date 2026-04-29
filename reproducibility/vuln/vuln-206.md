---
id: vuln-206
vendor: Vivo
package: com.vivo.iotserver
verdict: CONFIRMED_MEDIUM
tag: SIG_CHECK
category: signature_bypass
---

# vuln-206 · `com.vivo.iotserver` · Vivo

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Package | `com.vivo.iotserver` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `SIG_CHECK` |
| Confidence | 0.75 |
| Threat type | signature_bypass |

## Privacy Impact
Hardcoded package names (com.tencent.tmgp.sgame, com.tencent.tmgp.pubgmhd, com.android.bbkmusic) may receive signature-based permission grants without proper validation, allowing privilege escalation if a malicious app spoofs these package names.

## Attack Surface
A pre-installed or privileged app could grant sensitive permissions (BLUETOOTH_ADVERTISE, BLUETOOTH_CONNECT, BLUETOOTH_SCAN, NETWORK_FACTORY, etc.) to spoofed packages matching the hardcoded allowlist, bypassing normal permission enforcement.

## Call Graph
```
- grantSignaturePermissionForSpecialPackage (ANCHOR, contains hardcoded pkg strings)
- → SIG_CHECK pattern (method name suggests signature validation)
- → allowlist_check + early_return (enforcement pattern indicates conditional grant)
```

