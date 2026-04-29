---
id: vuln-008
vendor: MIUI
package: com.mi.health
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-008 · `com.mi.health` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.mi.health` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
The hardcoded package 'com.mi.health' is passed to fodCallBack() with elevated fingerprint sensor privileges, potentially allowing unauthorized heart rate data collection without proper permission checks.

## Attack Surface
A pre-installed or privileged app (com.mi.health) gains direct access to fingerprint sensor heart rate commands via the FodFingerprintServiceStub callback, bypassing normal package verification and permission enforcement.

## Call Graph
```
- `MiFxTunnelAidl.sendCommand() [line 102]`
- `const-string v7, 'com.mi.health' [line 102]`
- `FodFingerprintServiceStub.getInstance().fodCallBack(..., 'com.mi.health', ...) [line 102]`
- `FodFingerprintServiceStub.fodCallBack() [implicit PKG_QUERY/UID_CHECK]`
```

## Affected Firmware Images
- claude_redmi_validated
