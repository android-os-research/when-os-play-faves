.class public final Lcom/android/server/pm/KnownPackages;
.super Ljava/lang/Object;
.source "KnownPackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KnownPackages$KnownPackage;
    }
.end annotation


# static fields
.field public static final LAST_KNOWN_PACKAGE:I = 0x12

.field public static final PACKAGE_AMBIENT_CONTEXT_DETECTION:I = 0x12

.field public static final PACKAGE_APP_PREDICTOR:I = 0xc

.field public static final PACKAGE_BROWSER:I = 0x5

.field public static final PACKAGE_COMPANION:I = 0xf

.field public static final PACKAGE_CONFIGURATOR:I = 0xa

.field public static final PACKAGE_DOCUMENTER:I = 0x9

.field public static final PACKAGE_INCIDENT_REPORT_APPROVER:I = 0xb

.field public static final PACKAGE_INSTALLER:I = 0x2

.field public static final PACKAGE_OVERLAY_CONFIG_SIGNATURE:I = 0xd

.field public static final PACKAGE_PERMISSION_CONTROLLER:I = 0x7

.field public static final PACKAGE_RECENTS:I = 0x11

.field public static final PACKAGE_RETAIL_DEMO:I = 0x10

.field public static final PACKAGE_SETUP_WIZARD:I = 0x1

.field public static final PACKAGE_SYSTEM:I = 0x0

.field public static final PACKAGE_SYSTEM_TEXT_CLASSIFIER:I = 0x6

.field public static final PACKAGE_UNINSTALLER:I = 0x3

.field public static final PACKAGE_VERIFIER:I = 0x4

.field public static final PACKAGE_VERIFIER2:I = 0x64

.field public static final PACKAGE_WELLBEING:I = 0x8

.field public static final PACKAGE_WIFI:I = 0xe


# instance fields
.field public final mAmbientContextDetectionPackage:Ljava/lang/String;

.field public final mAppPredictionServicePackage:Ljava/lang/String;

.field public final mCompanionPackage:Ljava/lang/String;

.field public final mConfiguratorPackage:Ljava/lang/String;

.field public final mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

.field public final mDefaultTextClassifierPackage:Ljava/lang/String;

.field public final mIncidentReportApproverPackage:Ljava/lang/String;

.field public final mOverlayConfigSignaturePackage:Ljava/lang/String;

.field public final mRecentsPackage:Ljava/lang/String;

.field public final mRequiredInstallerPackage:Ljava/lang/String;

.field public final mRequiredPermissionControllerPackage:Ljava/lang/String;

.field public final mRequiredUninstallerPackage:Ljava/lang/String;

.field public final mRequiredVerifierPackage:Ljava/lang/String;

.field public final mRetailDemoPackage:Ljava/lang/String;

.field public final mSamsungVerifierPackage:Ljava/lang/String;

.field public final mSetupWizardPackage:Ljava/lang/String;

.field public final mSystemTextClassifierPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/DefaultAppProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v0, p0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 115
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    move-object v1, p2

    .line 116
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    move-object v1, p3

    .line 117
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    move-object v1, p4

    .line 118
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    move-object v1, p5

    .line 119
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackage:Ljava/lang/String;

    move-object v1, p6

    .line 120
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    move-object v1, p7

    .line 121
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    move-object v1, p8

    .line 122
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    move-object v1, p9

    .line 123
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    move-object v1, p10

    .line 124
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    move-object v1, p11

    .line 125
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    move-object v1, p12

    .line 126
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    move-object v1, p13

    .line 127
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 128
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 129
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    move-object/from16 v1, p16

    .line 130
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    move-object/from16 v1, p17

    .line 132
    iput-object v1, v0, Lcom/android/server/pm/KnownPackages;->mSamsungVerifierPackage:Ljava/lang/String;

    return-void
.end method

