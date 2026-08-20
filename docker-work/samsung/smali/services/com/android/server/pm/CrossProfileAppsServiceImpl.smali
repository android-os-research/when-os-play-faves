.class public Lcom/android/server/pm/CrossProfileAppsServiceImpl;
.super Landroid/content/pm/ICrossProfileApps$Stub;
.source "CrossProfileAppsServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;,
        Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "CrossProfileAppsService"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

.field public final mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;


# direct methods
.method public static synthetic $r8$lambda$-s4g4JlLOgrFmNuj1XTuZTeOh_w(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$verifyActivityCanHandleIntentAndExported$6(Landroid/content/Intent;IILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$49_Ap_0QAwMqnRnikFka4THRs0E(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isSameProfileGroup$14(II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AyfYAGQPv-LHShAusQsYvY9lj6c(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$findAllPackageNames$13(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$CGcn-YO9-Uu0NomUf2MEuCnowVE(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$verifyActivityCanHandleIntent$5(Landroid/content/Intent;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$E5mYOhUsxlMwcg-vVFARgtDDiOQ(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isPackageInstalled$7(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IySKbPw_wspQaLHdvRqjFrdMXiY(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Ljava/lang/Boolean;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isPackageEnabled$4(Ljava/lang/String;II)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LLjey3n4c_P-5y8hMF8BL7QtMy0(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)Landroid/content/ComponentName;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isProfileOwner$16(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$LpG43McXzbeDNEWmHdhtuCD9-mU(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$hasOtherProfileWithPackageInstalled$11(ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NAvQo2A_aRFohRnZAJs92Lih-sU(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$8(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$OmGZQ-G9A_0FfB6CTQ4H3XXdIbM(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Integer;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$haveProfilesGotInteractAcrossProfilesPermission$0(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XtxVmiejP17lftmnayaZ8KIqPzY(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$currentModeEquals$9(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bZe-SCgPyahfuXf8xiEZANDyKO0(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isCrossProfilePackageAllowlisted$1(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cbXb1pjroc0r2Gad9wkkttVfj0o(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isCrossProfilePackageAllowlistedByDefault$2(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$f6EIXq4lzsE-Mxx1kXqOBZtHXGM(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nlricd5srFFDgB8O_VnMW3Cxp2g(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$filterWorkProfileIdOnly$10(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$q63Iv_YneZbDtfdZZciqwpU-9PU(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$clearInteractAcrossProfilesAppOps$12(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$s583I5IfjgN_YWossqfBjpDd94s(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$getTargetUserProfilesUnchecked$3(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$zCanO8zMkonkz5o09YgKbk8xazs(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$isManagedProfile$15(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInjector(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetTargetUserProfilesUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhasInteractAcrossProfilesPermission(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetInteractAcrossProfilesAppOpUnchecked(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 89
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$InjectorImpl;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;-><init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 93
    invoke-direct {p0}, Landroid/content/pm/ICrossProfileApps$Stub;-><init>()V

    .line 83
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    return-void
.end method

.method private synthetic lambda$clearInteractAcrossProfilesAppOps$12(ILjava/lang/String;)V
    .registers 3

    .line 735
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$currentModeEquals$9(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 578
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 579
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 578
    :goto_f
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$filterWorkProfileIdOnly$10(Ljava/lang/Integer;)I
    .registers 1

    .line 669
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$findAllPackageNames$13(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 1

    .line 743
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$getTargetUserProfilesUnchecked$3(ILjava/lang/String;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 354
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 356
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 357
    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_37

    aget v4, v0, v3

    if-ne v4, p1, :cond_18

    goto :goto_34

    .line 361
    :cond_18
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageEnabled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_34

    .line 365
    :cond_1f
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v5

    if-eqz v5, :cond_26

    goto :goto_34

    .line 368
    :cond_26
    invoke-static {v4}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_2d

    goto :goto_34

    .line 372
    :cond_2d
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_37
    return-object v1
.end method

.method private synthetic lambda$hasOtherProfileWithPackageInstalled$11(ILjava/lang/String;)Ljava/lang/Boolean;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 703
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 704
    array-length v2, v0

    :goto_c
    if-ge v1, v2, :cond_1e

    aget v3, v0, v1

    if-eq v3, p1, :cond_1b

    .line 705
    invoke-virtual {p0, p2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 706
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 709
    :cond_1e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private synthetic lambda$haveProfilesGotInteractAcrossProfilesPermission$0(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/lang/Integer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 321
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 322
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 321
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    const/4 p0, -0x1

    .line 324
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isCrossProfilePackageAllowlisted$1(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    .line 341
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManagerInternal;->getAllCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 340
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isCrossProfilePackageAllowlistedByDefault$2(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 346
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    .line 347
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManagerInternal;->getDefaultCrossProfilePackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    .line 346
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isManagedProfile$15(I)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 774
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isPackageEnabled$4(Ljava/lang/String;II)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    const-wide/32 v2, 0xc0000

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 382
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 387
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isPackageInstalled$7(Ljava/lang/String;I)Ljava/lang/Boolean;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 497
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 498
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v5

    const-wide/32 v3, 0xc0000

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    .line 499
    :goto_1a
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isProfileOwner$16(I)Landroid/content/ComponentName;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 799
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getDevicePolicyManagerInternal()Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$isSameProfileGroup$14(II)Ljava/lang/Boolean;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 753
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$8(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 531
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    const/16 v0, 0x5d

    .line 532
    invoke-virtual {p0, v0, p1, p2}, Landroid/app/AppOpsManager;->setUidMode(III)V

    return-void
.end method

.method private synthetic lambda$verifyActivityCanHandleIntent$5(Landroid/content/Intent;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 394
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 395
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 397
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0xc0000

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 395
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 402
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_21

    return-void

    .line 405
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Activity cannot handle intent"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic lambda$verifyActivityCanHandleIntentAndExported$6(Landroid/content/Intent;IILandroid/content/ComponentName;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 417
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    .line 419
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0xc0000

    move-object v2, p1

    move v6, p2

    move v7, p3

    .line 417
    invoke-virtual/range {v1 .. v7}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object p0

    .line 423
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_1f
    if-ge p2, p1, :cond_49

    .line 425
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/ResolveInfo;

    iget-object p3, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 426
    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 427
    invoke-virtual {p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean p3, p3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz p3, :cond_46

    return-void

    :cond_46
    add-int/lit8 p2, p2, 0x1

    goto :goto_1f

    .line 432
    :cond_49
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Attempt to launch activity without  category Intent.CATEGORY_LAUNCHER or activity is not exported"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z
    .registers 2

    .line 604
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isCrossProfile()Z

    move-result p0

    return p0
.end method

.method public canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 5

    .line 613
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 616
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_f

    return v1

    :cond_f
    const/16 p2, 0x5d

    .line 620
    invoke-static {p2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object p2

    .line 619
    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1c

    return v1

    .line 623
    :cond_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageAllowlisted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 5

    .line 298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 302
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    return v2

    .line 306
    :cond_18
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 307
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->haveProfilesGotInteractAcrossProfilesPermission(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 v2, 0x1

    :cond_25
    return v2
.end method

.method public canRequestInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 2

    .line 267
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final canRequestInteractAcrossProfilesUnchecked(Ljava/lang/String;)Z
    .registers 6

    .line 273
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 274
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v0

    .line 275
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_16

    return v2

    .line 278
    :cond_16
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1d

    return v2

    :cond_1d
    const/16 v0, 0x5d

    .line 282
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;)Z
    .registers 3

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 629
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 628
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canUserAttemptToConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z
    .registers 6

    .line 636
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 637
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p2

    .line 640
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->filterWorkProfileIdOnly([I)[I

    move-result-object p2

    .line 643
    array-length v0, p2

    const/4 v2, 0x2

    if-ge v0, v2, :cond_14

    return v1

    .line 646
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    const/16 v0, 0x5d

    .line 650
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v0

    .line 649
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    return v1

    .line 653
    :cond_28
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public clearInteractAcrossProfilesAppOps()V
    .registers 4

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 733
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    .line 734
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findAllPackageNames()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 735
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final currentModeEquals(ILjava/lang/String;I)Z
    .registers 12

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 577
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 578
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final filterWorkProfileIdOnly([I)[I
    .registers 6

    .line 657
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    array-length v0, p1

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_23

    aget v2, p1, v1

    .line 660
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_20

    .line 663
    :cond_12
    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_19

    goto :goto_20

    .line 666
    :cond_19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 669
    :cond_23
    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda13;

    invoke-direct {p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public final findAllPackageNames()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 741
    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result p0

    const-wide/16 v2, 0x0

    .line 740
    invoke-virtual {v0, v2, v3, v1, p0}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object p0

    .line 742
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda7;-><init>()V

    .line 743
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 744
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 599
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 600
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getLocalService()Landroid/content/pm/CrossProfileAppsInternal;
    .registers 1

    .line 748
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mLocalService:Lcom/android/server/pm/CrossProfileAppsServiceImpl$LocalService;

    return-object p0
.end method

.method public getTargetUserProfiles(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    const/16 v0, 0x7d

    .line 105
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 106
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 109
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 110
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    .line 109
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z
    .registers 4

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 313
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v1

    .line 312
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public final hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z
    .registers 6

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 778
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1e

    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    .line 779
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1e

    .line 782
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 783
    invoke-static {p0, v0, p3, p2, p1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public final hasOtherProfileWithPackageInstalled(Ljava/lang/String;I)Z
    .registers 5

    .line 701
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final hasRequestedAppOpPermission(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 287
    :try_start_0
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 288
    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/pm/IPackageManager;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 289
    invoke-static {p0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    return p0

    :catch_f
    const-string p0, "CrossProfileAppsService"

    const-string p1, "PackageManager dead. Cannot get permission info"

    .line 291
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final haveProfilesGotInteractAcrossProfilesPermission(Ljava/lang/String;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;)Z"
        }
    .end annotation

    .line 318
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 319
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_26

    return v1

    .line 330
    :cond_26
    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_2d
    const/4 p0, 0x1

    return p0
.end method

.method public final isCallingUserAManagedProfile()Z
    .registers 2

    .line 769
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method public final isCrossProfilePackageAllowlisted(Ljava/lang/String;)Z
    .registers 4

    .line 339
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isCrossProfilePackageAllowlistedByDefault(Ljava/lang/String;)Z
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isManagedProfile(I)Z
    .registers 4

    .line 773
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPackageEnabled(Ljava/lang/String;I)Z
    .registers 6

    .line 379
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v2, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPackageInstalled(Ljava/lang/String;I)Z
    .registers 5

    .line 494
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isPermissionGranted(Ljava/lang/String;I)Z
    .registers 5

    .line 764
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-interface {p0, p1, p2, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result p0

    if-nez p0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public final isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z
    .registers 10

    .line 687
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_24

    aget v3, p2, v2

    .line 688
    iget-object v4, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-virtual {v4, p1, v5, v6, v3}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    goto :goto_21

    :cond_17
    const-string v4, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 693
    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 p0, 0x1

    return p0

    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_24
    return v1
.end method

.method public final isPlatformSignedAppWithNonUserConfigurablePermission(Ljava/lang/String;[I)Z
    .registers 4

    .line 675
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCrossProfilePackageAllowlistedByDefault(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 676
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPlatformSignedAppWithAutomaticProfilesPermission(Ljava/lang/String;[I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isProfileOwner(Ljava/lang/String;I)Z
    .registers 5

    .line 797
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;I)V

    .line 798
    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    return p0

    .line 803
    :cond_11
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isProfileOwner(Ljava/lang/String;[I)Z
    .registers 7

    .line 788
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_12

    aget v3, p2, v2

    .line 789
    invoke-virtual {p0, p1, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isProfileOwner(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_12
    return v1
.end method

.method public final isSameProfileGroup(II)Z
    .registers 5

    .line 752
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final logStartActivityByIntent(Ljava/lang/String;)V
    .registers 5

    const/16 v0, 0x96

    .line 259
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 260
    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isCallingUserAManagedProfile()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 262
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final maybeKillUid(Ljava/lang/String;IZ)V
    .registers 4

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p3, -0x1

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_b

    return-void

    .line 555
    :cond_b
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->killUid(I)V

    return-void
.end method

.method public final maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IZ)V
    .registers 6

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/16 p3, 0x8b

    .line 564
    invoke-static {p3}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 565
    invoke-virtual {p3, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p3

    .line 566
    invoke-virtual {p3, p2}, Landroid/app/admin/DevicePolicyEventLogger;->setInt(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p2

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 568
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final resetInteractAcrossProfilesAppOp(Ljava/lang/String;)V
    .registers 3

    .line 719
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 720
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not resetting app-op for package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since it is still configurable by users."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrossProfileAppsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_22
    const-string v0, "android.permission.INTERACT_ACROSS_PROFILES"

    .line 725
    invoke-static {v0}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 726
    invoke-static {v0}, Landroid/app/AppOpsManager;->opToDefaultMode(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V

    return-void
.end method

.method public resetInteractAcrossProfilesAppOps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 715
    new-instance v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    .line 584
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CAN_INTERACT_ACROSS_PROFILES_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->appDeclaresCrossProfileAttribute(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_17

    const/high16 p1, 0x11000000

    .line 587
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1c

    :cond_17
    const/high16 p1, 0x40000000    # 2.0f

    .line 590
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 592
    :goto_1c
    invoke-virtual {p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->findBroadcastReceiversForUser(Landroid/content/Intent;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 593
    invoke-virtual {v1}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 594
    iget-object v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_24

    :cond_41
    return-void
.end method

.method public setInteractAcrossProfilesAppOp(Ljava/lang/String;I)V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V

    return-void
.end method

.method public final setInteractAcrossProfilesAppOp(Ljava/lang/String;II)V
    .registers 6

    .line 450
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 451
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    .line 452
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_1f

    .line 453
    :cond_17
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL is required to set the app-op for interacting across profiles."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f
    :goto_1f
    const-string v1, "android.permission.MANAGE_APP_OPS_MODES"

    .line 457
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_38

    const-string v1, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    .line 458
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_38

    .line 459
    :cond_30
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "MANAGE_APP_OPS_MODES or CONFIGURE_INTERACT_ACROSS_PROFILES is required to set the app-op for interacting across profiles."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 463
    :cond_38
    :goto_38
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V

    return-void
.end method

.method public final setInteractAcrossProfilesAppOpForProfile(Ljava/lang/String;IIZ)V
    .registers 5

    .line 506
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfileOrThrow(Ljava/lang/String;IIZ)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_23

    :catch_4
    move-exception p0

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing package "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on profile user ID "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CrossProfileAppsService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_23
    return-void
.end method

.method public final setInteractAcrossProfilesAppOpForProfileOrThrow(Ljava/lang/String;IIZ)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 516
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 517
    invoke-virtual {v0, p1, v1, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result v0

    .line 518
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->currentModeEquals(ILjava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 519
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Attempt to set mode to existing value of "

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on profile user ID "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrossProfileAppsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    const/4 v1, -0x1

    .line 524
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v1

    .line 527
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    const-string v3, "android.permission.CONFIGURE_INTERACT_ACROSS_PROFILES"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 530
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v3, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V

    invoke-interface {v2, v3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    goto :goto_61

    .line 534
    :cond_56
    iget-object v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v2

    const/16 v3, 0x5d

    .line 535
    invoke-virtual {v2, v3, v0, p2}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 539
    :goto_61
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeKillUid(Ljava/lang/String;IZ)V

    .line 540
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->sendCanInteractAcrossProfilesChangedBroadcast(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 541
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->maybeLogSetInteractAcrossProfilesAppOp(Ljava/lang/String;IZ)V

    return-void
.end method

.method public final setInteractAcrossProfilesAppOpUnchecked(Ljava/lang/String;II)V
    .registers 10

    if-nez p2, :cond_1f

    .line 469
    invoke-virtual {p0, p1, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->canConfigureInteractAcrossProfiles(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 472
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Tried to turn on the appop for interacting across profiles for invalid app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CrossProfileAppsService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 476
    :cond_1f
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    .line 477
    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v0

    .line 478
    array-length v2, v0

    move v3, v1

    :goto_2c
    if-ge v3, v2, :cond_42

    aget v4, v0, v3

    .line 479
    invoke-virtual {p0, p1, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPackageInstalled(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_37

    goto :goto_3f

    :cond_37
    if-ne v4, p3, :cond_3b

    const/4 v5, 0x1

    goto :goto_3c

    :cond_3b
    move v5, v1

    .line 483
    :goto_3c
    invoke-virtual {p0, p1, p2, v4, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->setInteractAcrossProfilesAppOpForProfile(Ljava/lang/String;IIZ)V

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    :cond_42
    return-void
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;IZLandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, p2

    move-object v1, p4

    move v8, p5

    move-object/from16 v3, p8

    .line 123
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    const/16 v4, 0x7e

    .line 129
    invoke-static {v4}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    .line 130
    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 133
    iget-object v4, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v4

    .line 134
    iget-object v5, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v5

    .line 135
    iget-object v6, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingPid()I

    move-result v6

    .line 137
    invoke-virtual {p0, p2, v4}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v7

    .line 139
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ef

    .line 144
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 151
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    if-eqz p6, :cond_72

    const-string v4, "android.intent.action.MAIN"

    .line 153
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.category.LAUNCHER"

    .line 154
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    if-nez p7, :cond_65

    const/high16 v4, 0x10200000

    .line 156
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_6a

    :cond_65
    const/high16 v4, 0x200000

    .line 159
    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    :goto_6a
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9d

    :cond_72
    if-eq v4, v8, :cond_9a

    .line 169
    invoke-virtual {p0, p2, v5, v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasInteractAcrossProfilesPermission(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_8b

    const-string v6, "android.permission.START_CROSS_PROFILE_ACTIVITIES"

    .line 170
    invoke-virtual {p0, v6, v5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isPermissionGranted(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_83

    goto :goto_8b

    .line 171
    :cond_83
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to launch activity without one of the required android.permission.INTERACT_ACROSS_PROFILES or android.permission.START_CROSS_PROFILE_ACTIVITIES permissions."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_8b
    :goto_8b
    invoke-virtual {p0, v4, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->isSameProfileGroup(II)Z

    move-result v4

    if-eqz v4, :cond_92

    goto :goto_9a

    .line 176
    :cond_92
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to launch activity when target user is not in the same profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_9a
    :goto_9a
    invoke-virtual {v7, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    :goto_9d
    invoke-virtual {p0, v7, p4, v5, p5}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V

    if-nez v3, :cond_ab

    .line 186
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_b6

    .line 188
    :cond_ab
    invoke-static {}, Landroid/app/ActivityOptions;->makeOpenCrossProfileAppsAnimation()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_b6
    move-object v9, v3

    const/4 v3, 0x0

    .line 191
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {v7, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    iget-object v0, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v7

    move-object/from16 v5, p7

    move-object v7, v9

    move v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    return-void

    .line 145
    :cond_d1
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempts to start an activity in other package - "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_ef
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot access unrelated user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityAsUserByIntent(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object v10, p2

    move/from16 v9, p5

    .line 210
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "The intent must have a Component set"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyCallingPackage(Ljava/lang/String;)V

    .line 216
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUserId()I

    move-result v1

    .line 217
    iget-object v2, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result v2

    .line 219
    invoke-virtual {p0, p2, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->getTargetUserProfilesUnchecked(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eq v1, v9, :cond_4d

    .line 221
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto :goto_4d

    .line 222
    :cond_33
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " cannot access unrelated user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_4d
    :goto_4d
    new-instance v5, Landroid/content/Intent;

    move-object v3, p4

    invoke-direct {v5, p4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 226
    invoke-virtual {v5, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 228
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    if-eq v1, v9, :cond_75

    .line 235
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->hasCallerGotInteractAcrossProfilesPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    goto :goto_75

    .line 236
    :cond_6d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to launch activity without required android.permission.INTERACT_ACROSS_PROFILES permission or target user is not in the same profile group."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_75
    :goto_75
    invoke-virtual {p0, v5, v2, v9}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->verifyActivityCanHandleIntent(Landroid/content/Intent;II)V

    .line 244
    iget-object v1, v0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getActivityTaskManagerInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, p5

    .line 245
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/os/IBinder;ILandroid/os/Bundle;I)I

    .line 254
    invoke-virtual {p0, p2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->logStartActivityByIntent(Ljava/lang/String;)V

    return-void

    .line 229
    :cond_8f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " attempts to start an activity in other package - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final verifyActivityCanHandleIntent(Landroid/content/Intent;II)V
    .registers 6

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v1, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;II)V

    invoke-interface {v0, v1}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final verifyActivityCanHandleIntentAndExported(Landroid/content/Intent;Landroid/content/ComponentName;II)V
    .registers 13

    .line 415
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    new-instance v7, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;Landroid/content/Intent;IILandroid/content/ComponentName;)V

    invoke-interface {v0, v7}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public final verifyCallingPackage(Ljava/lang/String;)V
    .registers 3

    .line 760
    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {v0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->mInjector:Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;

    invoke-interface {p0}, Lcom/android/server/pm/CrossProfileAppsServiceImpl$Injector;->getCallingUid()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    return-void
.end method
