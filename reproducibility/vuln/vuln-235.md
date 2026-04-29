---
id: vuln-235
vendor: MIUI
package: com.miui.yellowpage
verdict: CONFIRMED_MEDIUM
tag: PERM_GRANT
category: permission_grant_bypass
---

# vuln-235 · `com.miui.yellowpage` · MIUI (Xiaomi · Redmi · Poco)

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI (Xiaomi · Redmi · Poco) |
| Package | `com.miui.yellowpage` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PERM_GRANT` |
| Confidence | 0.75 |
| Threat type | permission_grant_bypass |

## Privacy Impact
com.miui.yellowpage receives default runtime permissions automatically without explicit user consent or per-app grant flow.

## Attack Surface
A pre-installed or privileged OEM app (yellowpage) gains hardcoded access to dangerous permissions (likely contacts, location, camera, microphone) that should normally require user approval.

## Call Graph
```
- MiuiDefaultPermissionGrantPolicy.<clinit>() [line 138: hardcoded string]
- → MiuiDefaultPermissionGrantPolicy.grantDefaultPermissions(I)
- → PERM_GRANT (grantDefaultPermission)
```

