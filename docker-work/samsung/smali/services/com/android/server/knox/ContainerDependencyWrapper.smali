.class public Lcom/android/server/knox/ContainerDependencyWrapper;
.super Ljava/lang/Object;
.source "ContainerDependencyWrapper.java"


# static fields
.field public static final DEBUG:Z

.field public static final DELETE_APP_SEPARATION_ONE_USER_APP:I = 0x10000000

.field public static final DO_PWD_CHANGE_NOTIFICATION_ID:I = 0x457

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field public static final EXTRA_DO_PO_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.EXTRA_DO_PO_PACKAGE_NAME"

.field public static final HIDE_SECURE_FOLDER_FLAG:Ljava/lang/String; = "hide_secure_folder_flag"

.field public static final KNOX_FINGER_PRINT_PLUS:Ljava/lang/String; = "knox_finger_print_plus"

.field public static final KNOX_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "knox_screen_off_timeout"

.field public static final TAG:Ljava/lang/String; = "ContainerDependencyWrapper"

.field public static context:Landroid/content/Context;

.field public static mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mUserManager:Landroid/os/UserManager;

.field public static sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;


# instance fields
.field public mDarService:Lcom/android/server/knox/dar/DarManagerService;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 80
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/knox/ContainerDependencyWrapper;->DEBUG:Z

    const/4 v0, 0x0

    .line 164
    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 471
    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDarService:Lcom/android/server/knox/dar/DarManagerService;

    .line 92
    sput-object p1, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    return-void
.end method

.method public static addAppPackageNameToAllowList(Landroid/content/Context;ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ContainerDependencyWrapper"

    .line 174
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 175
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 176
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    :try_start_10
    const-string p0, "application_policy"

    .line 179
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 178
    invoke-static {p0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p0

    if-nez p0, :cond_1d

    return-void

    .line 183
    :cond_1d
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add package to Allowlist : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-interface {p0, v1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_44} :catch_45

    goto :goto_21

    :catch_45
    move-exception p0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return-void
.end method

.method public static applyDefaultPolicyForAppSeparation(Landroid/content/Context;I)V
    .registers 6

    const-string v0, "ContainerDependencyWrapper"

    .line 624
    :try_start_2
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "applyDefaultPolicyForAppSeparation"

    .line 625
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_18
    const-string v1, "applyDefaultPolicyForAppSeparation failed"

    .line 627
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception v1

    .line 631
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    :goto_22
    :try_start_22
    invoke-static {p0, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result v1

    .line 636
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 637
    invoke-static {v1, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 638
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getContainerConfigurationPolicy()Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;

    move-result-object p0

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/knox/container/ContainerConfigurationPolicy;->enableNFC(ZLandroid/os/Bundle;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3b} :catch_3c

    goto :goto_51

    :catch_3c
    move-exception p0

    .line 641
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception applyDefaultPolicyForAppSeparation"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_51
    return-void
.end method

.method public static applyDefaultPolicyForNewPO(Landroid/content/Context;Landroid/content/pm/UserInfo;)Z
    .registers 9

    const-string v0, "ContainerDependencyWrapper"

    const-string v1, "applyDefaultPolicyForNewPO"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v1

    .line 483
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v2

    const/4 v3, 0x0

    const-string/jumbo v4, "restriction_property_screencapture_save_to_owner"

    const/4 v5, 0x1

    if-eqz v2, :cond_24

    const-string v2, "applyDefaultPolicyForNewPO : set screencapture path for premium container"

    .line 484
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_31

    :cond_24
    const-string v2, "applyDefaultPolicyForNewPO : set screencapture path for normal container"

    .line 487
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getProfilePolicy()Lcom/samsung/android/knox/profile/ProfilePolicy;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/knox/profile/ProfilePolicy;->setRestriction(Ljava/lang/String;Z)Z

    move-result v0

    :goto_31
    and-int/2addr v0, v5

    .line 492
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 493
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v2}, Lcom/android/server/knox/ContainerDependencyWrapper;->getAdminComponentNameFromEdm(Landroid/content/Context;I)Landroid/content/ComponentName;

    move-result-object v2

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v6, "no_debugging_features"

    invoke-virtual {v1, v2, v6, v4}, Landroid/app/admin/DevicePolicyManager;->addUserRestrictionForKnox(Landroid/content/ComponentName;Ljava/lang/String;I)V

    :cond_4a
    and-int/2addr v0, v5

    .line 501
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v1

    if-eqz v1, :cond_54

    :goto_51
    and-int/lit8 v0, v0, 0x1

    goto :goto_74

    .line 506
    :cond_54
    :try_start_54
    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, v1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result v1

    .line 507
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 508
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, p1}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 509
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/samsung/android/knox/container/RCPPolicy;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/container/RCPPolicy;->allowMoveFilesToContainer(Z)Z
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6f} :catch_70

    goto :goto_51

    :catch_70
    move-exception p0

    .line 511
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_74
    return v0
.end method

.method public static checkCallerPermissionFor(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    .line 104
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Security Exception Occurred while pid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] with uid["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] trying to access methodName ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "] in ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] service"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 108
    throw p0
