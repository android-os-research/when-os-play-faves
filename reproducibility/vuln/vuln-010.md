---
id: vuln-010
vendor: MIUI
package: com.miui.cleanmaster
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-010 · `com.miui.cleanmaster` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.cleanmaster` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |
| Affected firmware | 1 images |

## Privacy Impact
com.miui.cleanmaster is hardcoded into a privileged process kill/memory reclaim allowlist, granting it exemption from normal process termination policies during system pressure events.

## Attack Surface
A pre-installed or compromised com.miui.cleanmaster gains immunity from being killed during memory pressure, allowing it to monopolize resources or persist malicious behavior even when the system attempts to reclaim memory.

## Call Graph
```
- `SystemPressureController.<clinit>() line 100: const-string v3, "com.miui.cleanmaster"`
- `invoke-interface {v2, v3}, Ljava/util/List;→add(Ljava/lang/Object;)Z`
- `sget-object v2, Lcom/android/server/am/SystemPressureController;→mKillProcPermList:Ljava/util/List;`
- `Process kill exemption list used in memory pressure decisions`
```

## Affected Firmware Images
- claude_redmi_validated
