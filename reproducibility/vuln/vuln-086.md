---
id: vuln-086
vendor: OnePlus
package: com.oplus.games
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-086 · `com.oplus.games` · OnePlus

## Metadata
| Field | Value |
|---|---|
| Vendor | OnePlus |
| Package | `com.oplus.games` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.75 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package 'com.oplus.games' receives special audio parameter handling (OPLUS_AUDIO_SET_TRACKVOLUME) without explicit permission checks, allowing it to manipulate audio track volume in ways other apps cannot.

## Attack Surface
A pre-installed or privileged app with package name 'com.oplus.games' can invoke setParametersPermission() with OPLUS_AUDIO_SET_TRACKVOLUME to bypass normal audio permission enforcement and adjust track volumes, potentially affecting user experience or enabling covert audio manipulation.

## Call Graph
```
- setParametersPermission() [line 490: const-string 'com.oplus.games']
- → getOpPackageName() [line 491: retrieves caller package]
- → String.equals() [line 492: compares hardcoded pkg to caller]
- → hasTrackVolumePermission assignment [line 490: boolean set based on package match]
```

