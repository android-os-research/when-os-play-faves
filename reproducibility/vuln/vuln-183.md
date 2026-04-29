---
id: vuln-183
vendor: Unknown (GS5)
package: com.kugou.android
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: enforcement_bypass
---

# vuln-183 · `com.kugou.android` · Unknown (GS5)

## Metadata
| Field | Value |
|---|---|
| Vendor | Unknown (GS5) |
| Package | `com.kugou.android` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.85 |
| Threat type | enforcement_bypass |

## Privacy Impact
Kugou music app receives special handling in media session lifecycle that bypasses normal enforcement, allowing it to manipulate system settings without standard permission checks.

## Attack Surface
A pre-installed or privileged Kugou app can trigger special media session destruction logic that modifies system settings (pri_sub_screen_music_state, pri_sub_screen_contrl_music) and sends commands to Realtek hardware without standard permission enforcement.

## Call Graph
```
- destroySessionLocked() @ line 514: String.equals(com.kugou.android)
- → getPackageName() @ line 514: PKG_QUERY on MediaSessionRecordImpl
- → Settings$System.putInt() @ line 515-520: SYS_PROP_WRITE to system settings
- → RealtekSendUtils.sendMusicPlayStatus() @ line 516: Hardware command dispatch
```

