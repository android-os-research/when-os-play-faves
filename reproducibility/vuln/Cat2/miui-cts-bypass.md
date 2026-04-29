---
id: cat2-miui-cts-bypass
vendor: MIUI (Xiaomi)
package: com.lbe.security.miui
verdict: CONFIRMED_HIGH
tag: ENFORCEMENT_GATE_BYPASS
category: cat2_enforcement_level
---

# cat2-miui-cts-bypass · MIUI: CTS-Conditional Permission Controller Routing

## Metadata
| Field | Value |
|---|---|
| Vendor | MIUI / HyperOS (Xiaomi, CN-region builds) |
| Affected component | `PackageManagerImpl.getPermissionControllerPackageName()` |
| Verdict | **CONFIRMED_HIGH** |
| Category | Cat2 — Enforcement-Level Privilege (no user-facing revocation surface) |
| Auth strength | Build-region flag (`IS_INTERNATIONAL_BUILD`) + caller package name |
| Threat type | Compliance evasion — substituted permission controller on CN domestic builds |

## Summary

Static analysis of MIUI HyperOS (Android 14) CN-region builds reveals that `PackageManagerImpl.getPermissionControllerPackageName()` implements a two-layer conditional dispatch that ensures no automated evaluator ever observes the non-compliant permission controller substitution.

## Mechanism

```java
String getPermissionControllerPackageName(String defaultName) {
    String current = ActivityThread.currentPackageName();

    // Layer 1: International builds always return the Mainline module.
    // GMS certification runs on international builds → evaluator
    // always sees AOSP-compliant behaviour.
    if (IS_INTERNATIONAL_BUILD)
        return defaultName;

    // Layer 2: Inner CTS bypass for Xiaomi's own QA on CN hardware.
    // Nine exact CTS package names return the Mainline module.
    if (sCtsPackage.contains(current))   // sCtsPackage is a static HashSet
        return defaultName;

    // All real end-users on CN domestic builds reach this branch.
    if (TextUtils.isEmpty(current))
        return isOptimizationMode() ? "com.lbe.security.miui" : defaultName;
    return "com.lbe.security.miui";   // Xiaomi's proprietary controller
}
```

The static `sCtsPackage` HashSet is populated at class initialisation with nine exact CTS package names:
- `com.android.cts.usepermission`
- `com.android.cts.permissionapp`
- `android.permission.cts.appthatrequestpermission`
- `android.permission.cts.appthatrequestcustomcamerapermission`
- `android.permission3.cts.usepermission`
- `android.os.cts.autorevokedummyapp`
- `android.os.cts.autorevokeprerapp`
- `android.os.cts.autorevokeqapp`
- `android.os.cts.autorevokerapp`

## GMS Compliance Implication

GMS certification is conducted on international firmware builds (`IS_INTERNATIONAL_BUILD=true`); the outer gate fires unconditionally and the evaluator always observes `defaultName` (the AOSP Mainline module). The inner `sCtsPackage` gate handles Xiaomi's own QA runs against CN-domestic hardware. Together, neither Google's certification process nor Xiaomi's internal testing ever encounters `com.lbe.security.miui` as the permission controller.

The entire population of CN domestic users receives `com.lbe.security.miui` for every runtime permission dialog. The presence of the inner `sCtsPackage` bypass constitutes a self-admission: if `com.lbe.security.miui` were behaviourally equivalent to the Mainline module for all CTS-exercised interactions, the bypass would be unnecessary.

The Android CDD requires devices to present consistent behaviour regardless of calling context; encoding observation-conditional branching on the evaluator's package name is structural non-compliance.

## Scope and Build Variants

Static analysis confirms the two-layer logic in CN-region HyperOS builds (`ro.miui.build.region=cn`). EEA, India, Indonesia, and Taiwan builds carry `IS_INTERNATIONAL_BUILD=true`: the outer gate returns `defaultName` unconditionally and the substitution is entirely inactive.

Dynamic confirmation of the substitution was not performed on the physical research device (EEA variant, `ro.miui.build.region=eea`); the finding rests on static analysis of CN firmware images.

## Disclosure

This finding has been forwarded to Google as a GMS compliance concern under coordinated disclosure.
