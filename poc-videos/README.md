# Dynamic-Validation Videos — Finding Pointers

Each video demonstrates, on a production device, a statically identified
access-control subversion described in the paper's Case Studies (§VI). This
file points each recording to (a) the framework class and method that
implements the deviation (the smali anchor to inspect), and (b) the triage /
evidence record in this artifact or, where the finding is not part of the
bundled Samsung reproduction, the paper listing that documents it.

The four videos are production-device validations on Nokia, OnePlus, Vivo, and
Xiaomi hardware. The bundled pipeline sample is a **Samsung Galaxy A22 5G**, so
the exact smali for these four devices is not reproduced by running the bundled
example; the framework class and method named below are the anchors to inspect
in the corresponding OEM dump, and the paper's smali appendix reproduces the
relevant listings verbatim. `docs/SMALI_VERIFICATION_GUIDE.md` explains how to
audit such a class/method in a full dump; `docs/PIPELINE_OUTPUT_GUIDE.md`
explains the triage/propagation records referenced below.

| Video | Device | Framework anchor (smali) | Triage / evidence | Paper |
|---|---|---|---|---|
| `cat1_nokia_integrator_content_provider.mp4` | Nokia C210 (A13) | Provider `com.tmobile.pr.adapt/IntegratorContentProvider`, gated by the `normal`-protection permission `com.tmobile.pr.adapt.THIRD_PARTY_TEMP_ID` (auto-granted at install) | Manifest/provider exposure — not a hardcoded-package branch, so it does not appear in the framework triage. Related Nokia T-Mobile boot grants are consolidated in `../reproducibility/vuln/Cat1/nokia-tmo-grants.md` (and `vuln-063`…`vuln-069`) | §VI, "Name-Only Framework Branches"; appendix "Nokia: T-Mobile `IntegratorContentProvider` PoC Details" |
| `cat2_oneplus_silent_sms.mp4` | OnePlus CPH2413 (A14) | `SmsApplicationExtImpl.shouldWriteMessageForPackage()` returns `false` for packages in `OEM_PACKAGE_MO_SMS_NOT_SHOW_IN_UI` (14 pkgs, incl. `com.heytap.usercenter`); consumed at `SmsApplication.shouldWriteMessageForPackageAsUser()`, suppressing the `content://sms/sent` write | Pattern P3 SMS-suppression hook. No bundled report (finding is OnePlus-specific, not in the Samsung sample) | §VI, "Name-Only Framework Branches" (silent SMS); appendix Pattern-P3/P4 listings |
| `cat2_vivo_bal_bypass.mp4` | Vivo V2310 (A14) | `VivoBackgroundActivityController` injected into `com.android.server.wm.ActivityStarter`; a component in `mWhiteComponentList` (22 WeChat/QQ VoIP activities) converts a BAL denial to allow, bypassing `shouldAbortBackgroundActivityStart()` | Pattern P2 enforcement-gate bypass. No bundled report (Vivo-specific) | §VI, "Name-Only Framework Branches"; appendix listings `mWhiteComponentList` + task-stack |
| `cat2_xiaomi_installer_bypass.mp4` | Redmi (MIUI, A14) | `PackageManagerServiceImpl.assertValidApkAndInstaller()` (miui-services.jar): when `mCallingPackage` is in `sNoVerifyAllowPackage` (contains `com.amazon.venezia`) the method returns immediately, skipping signature, installer-allow, and telemetry checks | **Bundled reports:** `../reproducibility/vuln/vuln-256.md` and `../reproducibility/vuln/vuln-227.md` (verdict `CONFIRMED_MEDIUM`, tag `INSTALLER_VERIFY`, with the identity-to-enforcement call graph) | §VI, "Enforcement-Gate Bypasses"; appendix `sNoVerifyAllowPackage` listing |

## How to use these pointers

1. **Watch the video** to see the runtime effect (e.g. an SMS sent with no
   `content://sms/sent` row, or an install that skips MIUI's three gates).
2. **Locate the framework anchor** — the class and method in the table. For the
   Xiaomi case, the consolidated reports give the full call chain; for the
   others, the paper's smali appendix reproduces the exact allowlist/hook.
3. **Confirm the identity-to-enforcement path** using
   `docs/SMALI_VERIFICATION_GUIDE.md`: the hardcoded identity (or `normal`-level
   permission), the selecting branch, and the reached enforcement surface.