.end method

.method public static clearAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z
    .registers 3

    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->clearAttributes(II)Z

    move-result p0

    return p0
.end method

.method public static clearStorageForUser(Lcom/android/internal/widget/LockSettingsInternal;I)V
    .registers 2

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockSettingsInternal;->clearStorageForUser(I)V

    return-void
.end method

.method public static convertToGreyIcon([B)[B
    .registers 1

    return-object p0
.end method

.method public static deactivateKnoxCore(Landroid/content/Context;I)Z
    .registers 6

    const-string v0, "com.samsung.android.knox.containercore"

    .line 607
    :try_start_2
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    .line 608
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.knox.containercore.KnoxAdminCommandReceiver"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo()Lcom/samsung/android/knox/ContextInfo;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p0, v2, v3, v0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 610
    invoke-interface {p0, v1, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdminFromDpm(Landroid/content/ComponentName;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_19

    return v3

    :catch_19
    move-exception p0

    .line 612
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static deactivateSecureFolderAdmin(Landroid/content/Context;Landroid/content/ComponentName;)V
    .registers 5

    .line 739
    :try_start_0
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    if-eqz p0, :cond_18

    .line 741
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo()Lcom/samsung/android/knox/ContextInfo;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "com.samsung.knox.securefolder"

    invoke-interface {p0, v0, v1, v2}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->setAdminRemovable(Lcom/samsung/android/knox/ContextInfo;ZLjava/lang/String;)Z

    .line 742
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->removeActiveAdmin(Landroid/content/ComponentName;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p0

    .line 746
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_18
    :goto_18
    return-void
.end method

.method public static deletePackageAsUserAndPersona(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    .registers 5

    .line 317
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->deletePackageAsUserAndPersona(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public static getAdminComponentNameFromEdm(Landroid/content/Context;I)Landroid/content/ComponentName;
    .registers 3

    .line 267
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 269
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getComponentNameForUid(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static getAppSeparationConfig()Landroid/os/Bundle;
    .registers 1

    .line 619
    invoke-static {}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getAppSeparationConfig()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getAttributes(Lcom/android/server/pm/UserManagerInternal;I)I
    .registers 2

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerInternal;->getAttributes(I)I

    move-result p0

    return p0
.end method

.method public static getContactsPkgName()Ljava/lang/String;
    .registers 2

    .line 289
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContextInfo()Lcom/samsung/android/knox/ContextInfo;
    .registers 1

    .line 518
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0}, Lcom/samsung/android/knox/ContextInfo;-><init>()V

    return-object v0
.end method

.method public static getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;
    .registers 3

    .line 522
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    return-object v0
.end method

.method public static getCustomResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 751
    invoke-static {p0, p1}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getCustomResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDevicePolicyManager(Landroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .registers 2

    .line 473
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_e

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    sput-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 474
    :cond_e
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public static getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 1

    .line 135
    invoke-static {p0}, Lcom/android/server/enterprise/dualdar/DualDARStorageHelper;->getDualDARProfile(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static getDualDARType(I)I
    .registers 1

    .line 161
    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result p0

    return p0
.end method

.method public static getECName(I)Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;
    .registers 1

    const-string p0, "enterprise_policy"

    .line 723
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public static getEdmStorageProvider(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 167
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_b

    .line 168
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 170
    :cond_b
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/knox/ContainerDependencyWrapper;
    .registers 2

    .line 96
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    if-nez v0, :cond_b

    .line 97
    new-instance v0, Lcom/android/server/knox/ContainerDependencyWrapper;

    invoke-direct {v0, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    .line 100
    :cond_b
    sget-object p0, Lcom/android/server/knox/ContainerDependencyWrapper;->sInstance:Lcom/android/server/knox/ContainerDependencyWrapper;

    return-object p0
.end method

.method public static getKPUPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 591
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 594
    :try_start_6
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    move-exception p0

    .line 598
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "false"

    return-object p0
.end method

.method public static getOwnerUidFromEdm(Landroid/content/Context;I)I
    .registers 2

    .line 273
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmStorageProvider(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    return p0
.end method

.method public static getSecProductFeature_SEC_PRODUCT_FEATURE_KNOX_CONFIG_SECURE_FOLDER_VERSION()Ljava/lang/String;
    .registers 1

    const-string v0, "1"

    return-object v0
.end method

.method public static getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 669
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 670
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    sput-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    .line 672
    :cond_11
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method public static handlePwdChangeNotificationForDeviceOwner(Landroid/content/Context;I)V
    .registers 7

    .line 389
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 395
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    const/high16 v1, 0x4c000000    # 3.3554432E7f

    .line 397
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const v0, 0x104045e

    .line 400
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x104045d

    .line 401
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->DEVICE_ADMIN:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10805a4

    .line 404
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    .line 405
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 406
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 407
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x106001c

    .line 408
    invoke-virtual {p0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 409
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 413
    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 414
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 415
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 416
    iget v0, p1, Landroid/app/Notification;->semFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/app/Notification;->semFlags:I

    const-string/jumbo v0, "notification"

    .line 418
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v0, 0x457

    .line 419
    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static installExistingPackageForPersona(Lcom/android/server/pm/PackageManagerService;ILjava/lang/String;)I
    .registers 3

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isDisallowedAppForKnox(Ljava/lang/String;I)Z
    .registers 2

    .line 368
    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isDisallowedAppForKnox(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isDualDARIntentProvision(Landroid/content/Context;)Z
    .registers 3

    .line 152
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDCache;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "IS_DUAL_DAR_INTENT_PROVISIONING"

    .line 153
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method public static isDualDARTrialPeriod(Landroid/content/Context;)Z
    .registers 3

    .line 143
    invoke-static {p0}, Lcom/android/server/knox/dar/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/dar/ddar/DDCache;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "IS_DUAL_DAR_TRIAL_PERIOD"

    .line 144
    invoke-virtual {p0, v0, v1}, Lcom/android/server/knox/dar/ddar/DDCache;->get(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    const-string v1, "TRUE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    return v0
.end method

.method public static isDualDarDO(I)Z
    .registers 1

    .line 131
    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p0

    return p0
.end method

.method public static isExternalStorageEnabled(I)Z
    .registers 4

    const-string/jumbo v0, "mum_container_policy"

    .line 755
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/container/IKnoxContainerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IKnoxContainerManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_16

    const-string p0, "ContainerDependencyWrapper"

    const-string v0, "ContainerPolicy Service is not yet ready!!!"

    .line 757
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 761
    :cond_16
    :try_start_16
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/container/IKnoxContainerManager;->isExternalStorageEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result p0
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_22} :catch_23

    return p0

    :catch_23
    move-exception p0

    .line 763
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public static isInEmergencyMode(Landroid/content/Context;)Z
    .registers 3

    .line 385
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "emergency_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_f

    move v1, v0

    :cond_f
    return v1
.end method

.method public static isKnoxProfileActivePasswordSufficientForParent(Landroid/os/UserManager;I)Z
    .registers 7

    .line 526
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_e7

    .line 528
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_e7

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_e7

    .line 531
    :cond_15
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_e7

    .line 532
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    if-eqz p0, :cond_21

    goto/16 :goto_e7

    :cond_21
    const-string/jumbo p0, "password_policy"

    .line 535
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object p0

    if-nez p0, :cond_2f

    return v1

    .line 540
    :cond_2f
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo()Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 541
    sget-boolean v0, Lcom/android/server/knox/ContainerDependencyWrapper;->DEBUG:Z

    const/4 v2, 0x0

    const-string v3, "ContainerDependencyWrapper"

    if-eqz v0, :cond_ac

    .line 543
    :try_start_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isKnoxProfileActivePasswordSufficientForParent getForbiddenStrings = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " getMaximumCharacterOccurences = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getMaximumCharacterSequenceLength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getMaximumNumericSequenceLength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getMinimumCharacterChangeLength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getRequiredPwdPatternRestrictions = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isMultifactorAuthenticationEnabled = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " getPasswordHistoryLength = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 543
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a7
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_a7} :catch_a8

    goto :goto_ac

    :catch_a8
    move-exception v0

    .line 553
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 557
    :cond_ac
    :goto_ac
    :try_start_ac
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getForbiddenStrings(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_dc

    .line 558
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterOccurences(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_dc

    .line 559
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumCharacterSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_dc

    .line 560
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMaximumNumericSequenceLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_dc

    .line 561
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getMinimumCharacterChangeLength(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0

    if-nez v0, :cond_dc

    .line 562
    invoke-interface {p0, p1, v1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getRequiredPwdPatternRestrictions(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_dc

    .line 563
    invoke-interface {p0, p1}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isMultifactorAuthenticationEnabled(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 564
    invoke-interface {p0, p1, v2}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->getPasswordHistoryLength(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)I

    move-result p0

    if-eqz p0, :cond_e7

    :cond_dc
    const-string p0, "Not sufficient for knox profile active password for parent"

    .line 565
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e1
    .catch Landroid/os/RemoteException; {:try_start_ac .. :try_end_e1} :catch_e3

    const/4 p0, 0x0

    return p0

    :catch_e3
    move-exception p0

    .line 569
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_e7
    :goto_e7
    return v1
.end method

.method public static isKnoxWindowExist(III)Z
    .registers 10

    const-string v0, "activity_task"

    .line 329
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 330
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    move v3, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/PersonaActivityHelper;->isKnoxWindowVisibleLocked(ZIZII)Z

    move-result p0

    return p0
.end method

.method public static isPackageInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Z
    .registers 2

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->isPackageInstalled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPasswordSufficientAfterKnoxProfileUnification(I)Z
    .registers 5

    .line 676
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_dd

    .line 677
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_dd

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPremiumContainer()Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_dd

    .line 680
    :cond_19
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 681
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_29

    goto/16 :goto_dd

    .line 685
    :cond_29
    :try_start_29
    sget-object v0, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getOwnerUidFromEdm(Landroid/content/Context;I)I

    move-result v0

    .line 686
    invoke-static {}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getInstance()Lcom/samsung/android/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 687
    sget-object v3, Lcom/android/server/knox/ContainerDependencyWrapper;->context:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getContextInfo(II)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Lcom/samsung/android/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/container/KnoxContainerManager;

    move-result-object p0

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/knox/container/KnoxContainerManager;->getPasswordPolicy()Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;

    move-result-object p0

    .line 690
    sget-boolean v0, Lcom/android/server/knox/ContainerDependencyWrapper;->DEBUG:Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_43} :catch_d9

    const-string v2, "ContainerDependencyWrapper"

    if-eqz v0, :cond_a8

    .line 691
    :try_start_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPasswordSufficientAfterKnoxProfileUnification getForbiddenStrings = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " getMaximumCharacterOccurences = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getMaximumCharacterSequenceLength = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getMaximumNumericSequenceLength = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getMinimumCharacterChangeLength = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " getRequiredPwdPatternRestrictions = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isMultifactorAuthenticationEnabled = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_a8
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_d2

    .line 701
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v0

    if-nez v0, :cond_d2

    .line 702
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumCharacterSequenceLength()I

    move-result v0

    if-nez v0, :cond_d2

    .line 703
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v0

    if-nez v0, :cond_d2

    .line 704
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getMinimumCharacterChangeLength()I

    move-result v0

    if-nez v0, :cond_d2

    .line 705
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d2

    .line 706
    invoke-virtual {p0}, Lcom/samsung/android/knox/devicesecurity/PasswordPolicy;->isMultifactorAuthenticationEnabled()Z

    move-result p0

    if-eqz p0, :cond_dd

    :cond_d2
    const-string p0, "Not sufficient for current parent password"

    .line 707
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_d7} :catch_d9

    const/4 p0, 0x0

    return p0

    :catch_d9
    move-exception p0

    .line 712
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_dd
    :goto_dd
    return v1
.end method

.method public static isPwdChangeRequested(I)Z
    .registers 2

    :try_start_0
    const-string/jumbo v0, "password_policy"

    .line 770
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 771
    invoke-interface {v0, p0}, Lcom/samsung/android/knox/devicesecurity/IPasswordPolicy;->isChangeRequestedAsUser(I)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_15

    if-lez p0, :cond_19

    const/4 p0, 0x1

    return p0

    :catch_15
    move-exception p0

    .line 776
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method public static isRequiredAppForKnox(Ljava/lang/String;I)Z
    .registers 2

    .line 364
    invoke-static {p0, p1}, Lcom/android/server/pm/PersonaServiceHelper;->isRequiredAppForKnox(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static isSecureFolderAdminActive(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .registers 3

    .line 727
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 729
    :try_start_6
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmService(Landroid/content/Context;)Lcom/samsung/android/knox/IEnterpriseDeviceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/knox/IEnterpriseDeviceManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return p0

    :catch_f
    move-exception p0

    .line 731
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public static isSecureFolderPkgAvailable()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportPrivateMode()Z
    .registers 3

    .line 281
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportPrivateMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 423
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    const-string/jumbo v1, "tablet"

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method public static notifyWorkTaskStackChanged()V
    .registers 1

    const-string v0, "activity_task"

    .line 334
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService;

    .line 335
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPersonaActivityHelper()Lcom/android/server/wm/PersonaActivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/PersonaActivityHelper;->notifyTaskStackChanged()V

    return-void
.end method

.method public static revokeSUWAgreements(Landroid/os/UserManager;Landroid/content/Context;)V
    .registers 13

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_225

    .line 430
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_b
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_225

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 431
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_2c

    :cond_26
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 432
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "samsung_errorlog_agree"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 433
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "marketing_info_agree"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1. errorLogAgree = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ContainerDependencyWrapper"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1. marketingInfoAgree = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_71

    if-nez v3, :cond_71

    return-void

    :cond_71
    const v5, 0x104044a

    const v7, 0x104071e

    const-string v8, "\n - "

    if-eqz v0, :cond_11b

    if-eqz v3, :cond_11b

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 441
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2. errorLogAgree = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2. marketingInfoAgree = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x1040bc2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21c

    .line 447
    :cond_f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x1040bc1

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21c

    :cond_11b
    const v9, 0x1040bc0

    const v10, 0x1040bbf

    if-eqz v0, :cond_1a2

    if-nez v3, :cond_1a2

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "3. errorLogAgree = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3. marketingInfoAgree = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_186

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21c

    .line 455
    :cond_186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_21c

    .line 457
    :cond_1a2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "4. errorLogAgree = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "4. marketingInfoAgree = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Lcom/android/server/knox/ContainerDependencyWrapper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_202

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21c

    .line 463
    :cond_202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 465
    :goto_21c
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    :cond_225
    return-void
.end method

.method public static sendRCPPolicyChangedBroadcast(I)V
    .registers 3

    :try_start_0
    const-string/jumbo v0, "mum_container_rcp_policy"

    .line 580
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    if-eqz v0, :cond_2a

    .line 582
    invoke-virtual {v0, p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->sendRCPPolicyChangedBroadcast(I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ContainerDependencyWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    :goto_2a
    return-void
.end method

.method public static setApplicationBlackList(Landroid/content/Context;Ljava/util/List;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "Exception: "

    const-string v1, "ContainerDependencyWrapper"

    .line 196
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 198
    invoke-static {p0}, Lcom/android/server/knox/ContainerDependencyWrapper;->getEdmStorageProvider(Landroid/content/Context;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result p0

    .line 200
    new-instance v3, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v3, p0, p2}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    const/4 p0, 0x0

    :try_start_17
    const-string p2, "application_policy"

    .line 204
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 203
    invoke-static {p2}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object p2
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_21} :catch_2b

    if-nez p2, :cond_24

    return-void

    .line 208
    :cond_24
    :try_start_24
    invoke-interface {p2, v3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object p0
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_28} :catch_29

    goto :goto_43

    :catch_29
    move-exception v4

    goto :goto_2d

    :catch_2b
    move-exception v4

    move-object p2, p0

    .line 210
    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_78

    move v6, v4

    .line 213
    :goto_48
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_78

    move v7, v4

    .line 214
    :goto_4f
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v8, v8, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_75

    .line 215
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v8, v8, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 216
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4f

    :cond_75
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    :cond_78
    const/4 p0, 0x2

    const-string v6, "com.android.vending"

    const-string v7, "com.sec.android.app.samsungapps"

    .line 220
    filled-new-array {v6, v7}, [Ljava/lang/String;

    move-result-object v6

    move v7, v4

    .line 224
    :goto_82
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, -0x1

    if-ge v7, v8, :cond_c7

    move v8, v4

    move v10, v8

    :goto_8b
    if-ge v8, p0, :cond_9d

    .line 227
    aget-object v11, v6, v8

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9a

    move v10, v5

    :cond_9a
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    :cond_9d
    if-nez v10, :cond_c4

    .line 232
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 233
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    .line 235
    :cond_b7
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c4
    :goto_c4
    add-int/lit8 v7, v7, 0x1

    goto :goto_82

    .line 239
    :cond_c7
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_cf
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_12e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 240
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v9, :cond_10c

    if-eq v2, v5, :cond_ea

    goto :goto_cf

    .line 252
    :cond_ea
    :try_start_ea
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_ea .. :try_end_f3} :catch_f4

    goto :goto_cf

    :catch_f4
    move-exception p1

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 244
    :cond_10c
    :try_start_10c
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z
    :try_end_115
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_115} :catch_116

    goto :goto_cf

    :catch_116
    move-exception p1

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    :cond_12e
    return-void
.end method

.method public static setAttributes(Lcom/android/server/pm/UserManagerInternal;II)Z
    .registers 3

    .line 297
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->setAttributes(II)Z

    move-result p0

    return p0
.end method

.method public static setContainerInfo(Lcom/android/server/pm/UserManagerService;)V
    .registers 1

    .line 325
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->setContainerInfo()V

    return-void
.end method

.method public static setDualDARProfile(Landroid/content/Context;Landroid/os/Bundle;)I
    .registers 2

    .line 139
    invoke-static {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARStorageHelper;->setDualDARProfile(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static setMaximumScreenOffTimeoutFromKnox(Landroid/os/PowerManagerInternal;IJ)V
    .registers 4

    .line 344
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManagerInternal;->setMaximumScreenOffTimeoutFromKnox(IJ)V

    return-void
.end method

.method public static setOwnership(Landroid/content/Context;I)V
    .registers 7

    const-string v0, "com.samsung.android.appseparation"

    const-string v1, "ContainerDependencyWrapper"

    .line 647
    :try_start_4
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "setOwnership"

    .line 648
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    :cond_1b
    const-string/jumbo v2, "setOwnership failed"

    .line 650
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v2

    .line 654
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 658
    :goto_26
    :try_start_26
    new-instance v2, Lcom/samsung/android/knox/container/ContainerCreationParams;

    invoke-direct {v2}, Lcom/samsung/android/knox/container/ContainerCreationParams;-><init>()V

    .line 659
    invoke-virtual {v2, v0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminParam(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v2, p1}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setContainerId(I)V

    .line 661
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/knox/container/ContainerCreationParams;->setAdminUid(I)V

    .line 662
    const-class p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/KnoxMUMContainerPolicyInternal;->setAppSeparationOwnership(Lcom/samsung/android/knox/container/ContainerCreationParams;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_47} :catch_48

    goto :goto_5d

    :catch_48
    move-exception p0

    .line 664
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception setOwnership"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5d
    return-void
.end method

.method public static setPackageSettingInstalled(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZI)Z
    .registers 4

    .line 321
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->setPackageSettingInstalled(Ljava/lang/String;ZI)Z

    move-result p0

    return p0
.end method

.method public static unsetTwoFactorValueIfNeeded(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V
    .registers 7

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "knox_finger_print_plus"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    if-eqz v3, :cond_28

    .line 352
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result p1

    if-nez p1, :cond_28

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v1, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string p0, "ContainerDependencyWrapper"

    const-string/jumbo p1, "unset two-factor setting value."

    .line 354
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    return-void
.end method

.method public static updateProfileActivityTimeFromKnox(Landroid/os/PowerManagerInternal;IJ)V
    .registers 4

    .line 340
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/PowerManagerInternal;->updateProfileActivityTimeFromKnox(IJ)V

    return-void
.end method

.method public static updateUserInfo(Landroid/os/UserManager;ILandroid/os/Bundle;)V
    .registers 3

    .line 293
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->updateUserInfo(ILandroid/os/Bundle;)Z

    return-void
.end method


# virtual methods
.method public callOnCMFALocked(I)V
    .registers 2

    return-void
.end method

.method public final getDarManagerService()Lcom/android/server/knox/dar/DarManagerService;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDarService:Lcom/android/server/knox/dar/DarManagerService;

    if-nez v0, :cond_e

    const-string v0, "dar"

    .line 117
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/knox/dar/DarManagerService;

    iput-object v0, p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDarService:Lcom/android/server/knox/dar/DarManagerService;

    .line 119
    :cond_e
    iget-object p0, p0, Lcom/android/server/knox/ContainerDependencyWrapper;->mDarService:Lcom/android/server/knox/dar/DarManagerService;

    return-object p0
.end method
