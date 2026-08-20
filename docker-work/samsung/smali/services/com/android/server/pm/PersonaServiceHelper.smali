.class public Lcom/android/server/pm/PersonaServiceHelper;
.super Ljava/lang/Object;
.source "PersonaServiceHelper.java"


# static fields
.field public static final ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static DTI_PACKAGES:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DUALDAR_TYPE_DO_ONLY:I = 0x2

.field public static final DUALDAR_TYPE_DO_PO:I = 0x1

.field public static final DUALDAR_TYPE_NONE:I = -0x1

.field public static final DUALDAR_TYPE_PO_ONLY:I = 0x0

.field public static final METADATA_DISALLOWED_MANAGED_PROFILE:Ljava/lang/String; = "com.samsung.android.multiuser.disallowed_managed_profile"

.field public static final METADATA_REQUIRED_MANAGED_PROFILE:Ljava/lang/String; = "com.samsung.android.multiuser.required_managed_profile"

.field public static final PROPERTY_LEAVE_ALL_SYSTEM_APPS_ENABLED:Ljava/lang/String; = "persist.sys.knox.leave_all_system_apps_enabled"

.field public static final STOCK_PM_FLAGS:I = 0x400

.field public static final TAG:Ljava/lang/String; = "PersonaServiceHelper"

.field public static mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

.field public static mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

.field public static mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

.field public static mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field public static mUserManager:Lcom/android/server/pm/UserManagerService;

