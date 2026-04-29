---
id: vuln-216
vendor: MIUI
package: com.miui.voicetrigger
verdict: CONFIRMED_MEDIUM
tag: PKG_MGMT
category: pkg_mgmt_bypass
---

# vuln-216 · `com.miui.voicetrigger` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.voicetrigger` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_MGMT` |
| Confidence | 0.85 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
com.miui.voicetrigger is whitelisted to bypass persistent app enforcement checks, allowing it to set the PERSISTENT flag without normal restrictions

## Attack Surface
A pre-installed or privileged app can leverage this whitelist to remain running in the background indefinitely, consuming resources and potentially enabling surveillance or data exfiltration

## Call Graph
```
- PackageParserImpl.<clinit>() adds 'com.miui.voicetrigger' to sMiuiPersistentEnableList
- → checkEnablePackagePersistent() reads sMiuiPersistentEnableList via List.contains()
- → If package NOT in list, flags are cleared (line 74: flags &= ~0x8)
- → If package IS in list, PERSISTENT flag is allowed to remain set
```

