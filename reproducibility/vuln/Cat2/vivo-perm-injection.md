---
id: cat2-vivo-perm-injection
vendor: Vivo
package: com.vivo.space, (Vivo packages on domestic builds), (built-in IMEs)
verdict: CONFIRMED_HIGH
tag: HOOK_INTERCEPT
category: cat2_enforcement_level
---

# cat2-vivo-perm-injection · Vivo: Permission-Manager Injection for Signature-Permission Overrides

## Metadata
| Field | Value |
|---|---|
| Vendor | Vivo |
| Affected component | `PermissionManagerService.grantSignaturePermission()` → `IVivoPermissionManagerService` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Name only / build-region flag for `REQUEST_INSTALL_PACKAGES` |
| Threat type | Framework hook — denial-to-grant override for signature permissions |

## Summary

Vivo wires `IVivoPermissionManagerService` into AOSP's `PermissionManagerService` via a factory call in the constructor, storing the implementation in `mVivoPermissionManagerService`. Inside `grantSignaturePermission()`, after AOSP computes its allow/deny result, Vivo's hook is invoked and its return value replaces the AOSP decision.

## Hook Injection (Smali)

```smali
iget-object v7, p0, ->mVivoPermissionManagerService:L.../IVivoPermissionManagerService;
if-eqz v7, :cond_3bb
invoke-interface {v7, v13, p2, p1},
    L.../IVivoPermissionManagerService;->grantSignaturePermissionForSpecialPackage(
        Z, Landroid/content/pm/PackageParser$Package;, Ljava/lang/String;)Z
move-result v13
```

## Override Policy

```java
public boolean grantSignaturePermissionForSpecialPackage(
        boolean allowed, PackageParser.Package pkg, String perm) {
  // (1) com.vivo.space as system/updated-system app: allow any permission
  if (!allowed && (pkg.isSystem() || pkg.isUpdatedSystemApp())
          && "com.vivo.space".equals(pkg.packageName)) {
    allowed = true;
  }
  // (2) REQUEST_INSTALL_PACKAGES for Vivo packages on non-overseas builds
  if (!allowed && "android.permission.REQUEST_INSTALL_PACKAGES".equals(perm)
          && !FtBuild.isOverSeas() && isVivoPackage(pkg)) {
    allowed = true;
  }
  // (3) MANAGE_ACTIVITY_STACKS for built-in IMEs
  if (!allowed && "android.permission.MANAGE_ACTIVITY_STACKS".equals(perm)
          && isBuildInInputMethods(pkg)) {
    return true;
  }
  return allowed;
}
```

## Security Impact

- The hook executes late in the signature-permission evaluation path and can flip a deny to allow for sensitive permissions including `REQUEST_INSTALL_PACKAGES` and `MANAGE_ACTIVITY_STACKS`.
- The `REQUEST_INSTALL_PACKAGES` override is gated by `!FtBuild.isOverSeas()`, making it active on domestic (non-overseas) Vivo builds only — consistent with the finding being absent from the overseas V2310 test device.
- `com.vivo.space` receives an unconditional allow for any permission when running as a system or updated-system app — a blanket override with no per-permission scope.
- Stock `grantSignaturePermission()` has a single decision path whose outcome is final; Vivo inserts a mutable override point after AOSP's decision.

## Notes

- No direct dynamic verification of the hook itself was performed; the V2310 (overseas) test device did not carry the domestic override paths.
- Static call-chain evidence confirmed in Vivo CN firmware images (Android 13–14).