.field public static packagesForDual:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static packagesForPOP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static packagesForSF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$3EAV4Y8Jm7u4BSgx8C9nm5bE4DY(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Boolean;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->lambda$isDERestrictionEnforced$0(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$9P7KdeawEkDvELbSe8jHU67K2W0(I)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->lambda$isPackageAllowlistedForDualDAR$2(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$OVgqWU_TWwrOfExRGXE7LJE_MDk(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->lambda$isPackageAllowlistedForDualDAR$1(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eHzMeoEg38zKGwEkuiAsyCL74LE(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->lambda$isPackageAllowlistedForDEAccessForDualDAR$3(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ku5ExOb1b9Sn_JOjVwHH8to4f3c(I)Landroid/os/Bundle;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->lambda$isPackageAllowlistedForDEAccessForDualDAR$4(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smgetApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 1

    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 23

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.bluetooth/com.android.bluetooth.hfp.HeadsetService"

    const-string v2, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpService"

    const-string v3, "com.android.bluetooth/com.android.bluetooth.a2dp.A2dpSinkService"

    const-string v4, "com.android.bluetooth/com.android.bluetooth.hfpclient.HeadsetClientService"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    const/4 v0, 0x0

    .line 124
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 125
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 126
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 127
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    .line 128
    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 427
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$1;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    .line 438
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$2;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    .line 448
    new-instance v0, Lcom/android/server/pm/PersonaServiceHelper$3;

    invoke-direct {v0}, Lcom/android/server/pm/PersonaServiceHelper$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.dti.samsung"

    const-string v2, "com.smg.rt"

    const-string v3, "com.aura.oobe.Samsung.gl"

    const-string v4, "com.aura.oobe.samsung"

    const-string v5, "com.dti.telefonica"

    const-string v6, "com.dti.tracfone"

    const-string v7, "com.dti.att"

    const-string v8, "com.LogiaGroup.LogiaDeck"

    const-string v9, "com.dti.attmx"

    const-string v10, "com.dti.millicom"

    const-string v11, "com.dti.cricket"

    const-string v12, "com.dti.globe"

    const-string v13, "com.dti.bouygues"

    const-string v14, "com.dti.uscc"

    const-string v15, "com.dti.amx"

    const-string v16, "com.dti.wiko"

    const-string v17, "com.dti.sliide"

    const-string v18, "com.dti.karbonn"

    const-string v19, "com.dti.intex"

    const-string v20, "com.dti.itel"

    const-string v21, "com.dti.gionee"

    const-string v22, "com.at.tg.rt"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addSecureFodlerImmeditateLockExceptionalCase(Ljava/util/List;)V
    .registers 2

    if-nez p0, :cond_69

    const-string p0, "PersonaServiceHelper"

    const-string/jumbo v0, "mSecureFodlerImmeditateLockExceptionalList == null"

    .line 1009
    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.android.systemui.recents.RecentsActivity"

    .line 1012
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.systemui.recents.SeparatedRecentsActivity"

    .line 1013
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.server.iris.enroll.IrisEnrollActivity"

    .line 1015
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.iris.IrisLockSettings"

    .line 1016
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ConfirmLockPattern$InternalActivity"

    .line 1017
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ConfirmLockPassword$InternalActivity"

    .line 1018
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockGeneric"

    .line 1019
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockPattern"

    .line 1020
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.ChooseLockPassword"

    .line 1021
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.biometrics.BiometricsLockSetup"

    .line 1023
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings.fingerprint.RegisterFingerprint"

    .line 1024
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.settings.notification.SecRedactionInterstitial"

    .line 1025
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.voc.LauncherActivity"

    .line 1027
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.voc.disclaimer.DisclaimerActivity"

    .line 1028
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.app.syncmldm.ui.XUIInstallConfirmActivity"

    .line 1029
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.app.ChooserActivity"

    .line 1031
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.knox.securefolder.foldercontainer.MultiwindowLockActivity"

    .line 1033
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.smartmirroring.CastingDialog"

    .line 1034
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    return-void
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .registers 6

    .line 1500
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1501
    array-length v1, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_20

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1502
    :cond_20
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static canAddMoreManagedProfiles(Landroid/content/Context;ZILjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZI",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1142
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    move v1, v0

    :cond_7
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1143
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1144
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_7

    .line 1146
    :cond_20
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_29

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_2c
    const/high16 p0, 0x20000

    and-int/2addr p0, p2

    const-string p2, "PersonaServiceHelper"

    const/4 v2, 0x1

    if-eqz p0, :cond_41

    const-string p0, "creating user owned container"

    .line 1155
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v1, v2, :cond_50

    const-string p0, "creation failed when already exists user-owned container"

    .line 1158
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_41
    const-string p0, "creating enterprise owned container"

    .line 1162
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lt v0, v2, :cond_50

    if-nez p1, :cond_50

    const-string p0, "creation failed when not allowed to remove PO"

    .line 1166
    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :cond_50
    return v2
.end method

.method public static comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10

    const-string v0, "PersonaServiceHelper"

    const/4 v1, 0x0

    if-eqz p2, :cond_68

    if-eqz p1, :cond_68

    if-nez p3, :cond_10

    .line 1506
    invoke-static {}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwnerEnabled()Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_68

    :cond_10
    const/4 v2, 0x0

    .line 1511
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1513
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v5, 0x8000000

    invoke-virtual {p0, p1, v5, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_1f} :catch_25
    .catchall {:try_start_15 .. :try_end_1f} :catchall_23

    .line 1517
    :goto_1f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2a

    :catchall_23
    move-exception p0

    goto :goto_64

    :catch_25
    move-exception p0

    .line 1515
    :try_start_26
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    goto :goto_1f

    :goto_2a
    if-eqz v2, :cond_5e

    .line 1519
    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz p0, :cond_5e

    .line 1521
    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getApkContentsSigners()[Landroid/content/pm/Signature;

    move-result-object p0

    .line 1522
    array-length p1, p0

    move p3, v1

    :goto_36
    if-ge p3, p1, :cond_5e

    aget-object v2, p0, p3

    if-eqz v2, :cond_5b

    .line 1524
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceHelper;->computeSha256DigestBytes([B)[B

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/PersonaServiceHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_50

    return v4

    .line 1527
    :cond_50
    invoke-virtual {v2}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    return v4

    :cond_5b
    add-int/lit8 p3, p3, 0x1

    goto :goto_36

    :cond_5e
    const-string p0, "FAIL to verify Pkg Signature"

    .line 1534
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1517
    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1518
    throw p0

    :cond_68
    :goto_68
    const-string p0, "Invalid arguments"

    .line 1507
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static computeSha256DigestBytes([B)[B
    .registers 2

    :try_start_0
    const-string v0, "SHA256"

    .line 1490
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_6} :catch_e

    .line 1495
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 1496
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    return-object p0

    :catch_e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z
    .registers 5

    .line 468
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 470
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForDual:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2a

    .line 471
    :cond_11
    iget v1, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 472
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForSF:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2a

    .line 473
    :cond_1f
    invoke-virtual {p2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result p2

    if-eqz p2, :cond_2a

    .line 474
    sget-object p2, Lcom/android/server/pm/PersonaServiceHelper;->packagesForPOP:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 476
    :cond_2a
    :goto_2a
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_32

    return v1

    .line 479
    :cond_32
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-ne p0, p1, :cond_3f

    const/4 v1, 0x1

    :cond_3f
    return v1
.end method

.method public static createKnoxContainer(ILcom/android/server/pm/UserManagerService;Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/pm/UserManagerService;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .line 827
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 828
    invoke-virtual {p2, p0, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo p2, "no_outgoing_beam"

    const/4 v0, 0x1

    .line 832
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    const-string/jumbo p2, "no_add_user"

    .line 833
    invoke-virtual {p1, p2, v0, p0}, Lcom/android/server/pm/UserManagerService;->setUserRestriction(Ljava/lang/String;ZI)V

    return-void
.end method

.method public static deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;IILandroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Lcom/android/server/pm/Settings;ZZ)V
    .registers 20

    move-object v4, p0

    move-object v7, p1

    move v2, p2

    move-object v8, p4

    const-string/jumbo v0, "}\n"

    const-string/jumbo v1, "null"

    const-string v3, "START PACKAGE DELETE: observer{"

    const-string v5, "PersonaServiceHelper"

    if-eqz p8, :cond_42

    .line 741
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_22

    .line 742
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 742
    :cond_22
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\npkg{"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\nuser{"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 746
    :cond_42
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_54

    .line 747
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 746
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 747
    :cond_54
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}\npkg{<packageName>}\nuser{"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6a
    const/4 v0, 0x0

    const-string v1, "android.permission.DELETE_PACKAGES"

    .line 752
    invoke-virtual {p4, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 757
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePackageAsUser : uid = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " userId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq v0, v2, :cond_ac

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackage for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p4, v1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ac
    const-string/jumbo v0, "no_uninstall_apps"

    move-object v6, p5

    .line 763
    invoke-virtual {p5, p2, v0}, Lcom/android/server/pm/PackageManagerService;->isUserRestricted(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    if-eqz v7, :cond_bc

    const/4 v0, -0x3

    .line 766
    :try_start_b9
    invoke-interface {p1, p0, v0}, Landroid/content/pm/IPackageDeleteObserver;->packageDeleted(Ljava/lang/String;I)V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b9 .. :try_end_bc} :catch_bc

    :catch_bc
    :cond_bc
    return-void

    :cond_bd
    if-eqz p9, :cond_db

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deletePackageAsUser: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    :cond_db
    new-instance v9, Lcom/android/server/pm/PersonaServiceHelper$4;

    move-object v0, v9

    move-object/from16 v1, p6

    move v2, p2

    move v3, p3

    move-object v4, p0

    move-object v5, p5

    move-object/from16 v6, p7

    move-object v7, p1

    move-object v8, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/pm/PersonaServiceHelper$4;-><init>(Landroid/os/Handler;IILjava/lang/String;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Settings;Landroid/content/pm/IPackageDeleteObserver;Landroid/content/Context;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;
    .registers 1

    .line 552
    :try_start_0
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerSamsungUtils;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_6

    :catch_5
    const/4 p0, 0x0

    :goto_6
    return-object p0
.end method

.method public static getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .registers 1

    .line 951
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_10

    const-string v0, "application_policy"

    .line 953
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 952
    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    .line 955
    :cond_10
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mApplicationPolicyService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method public static getDualDARPolicyService()Ljava/util/Optional;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/samsung/android/knox/ddar/IDualDARPolicy;",
            ">;"
        }
    .end annotation

    .line 945
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mDualDARPolicyService:Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public static getDualDARType(I)I
    .registers 3

    .line 1327
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, -0x1

    return p0

    :cond_8
    const/4 v0, 0x0

    .line 1330
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_14

    if-nez p0, :cond_13

    const/4 v0, 0x2

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    .line 1339
    :cond_14
    :goto_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DualDAR Container Type : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getDualDARUser()I
    .registers 1

    .line 1344
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    const/4 v0, -0x1

    return v0
.end method

.method public static getEdmService()Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    .line 932
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    if-nez v0, :cond_10

    const-string v0, "enterprise_policy"

    .line 934
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 933
    invoke-static {v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    .line 936
    :cond_10
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mEdmService:Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    return-object v0
.end method

.method public static getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 1559
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public static getLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Landroid/util/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/PreferredActivityHelper;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 319
    new-instance p0, Landroid/util/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getPersonaManager()Lcom/android/server/pm/PersonaManagerService;
    .registers 1

    .line 136
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method public static getPlayForWorkProxy(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 14

    .line 1204
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "packageName"

    const-string/jumbo v2, "signature"

    const-string v3, "flags"

    .line 1205
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 1209
    :try_start_12
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v6

    .line 1210
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, p1, :cond_20

    move v6, v8

    goto :goto_21

    :cond_20
    move v6, v7

    :goto_21
    const-string v6, "PlayForWorkProxy"

    .line 1222
    invoke-virtual {v0, v6, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5c

    .line 1223
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_5c

    .line 1224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v5

    move-object v9, v4

    move v6, v7

    :goto_36
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    .line 1225
    invoke-virtual {v4, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1226
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1227
    invoke-virtual {v4, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v6, :cond_58

    move-object v11, v6

    move v6, v4

    move-object v4, v11

    goto :goto_5f

    :cond_58
    move-object v11, v6

    move v6, v4

    move-object v4, v11

    goto :goto_36

    :cond_5c
    move-object v4, v5

    move-object v9, v4

    move v6, v7

    :cond_5f
    :goto_5f
    and-int/lit8 v0, v6, 0x1

    if-eq v0, v8, :cond_64

    return-object v5

    .line 1241
    :cond_64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x8080

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1250
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_7a
    if-ge v7, v1, :cond_a8

    .line 1251
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1252
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1253
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v3, :cond_89

    goto :goto_a5

    .line 1260
    :cond_89
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_8d} :catch_a8

    if-eqz v3, :cond_a5

    .line 1262
    :try_start_8f
    new-instance v3, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v3, p0, v2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    .line 1263
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v2, v4, v9}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z

    move-result v2

    if-eqz v2, :cond_a8

    .line 1264
    invoke-virtual {v3}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a3} :catch_a5

    move-object v5, p0

    goto :goto_a8

    :catch_a5
    :cond_a5
    :goto_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    :catch_a8
    :cond_a8
    :goto_a8
    return-object v5
.end method

.method public static getPreferredInfoForUser(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JILcom/android/server/pm/PreferredActivityHelper;)Landroid/content/pm/ResolveInfo;
    .registers 27

    .line 195
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    .line 198
    :try_start_d
    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_15} :catch_17

    move-object v14, v0

    goto :goto_1c

    :catch_17
    move-exception v0

    .line 200
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v14, v7

    :goto_1c
    if-eqz v14, :cond_4c

    .line 203
    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_4c

    :cond_25
    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    .line 207
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    const/4 v0, 0x0

    :goto_39
    move/from16 v19, v0

    move-object/from16 v8, p6

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-wide/from16 v12, p3

    move/from16 v18, p5

    .line 206
    invoke-virtual/range {v8 .. v19}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0

    :cond_4c
    :goto_4c
    return-object v7
.end method

.method public static getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 1

    .line 140
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_f

    const-string/jumbo v0, "user"

    .line 141
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService;

    sput-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 143
    :cond_f
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public static installStageForKnox(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;ILandroid/os/UserHandle;Landroid/content/Context;Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/PackageManagerService;)Z
    .registers 26

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p8

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installStageForKnox(user:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " installerUid:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "PersonaServiceHelper"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p2, 0x20

    const-string/jumbo v7, "remote exception"

    const/16 v8, -0x6f

    const-string v9, ""

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_5d

    .line 623
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 624
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v12

    if-eqz v12, :cond_5d

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "installStageForKnox INSTALL_FROM_ADB. Block installation."

    .line 625
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5c

    .line 628
    :try_start_53
    invoke-interface {v1, v9, v8, v11, v11}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_5c

    :catch_57
    move-exception v0

    move-object v1, v0

    .line 630
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5c
    :goto_5c
    return v10

    .line 636
    :cond_5d
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_71

    .line 637
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_144

    :cond_71
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-eqz v0, :cond_144

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Installer check name is "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " original uid "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.sec.knox.container.permission.KNOX_SYSTEM_APP_UPGRADE_PERMISSION"

    move-object/from16 v12, p7

    .line 649
    invoke-virtual {v12, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_9e

    move v0, v12

    goto :goto_9f

    :cond_9e
    move v0, v10

    .line 652
    :goto_9f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Check if installer "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " isAllowedToInstall "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_118

    move-object/from16 v0, p0

    .line 663
    :try_start_bf
    invoke-static {v0, v10}, Landroid/content/pm/PackageParser;->parsePackageLite(Ljava/io/File;I)Landroid/content/pm/PackageParser$PackageLite;

    move-result-object v0
    :try_end_c3
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_bf .. :try_end_c3} :catch_c4

    goto :goto_cc

    :catch_c4
    move-exception v0

    move-object v13, v0

    const-string v0, "Check Installer, PackageParserException "

    .line 665
    invoke-static {v6, v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v11

    :goto_cc
    if-eqz v0, :cond_117

    .line 668
    iget-object v13, v0, Landroid/content/pm/PackageParser$PackageLite;->packageName:Ljava/lang/String;

    if-eqz v13, :cond_f1

    .line 672
    :try_start_d2
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v14, 0x0

    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-interface {v0, v13, v14, v15, v10}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_e0} :catch_e1

    goto :goto_e6

    :catch_e1
    move-exception v0

    .line 674
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v0, v11

    :goto_e6
    if-eqz v0, :cond_f1

    .line 676
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v10, 0x800000

    and-int/2addr v0, v10

    if-eqz v0, :cond_f1

    move v0, v12

    goto :goto_f2

    :cond_f1
    const/4 v0, 0x0

    .line 681
    :goto_f2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Installer "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Is allowed to install pkg "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ? "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    :cond_117
    const/4 v0, 0x0

    :cond_118
    :goto_118
    if-nez v0, :cond_142

    .line 687
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v5, v4, v0}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(II)Z

    move-result v0

    if-eqz v0, :cond_131

    const/4 v0, -0x1

    if-eq v2, v0, :cond_142

    .line 690
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {v5, v2, v0, v12}, Lcom/android/server/pm/PackageInstallerService;->isFromApprovedInstaller(IIZ)Z

    move-result v0

    if-nez v0, :cond_142

    :cond_131
    const-string v0, "Block installation either because the calling or the original installer is not approved"

    .line 695
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_141

    .line 699
    :try_start_138
    invoke-interface {v1, v9, v8, v11, v11}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_138 .. :try_end_13b} :catch_13c

    goto :goto_141

    :catch_13c
    move-exception v0

    move-object v1, v0

    .line 701
    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_141
    :goto_141
    return v12

    :cond_142
    const/4 v1, 0x0

    goto :goto_145

    :cond_144
    move v1, v10

    :goto_145
    return v1
.end method

.method public static isCallerApprovedToInstall(Landroid/content/Context;IIZ)Z
    .registers 5

    .line 1039
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isCallerApprovedToInstall(uid:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " userHandle:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    if-nez p3, :cond_41

    .line 1041
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p3

    if-ne p2, p3, :cond_41

    .line 1042
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p3

    if-ne p2, p3, :cond_41

    const-string p2, "caller is system_service process...."

    .line 1043
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_41
    const-string p2, " Knox not supported so don\'t need to block"

    .line 1049
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static isCallerApprovedToUninstall(Landroid/content/Context;II)Z
    .registers 4

    .line 1083
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isCallerApprovedToUnnstall: uid, userId, appid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, " Knox not supported so don\'t need to block"

    .line 1086
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public static isDERestrictionEnforced(I)Z
    .registers 3

    .line 1357
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1369
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isDisallowedAppForKnox(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 3

    .line 530
    iget-object v0, p0, Landroid/content/pm/PackageParser$Package;->mAppMetaData:Landroid/os/Bundle;

    iget-object p0, p0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 588
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_8} :catch_7a

    const/4 v2, 0x1

    const-string v3, "PersonaServiceHelper"

    if-eqz v1, :cond_33

    :try_start_d
    const-string v1, "com.samsung.android.multiuser.disallowed_managed_profile"

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 589
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDisallowedAppForKnox - METADATA_DISALLOWED_MANAGED_PROFILE is defined. "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 591
    :cond_33
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_37} :catch_7a

    if-eqz p0, :cond_79

    :try_start_39
    const-string/jumbo p0, "persist.sys.knox.leave_all_system_apps_enabled"

    .line 593
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_43

    return v0

    .line 596
    :cond_43
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 598
    invoke-interface {p0, p2}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 599
    sget-object p1, Lcom/android/server/pm/PersonaServiceHelper;->DTI_PACKAGES:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_79

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDisallowedAppForKnox - DTI package : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / installer : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_74} :catch_75

    return v2

    :catch_75
    move-exception p0

    .line 605
    :try_start_76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_7a

    :cond_79
    return v0

    :catch_7a
    move-exception p0

    .line 612
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isDisallowedAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 3

    .line 522
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 526
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isDisallowedAppForKnox(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    .line 536
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 537
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0xc0080

    .line 538
    invoke-interface {v1, p0, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_15

    return v0

    .line 540
    :cond_15
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1e

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 546
    :goto_19
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result p0

    return p0

    :catch_1e
    move-exception p0

    .line 543
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isDualDAREnabled()Z
    .registers 3

    .line 1318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isDualDAREnabled result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PersonaServiceHelper"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public static isExternalStorageBlacklisted(ILjava/lang/String;)Z
    .registers 3

    .line 973
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 975
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    .line 976
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageBlacklisted(ILjava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_12

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :catch_12
    move-exception p0

    .line 979
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isExternalStorageWhitelisted(ILjava/lang/String;)Z
    .registers 3

    .line 960
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 962
    :try_start_6
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getApplicationPolicyService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    .line 963
    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationExternalStorageWhitelisted(ILjava/lang/String;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_12

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    return p0

    :catch_12
    move-exception p0

    .line 966
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public static isForKnoxContainerAndNFC(Landroid/content/pm/ResolveInfo;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public static isForKnoxNFC()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isInDisplayFingerSensor(Landroid/content/Context;)Z
    .registers 4

    const/4 v0, 0x0

    .line 1542
    :try_start_1
    invoke-static {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;

    move-result-object p0

    if-eqz p0, :cond_33

    .line 1544
    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;->getSensorPosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/bio/fingerprint/SemFingerprintManager;->getCharacteristics()Lcom/samsung/android/bio/fingerprint/SemFingerprintManager$Characteristics;
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_12} :catch_18

    const/4 p0, 0x2

    if-ne v1, p0, :cond_33

    const/4 p0, 0x1

    move v0, p0

    goto :goto_33

    :catch_18
    move-exception p0

    .line 1549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SecurityException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    :goto_33
    return v0
.end method

.method public static isLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Z
    .registers 18

    .line 269
    new-instance v4, Lcom/android/server/pm/WatchedIntentFilter;

    move-object v0, p4

    invoke-direct {v4, p4}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/PersonaServiceHelper;->isLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Z

    move-result v0

    return v0
.end method

.method public static isLastChosenActivity(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;ILcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Z
    .registers 9

    const/4 p0, 0x0

    return p0
.end method

.method public static isMdfppContainer(I)Z
    .registers 5

    const/4 v0, 0x0

    .line 920
    :try_start_1
    invoke-static {}, Lcom/samsung/android/knox/sdp/SdpUtil;->getInstance()Lcom/samsung/android/knox/sdp/SdpUtil;

    move-result-object v1

    .line 921
    invoke-static {p0}, Lcom/samsung/android/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    .line 920
    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/sdp/SdpUtil;->getEngineInfo(Ljava/lang/String;)Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;

    move-result-object v0

    if-nez v0, :cond_2b

    const-string v1, "PersonaServiceHelper"

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMdfppContainer: SDP is not supported for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catch Lcom/samsung/android/knox/sdp/core/SdpException; {:try_start_1 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 926
    invoke-virtual {p0}, Lcom/samsung/android/knox/sdp/core/SdpException;->printStackTrace()V

    :cond_2b
    :goto_2b
    if-eqz v0, :cond_35

    .line 928
    invoke-virtual {v0}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->isMdfpp()Z

    move-result p0

    if-eqz p0, :cond_35

    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return p0
.end method

.method public static isMyKnoxAdmin(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.agent.global.myknox"

    .line 1184
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "com.sec.enterprise.knox.cloudmdm.smdms.agent.myknox"

    .line 1185
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public static isPackageAllowlistedForDEAccessForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 8

    .line 1433
    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1435
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "system app allowed - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    .line 1439
    :cond_1f
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1446
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_57

    .line 1452
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "dualdar-config-datalock-whitelistpackages"

    .line 1453
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1455
    array-length v3, v0

    :goto_46
    if-ge v1, v3, :cond_52

    aget-object v4, v0, v1

    .line 1456
    check-cast v4, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 1458
    :cond_52
    invoke-static {p0, p2, p1, v2}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0

    :cond_57
    return v1
.end method

.method public static isPackageAllowlistedForDualDAR(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 11

    .line 1389
    invoke-static {p2, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "PersonaServiceHelper"

    const/4 v2, 0x1

    if-eqz v0, :cond_1f

    .line 1391
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "system app allowed - "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1395
    :cond_1f
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARPolicyService()Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda2;-><init>(I)V

    .line 1402
    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const/4 v3, 0x0

    if-eqz v0, :cond_8c

    .line 1409
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "dualdar-config-datalock-whitelistpackages"

    .line 1410
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 1411
    array-length v5, v0

    move v6, v3

    :goto_47
    if-ge v6, v5, :cond_53

    aget-object v7, v0, v6

    .line 1412
    check-cast v7, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_47

    :cond_53
    const/4 v0, 0x0

    .line 1416
    :try_start_54
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x80

    invoke-interface {v5, p1, v6, v7, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception v5

    .line 1419
    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_63
    if-eqz v0, :cond_8c

    .line 1422
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isDirectBootAware()Z

    move-result v5

    if-nez v5, :cond_71

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPartiallyDirectBootAware()Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 1423
    :cond_71
    invoke-static {p0, p2, p1, v4}, Lcom/android/server/pm/PersonaServiceHelper;->verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8c

    .line 1426
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkPackageStartable direct boot aware and whitelisted allowed: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    :cond_8c
    move v2, v3

    :goto_8d
    return v2
.end method

.method public static isPackageEnabledInAnyPersona(Ljava/lang/String;Lcom/android/server/pm/Settings;)Z
    .registers 7

    .line 713
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, p0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    const/4 p1, 0x0

    if-nez p0, :cond_c

    return p1

    .line 717
    :cond_c
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " listOfPersonas :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PersonaServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 720
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 721
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verifying pkg settings for persona :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v1

    .line 723
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isInstalled for this persona :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2e

    move p1, v1

    .line 730
    :cond_75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " Final result of the pkg from all personas:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method public static isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 493
    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_33

    const-string v1, "com.samsung.android.multiuser.required_managed_profile"

    invoke-static {p0, v1}, Lcom/android/server/pm/PackageManagerSamsungUtils;->isMetaDataInBundle(Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    const-string p0, "PersonaServiceHelper"

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRequiredAppForKnox - METADATA_REQUIRED_MANAGED_PROFILE is defined. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_31} :catch_34

    const/4 p0, 0x1

    return p0

    :cond_33
    return v0

    :catch_34
    move-exception p0

    .line 500
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z
    .registers 3

    .line 483
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->getAppMetaData(Lcom/android/server/pm/PackageSetting;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 487
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isRequiredAppForKnox(Ljava/lang/String;I)Z
    .registers 6

    const/4 v0, 0x0

    .line 508
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 509
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/32 v2, 0xc0080

    .line 510
    invoke-interface {v1, p0, v2, v3, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_15

    return v0

    .line 512
    :cond_15
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_1e

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 518
    :goto_19
    invoke-static {v0, p1, p0}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Landroid/os/Bundle;ILjava/lang/String;)Z

    move-result p0

    return p0

    :catch_1e
    move-exception p0

    .line 515
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isRunningPackageName(Ljava/util/HashSet;Landroid/content/Context;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const-string v0, "activity"

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    .line 149
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return v0

    .line 154
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 155
    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 157
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 158
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 159
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v3, 0x64

    .line 160
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-gt v3, v4, :cond_24

    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 161
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0xc7

    if-gt v3, v4, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_50
    return v0
.end method

.method public static isSpfKnoxSupported()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApp(ILjava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 1374
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const-wide/16 v2, 0x80

    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-nez v1, :cond_e

    return v0

    .line 1380
    :cond_e
    iget p0, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_16

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0

    :catch_16
    move-exception v1

    .line 1382
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to check is System App for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in user: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z
    .registers 9

    const-string v0, "PersonaServiceHelper"

    .line 838
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 839
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 841
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isUsbHostModeEnabledForContainer: userId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    new-instance v5, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v5, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 843
    invoke-virtual {v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v5

    .line 844
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v6

    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v5, v1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-virtual {v6, p0, v7}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 846
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    if-eqz p0, :cond_79

    .line 848
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isUsbAccessEnabled()Z

    move-result v4

    if-nez v4, :cond_79

    .line 850
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isUsbHostModeEnabledForContainer: Usb Host Mode sdcard is disabled for User-"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Ignoring USB device access request..."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5e} :catch_61
    .catchall {:try_start_b .. :try_end_5e} :catchall_5f

    goto :goto_79

    :catchall_5f
    move-exception p0

    goto :goto_7d

    :catch_61
    move-exception p0

    .line 855
    :try_start_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in isUsbHostModeEnabledForContainer:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_79
    .catchall {:try_start_62 .. :try_end_79} :catchall_5f

    .line 858
    :cond_79
    :goto_79
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :goto_7d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    throw p0
.end method

.method public static synthetic lambda$isDERestrictionEnforced$0(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Ljava/lang/Boolean;
    .registers 4

    .line 1360
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_2b

    :catch_e
    move-exception p0

    .line 1362
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isDERestrictionEnforced exception "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_2b
    if-eqz p0, :cond_39

    const/4 p1, 0x1

    const-string v0, "dualdar-config-de-restriction"

    .line 1366
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 1368
    :cond_39
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static synthetic lambda$isPackageAllowlistedForDEAccessForDualDAR$3(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 4

    .line 1441
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 1443
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$isPackageAllowlistedForDEAccessForDualDAR$4(I)Landroid/os/Bundle;
    .registers 3

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaServiceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$isPackageAllowlistedForDualDAR$1(ILcom/samsung/android/knox/ddar/IDualDARPolicy;)Landroid/os/Bundle;
    .registers 4

    .line 1397
    :try_start_0
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {p1, v0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 1399
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic lambda$isPackageAllowlistedForDualDAR$2(I)Landroid/os/Bundle;
    .registers 3

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkPackageStartable failed to acquire dualDARPolicy for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PersonaServiceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static setLastChosenActivityForKnox(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLcom/android/server/pm/WatchedIntentFilter;ILandroid/content/ComponentName;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PreferredActivityHelper;)Z
    .registers 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "J",
            "Lcom/android/server/pm/WatchedIntentFilter;",
            "I",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/PreferredActivityHelper;",
            ")Z"
        }
    .end annotation

    .line 226
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "PersonaServiceHelper"

    if-ne v0, v1, :cond_110

    const/4 v3, 0x0

    move-object/from16 v0, p8

    .line 227
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 228
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/UserManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_fa

    .line 230
    iget v4, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/16 v0, -0x2710

    if-ne v4, v0, :cond_3c

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "profile group id is not set for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 237
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setLastChosenActivityForKnox parent id "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 239
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5d
    :goto_5d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 240
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_73

    iget v6, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-eq v6, v4, :cond_77

    :cond_73
    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v6, v4, :cond_5d

    .line 241
    :cond_77
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setLastChosenActivityForKnox remove pref for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :try_start_8e
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v12

    iget v6, v0, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-wide/from16 v15, p3

    move/from16 v17, v6

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v6

    .line 247
    invoke-virtual {v6}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    .line 248
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 249
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_bb

    move/from16 v23, v1

    goto :goto_bd

    :cond_bb
    move/from16 v23, v3

    :goto_bd
    move-object/from16 v12, p10

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-wide/from16 v16, p3

    move/from16 v22, v0

    .line 248
    invoke-virtual/range {v12 .. v23}, Lcom/android/server/pm/PreferredActivityHelper;->findPreferredActivityNotLocked(Lcom/android/server/pm/Computer;Landroid/content/Intent;Ljava/lang/String;JLjava/util/List;ZZZIZ)Landroid/content/pm/ResolveInfo;
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_8e .. :try_end_cc} :catch_cd

    goto :goto_5d

    :catch_cd
    move-exception v0

    .line 251
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_5d

    .line 255
    :cond_d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastChosenActivityForKnox setting preferred activity for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-string v12, "Setting last chosen"

    move-object/from16 v4, p10

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    .line 256
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/pm/PreferredActivityHelper;->addPreferredActivity(Lcom/android/server/pm/Computer;Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;ZILjava/lang/String;Z)V

    goto :goto_12b

    .line 258
    :cond_fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setLastChosenActivityForKnox invalid user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12b

    :cond_110
    move-object/from16 v0, p8

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLastChosenActivityForKnox invalid size for user list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_12b
    return v1
.end method

.method public static shouldBlockBluetooth(Landroid/content/Context;I)Z
    .registers 6

    const-string v0, "PersonaServiceHelper"

    const/4 v1, 0x0

    if-eqz p1, :cond_4f

    .line 873
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4f

    .line 877
    :cond_c
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    const/4 v3, 0x1

    .line 879
    :try_start_11
    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_36

    .line 882
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    .line 883
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result p0
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_11 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception p0

    .line 886
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isKnoxBluetoothEnabled(): SecurityException: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    move p0, v3

    .line 888
    :goto_37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BMS::isKnoxBluetoothEnabled = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4e

    return v1

    :cond_4e
    return v3

    :cond_4f
    :goto_4f
    return v1
.end method

.method public static shouldBlockBluetoothHeadset(Landroid/content/Context;Ljava/lang/String;II)Z
    .registers 5

    .line 987
    sget-object v0, Lcom/android/server/pm/PersonaServiceHelper;->ALLOWED_BLUETOOTH_TARGET:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    .line 988
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    if-nez p3, :cond_3c

    .line 990
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object p1

    .line 992
    :try_start_15
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    if-eqz p0, :cond_3c

    .line 994
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    .line 995
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->isBluetoothEnabled()Z

    move-result p0
    :try_end_23
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_23} :catch_24

    goto :goto_3d

    :catch_24
    move-exception p0

    .line 998
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "retrieveServiceLocked(): SecurityException: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PersonaServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3c
    move p0, v0

    :goto_3d
    if-eqz p0, :cond_40

    return v0

    :cond_40
    const/4 p0, 0x1

    return p0
.end method

.method public static shouldBlockUsbHostMode(Landroid/content/Context;)Z
    .registers 2

    .line 864
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 865
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 866
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->isUsbHostModeEnabledForContainer(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldBlockUserStart(Landroid/content/Context;I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static trimPersonaFromInstallation(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;ILandroid/os/UserHandle;Lcom/android/server/pm/parsing/pkg/ParsedPackage;)V
    .registers 15

    and-int/lit8 v0, p2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_f

    move p2, v2

    goto :goto_10

    :cond_f
    move p2, v1

    :goto_10
    const-string v3, "PersonaServiceHelper"

    if-nez p0, :cond_1b

    const-string/jumbo p0, "package setting is null"

    .line 333
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 337
    :cond_1b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x0

    .line 340
    :try_start_20
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/server/pm/UserManagerService;->getUsers(Z)Ljava/util/List;

    move-result-object v6
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_20 .. :try_end_28} :catch_2f
    .catchall {:try_start_20 .. :try_end_28} :catchall_2c

    .line 344
    :goto_28
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    :catchall_2c
    move-exception p0

    goto/16 :goto_23d

    :catch_2f
    move-exception v7

    :try_start_30
    const-string/jumbo v8, "user manager exception "

    .line 342
    invoke-static {v3, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2c

    goto :goto_28

    :goto_37
    if-eqz v6, :cond_23c

    .line 349
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3d
    :goto_3d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 350
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-nez v6, :cond_5d

    .line 351
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v6

    if-nez v6, :cond_5d

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    .line 352
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_1d7

    .line 355
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2, v5}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v6

    const-string v7, ""

    if-eqz v6, :cond_90

    .line 356
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 358
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is installed in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    goto :goto_91

    :cond_90
    move v6, v1

    .line 361
    :goto_91
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v1, v5}, Lcom/android/server/pm/PersonaServiceHelper;->containsPackage(Ljava/lang/String;ZLandroid/content/pm/UserInfo;)Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 362
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 364
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is uninstalled in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    :cond_c1
    if-eqz p4, :cond_102

    .line 367
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_102

    .line 368
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isOverlay()Z

    move-result v8

    if-eqz v8, :cond_102

    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->isOverlayIsStatic()Z

    move-result v8

    if-eqz v8, :cond_102

    .line 369
    invoke-interface {p4}, Lcom/android/server/pm/pkg/parsing/ParsingPackageInternal;->getOverlayTarget()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_102

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is (system overlay package) skip trim in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v2

    :cond_102
    if-eqz v6, :cond_106

    goto/16 :goto_3d

    :cond_106
    if-eqz p3, :cond_169

    .line 378
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_169

    if-eqz p1, :cond_138

    .line 379
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-ne v6, v2, :cond_138

    .line 381
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "if already installed, then don\'t trim it\n set true for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_1d7

    .line 386
    :cond_138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in trim for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " setting false "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 386
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1d7

    :cond_169
    if-eqz v0, :cond_189

    if-nez p3, :cond_189

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "New installation & target user = null or all\n set false for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1d7

    :cond_189
    if-eqz p2, :cond_1d7

    if-eqz p3, :cond_195

    .line 395
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 396
    invoke-virtual {v6, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d7

    :cond_195
    if-nez p1, :cond_1b3

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "If no info about old packages trim it\n set false for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_1d7

    .line 402
    :cond_1b3
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-eq v6, v2, :cond_1d7

    .line 404
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "if already not installed, then trim it\n set false for persona "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 412
    :cond_1d7
    :goto_1d7
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-nez v6, :cond_1f4

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_1f4

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v6}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    if-eqz v6, :cond_1f4

    .line 413
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 416
    :cond_1f4
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-nez v6, :cond_213

    if-eqz p1, :cond_213

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_213

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v6}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    if-eqz v6, :cond_213

    .line 417
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v6}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    :cond_213
    if-eqz p1, :cond_3d

    .line 420
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v6}, Lcom/android/server/pm/PackageSetting;->getInstalled(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_22d

    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_3d

    :cond_22d
    iget v6, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v6}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Lcom/android/server/pm/PackageSetting;I)Z

    move-result v6

    if-eqz v6, :cond_3d

    .line 421
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v5}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto/16 :goto_3d

    :cond_23c
    return-void

    .line 344
    :goto_23d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 345
    throw p0
.end method

.method public static validatePfWProxySig(Lcom/samsung/android/knox/AppIdentity;I)Z
    .registers 7

    .line 1282
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1286
    :try_start_4
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x40

    invoke-interface {v0, v1, v2, v3, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_14

    :catch_f
    move-exception p1

    .line 1288
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_14
    const/4 v0, 0x0

    if-eqz p1, :cond_3d

    .line 1291
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p1, :cond_3d

    .line 1293
    array-length v1, p1

    move v2, v0

    :goto_1d
    if-ge v2, v1, :cond_3d

    aget-object v3, p1, v2

    if-eqz v3, :cond_3a

    .line 1295
    invoke-virtual {p0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string p0, "PersonaServiceHelper"

    const-string p1, "PfW validatePfWProxySig() ** SIG MATCH **"

    .line 1296
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :cond_3d
    return v0
.end method

.method public static verifyPackageForDualDAR(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)Z"
        }
    .end annotation

    .line 1464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "verifyPackageForDualDAR package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PersonaServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1b
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/AppIdentity;

    .line 1467
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-nez v0, :cond_4b

    .line 1474
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Package not whitelisted: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1478
    :cond_4b
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_68

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_68

    .line 1480
    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3, p1}, Lcom/android/server/pm/PersonaServiceHelper;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_68
    const/4 p0, 0x1

    return p0
.end method
