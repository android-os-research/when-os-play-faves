---
id: vuln-139
vendor: Samsung
package: com.samsung.ucs.agent.ese
verdict: CONFIRMED_MEDIUM
tag: PKG_QUERY
category: pkg_mgmt_bypass
---

# vuln-139 · `com.samsung.ucs.agent.ese` · Samsung

## Metadata
| Field | Value |
|---|---|
| Vendor | Samsung |
| Package | `com.samsung.ucs.agent.ese` |
| Verdict | **CONFIRMED_MEDIUM** |
| Confirmed tag | `PKG_QUERY` |
| Confidence | 0.72 |
| Threat type | pkg_mgmt_bypass |

## Privacy Impact
The hardcoded package name 'com.samsung.ucs.agent.ese' is queried against enterprise credential storage without explicit permission checks, allowing differential treatment of this system agent.

## Attack Surface
A pre-installed or privileged app could exploit the hardcoded ESE agent package name to bypass normal package query restrictions or gain insight into credential management state tied to this specific agent.

## Call Graph
```
- isEseManaged() [ANCHOR: const-string v6, 'com.samsung.ucs.agent.ese']
- → ContentValues.put(storagePackageName, 'com.samsung.ucs.agent.ese')
- → EdmStorageProvider.getCount(UniversalCredentialInfoTable, ContentValues)
- → PKG_QUERY (implicit: querying credential storage by hardcoded package name)
```