.method public static knownPackageToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_40

    const-string p0, "Unknown"

    return-object p0

    :pswitch_6
    const-string p0, "Ambient Context Detection"

    return-object p0

    :pswitch_9
    const-string p0, "Recents"

    return-object p0

    :pswitch_c
    const-string p0, "Retail Demo"

    return-object p0

    :pswitch_f
    const-string p0, "Companion"

    return-object p0

    :pswitch_12
    const-string p0, "Wi-Fi"

    return-object p0

    :pswitch_15
    const-string p0, "Overlay Config Signature"

    return-object p0

    :pswitch_18
    const-string p0, "App Predictor"

    return-object p0

    :pswitch_1b
    const-string p0, "Incident Report Approver"

    return-object p0

    :pswitch_1e
    const-string p0, "Configurator"

    return-object p0

    :pswitch_21
    const-string p0, "Documenter"

    return-object p0

    :pswitch_24
    const-string p0, "Wellbeing"

    return-object p0

    :pswitch_27
    const-string p0, "Permission Controller"

    return-object p0

    :pswitch_2a
    const-string p0, "System Text Classifier"

    return-object p0

    :pswitch_2d
    const-string p0, "Browser"

    return-object p0

    :pswitch_30
    const-string p0, "Verifier"

    return-object p0

    :pswitch_33
    const-string p0, "Uninstaller"

    return-object p0

    :pswitch_36
    const-string p0, "Installer"

    return-object p0

    :pswitch_39
    const-string p0, "Setup Wizard"

    return-object p0

    :pswitch_3c
    const-string p0, "System"

    return-object p0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public getKnownPackageNames(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;
    .registers 7

    .line 188
    const-class v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p2, :pswitch_data_cc

    .line 225
    :pswitch_7
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :pswitch_e
    new-array p2, v2, [Ljava/lang/String;

    .line 211
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAmbientContextDetectionPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_19
    new-array p2, v2, [Ljava/lang/String;

    .line 223
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRecentsPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :pswitch_24
    iget-object p1, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 218
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    goto :goto_3a

    :cond_33
    new-array p1, v2, [Ljava/lang/String;

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRetailDemoPackage:Ljava/lang/String;

    aput-object p0, p1, v1

    move-object p0, p1

    :goto_3a
    return-object p0

    :pswitch_3b
    new-array p2, v2, [Ljava/lang/String;

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mCompanionPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_46
    new-array p2, v2, [Ljava/lang/String;

    .line 221
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mOverlayConfigSignaturePackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_51
    new-array p2, v2, [Ljava/lang/String;

    .line 213
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mAppPredictionServicePackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5c
    new-array p2, v2, [Ljava/lang/String;

    .line 209
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mIncidentReportApproverPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_67
    new-array p2, v2, [Ljava/lang/String;

    .line 207
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mConfiguratorPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_72
    new-array p2, v2, [Ljava/lang/String;

    .line 205
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_7d
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/String;

    .line 202
    iget-object p3, p0, Lcom/android/server/pm/KnownPackages;->mDefaultTextClassifierPackage:Ljava/lang/String;

    aput-object p3, p2, v1

    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSystemTextClassifierPackageName:Ljava/lang/String;

    aput-object p0, p2, v2

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8d
    new-array p1, v2, [Ljava/lang/String;

    .line 190
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mDefaultAppProvider:Lcom/android/server/pm/DefaultAppProvider;

    invoke-virtual {p0, p3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultBrowser(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1

    :pswitch_98
    new-array p2, v2, [Ljava/lang/String;

    .line 200
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredVerifierPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_a3
    new-array p2, v2, [Ljava/lang/String;

    .line 194
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredUninstallerPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_ae
    new-array p2, v2, [Ljava/lang/String;

    .line 192
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mRequiredInstallerPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_b9
    new-array p2, v2, [Ljava/lang/String;

    .line 196
    iget-object p0, p0, Lcom/android/server/pm/KnownPackages;->mSetupWizardPackage:Ljava/lang/String;

    aput-object p0, p2, v1

    invoke-interface {p1, p2}, Lcom/android/server/pm/Computer;->filterOnlySystemPackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_c4
    const-string p0, "android"

    .line 198
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_b9
        :pswitch_ae
        :pswitch_a3
        :pswitch_98
        :pswitch_8d
        :pswitch_7d
        :pswitch_72
        :pswitch_7
        :pswitch_7
        :pswitch_67
        :pswitch_5c
        :pswitch_51
        :pswitch_46
        :pswitch_7
        :pswitch_3b
        :pswitch_24
        :pswitch_19
        :pswitch_e
    .end packed-switch
.end method
