---
id: vuln-080
vendor: OnePlus
package: com.kuaishou.nebula
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-080 · `com.kuaishou.nebula` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.kuaishou.nebula` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
Viber and 23 other messaging/communication apps are whitelisted for network access bypass, allowing them to circumvent joystick/gamepad input restrictions without user awareness.

## Attack Surface
A pre-installed OEM service can silently exempt Viber from input device restrictions that apply to other apps, enabling covert data exfiltration or surveillance via network access during restricted states.

## Call Graph
```
- OplusJoystickManagerUtils.<clinit>() [line 96-123: const-string v14, 'com.viber.voip' added to DEFAULT_NET_WHITE_PKG_LIST]
- → DEFAULT_NET_WHITE_PKG_LIST static field populated via Arrays.asList() and sput-object
- → Implicit PKG_QUERY: list membership checks against this whitelist gate network/input policy decisions
```

