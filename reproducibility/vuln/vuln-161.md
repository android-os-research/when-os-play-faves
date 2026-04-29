---
id: vuln-161
vendor: Transsion
package: com.transsion.aivoiceassistant
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-161 · `com.transsion.aivoiceassistant` · Transsion

## Metadata
| Field | Value |
|---|---|
| Vendor | Transsion |
| Package | `com.transsion.aivoiceassistant` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
A hardcoded package (com.transsion.aivoiceassistant) can be silently started as a service without user consent when power button is pressed, bypassing normal app launch restrictions.

## Attack Surface
Pre-installed system apps or privileged callers can trigger voice assistant startup unconditionally via power button handling, potentially enabling unauthorized voice command execution or sensor access.

## Call Graph
```
- PhoneWindowManager.powerLongPress() [caller]
- → PhoneWindowManager.controlAIVA(String, boolean) [anchor]
- → PackageManager.queryIntentServices(Intent, int) [PKG_QUERY]
- → Context.startServiceAsUser(Intent, UserHandle) [service start]
```

