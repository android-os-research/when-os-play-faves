.class public Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;
.super Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.source "OmcPermissionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy;->createPmServiceProxy(Landroid/content/Context;)Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public static synthetic $r8$lambda$jwi3ICYSb6ljcXfzTbRPCiaElaE(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 381
    invoke-direct {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic lambda$grantRuntimePermissions$0(I)[Ljava/lang/String;
    .registers 1

    .line 562
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addAllowlistedRestrictedPermissionProxy(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    const-string/jumbo p0, "permissionmgr"

    .line 386
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 385
    invoke-static {p0}, Landroid/permission/IPermissionManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/permission/IPermissionManager;

    move-result-object p0

    .line 388
    :try_start_b
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/permission/IPermissionManager;->addAllowlistedRestrictedPermission(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p0

    .line 391
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_13
    return-void
.end method

.method public final getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 682
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 687
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->backgroundPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getInstalledPackagesProxy(II)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 510
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x2000b000

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_11} :catch_12

    return-object p0

    .line 513
    :catch_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPackageInfoProxy(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .registers 3

    .line 485
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 720
    :cond_4
    :try_start_4
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_f} :catch_10

    return-object p0

    .line 722
    :catch_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission not found: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getPermissionInfoProxy(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;
    .registers 3

    .line 398
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 400
    :catch_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission not found: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 2

    .line 498
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 499
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_10

    :cond_f
    return-object p0

    :cond_10
    :goto_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemPropertyProxy(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 493
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V
    .registers 4

    .line 711
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2, p1, p3}, Landroid/content/pm/PackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    .line 521
    :try_start_7
    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_21

    .line 524
    :catch_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to grant for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OmcPermissionPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_21
    return-void
.end method

.method public final grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZZZI)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZZZI)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 534
    invoke-static/range {p6 .. p6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v8

    const-string v3, "OmcPermissionPolicy"

    if-nez v1, :cond_15

    const-string/jumbo v0, "pkg is null"

    .line 536
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 539
    :cond_15
    iget-object v4, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 540
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 541
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    return-void

    .line 547
    :cond_24
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-nez v5, :cond_43

    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 553
    :cond_43
    iget-object v3, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 554
    array-length v5, v4

    const/4 v10, 0x0

    move v6, v10

    :goto_48
    if-ge v6, v5, :cond_58

    .line 556
    aget-object v7, v4, v6

    invoke-static {v3, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_55

    const/4 v7, 0x0

    .line 558
    aput-object v7, v4, v6

    :cond_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_48

    .line 561
    :cond_58
    new-instance v3, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->filterNotNull([Ljava/lang/Object;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 564
    new-instance v12, Landroid/util/ArraySet;

    invoke-direct {v12, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 565
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_70

    const/16 v4, 0x30

    goto :goto_72

    :cond_70
    const/16 v4, 0x20

    .line 573
    :goto_72
    iget-object v5, v0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    const-class v6, Landroid/permission/PermissionManager;

    .line 574
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/permission/PermissionManager;

    invoke-virtual {v5}, Landroid/permission/PermissionManager;->getSplitPermissions()Ljava/util/List;

    move-result-object v5

    .line 575
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v10

    :goto_85
    if-ge v7, v6, :cond_ab

    .line 578
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/permission/PermissionManager$SplitPermissionInfo;

    if-eqz v3, :cond_a8

    .line 580
    iget v14, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 581
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getTargetSdk()I

    move-result v15

    if-ge v14, v15, :cond_a8

    .line 582
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getSplitPermission()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v2, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a8

    .line 583
    invoke-virtual {v13}, Landroid/permission/PermissionManager$SplitPermissionInfo;->getNewPermissions()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_85

    .line 587
    :cond_ab
    array-length v13, v11

    .line 592
    new-array v2, v13, [Ljava/lang/String;

    move v3, v10

    move v5, v3

    move v6, v5

    :goto_b1
    if-ge v3, v13, :cond_ca

    .line 596
    aget-object v7, v11, v3

    .line 597
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getBackgroundPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c0

    .line 598
    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_c7

    :cond_c0
    add-int/lit8 v14, v13, -0x1

    sub-int/2addr v14, v5

    .line 601
    aput-object v7, v2, v14

    add-int/lit8 v5, v5, 0x1

    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_b1

    :cond_ca
    move v14, v10

    :goto_cb
    if-ge v14, v13, :cond_158

    .line 609
    aget-object v15, v11, v14

    .line 611
    invoke-virtual {v12, v15}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_154

    .line 612
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v15, v2, v8}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v7

    if-eqz p3, :cond_e5

    and-int/lit8 v2, v7, 0x10

    if-eqz v2, :cond_e5

    const/4 v2, 0x1

    move/from16 v16, v2

    goto :goto_e7

    :cond_e5
    move/from16 v16, v10

    .line 626
    :goto_e7
    invoke-virtual {v0, v7}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isFixedOrUserSet(I)Z

    move-result v2

    if-eqz v2, :cond_f7

    if-nez p4, :cond_f7

    if-eqz v16, :cond_f2

    goto :goto_f7

    :cond_f2
    move/from16 v17, v4

    move/from16 v18, v7

    goto :goto_13d

    :cond_f7
    :goto_f7
    and-int/lit8 v2, v7, 0x4

    if-eqz v2, :cond_fd

    goto/16 :goto_154

    :cond_fd
    and-int/lit16 v2, v7, 0x3800

    or-int v17, v4, v2

    if-eqz p5, :cond_118

    .line 642
    invoke-virtual {v0, v15}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isPermissionRestricted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_118

    .line 643
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    const/16 v6, 0x1000

    move-object v2, v9

    move-object v3, v15

    move/from16 v18, v7

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_11a

    :cond_118
    move/from16 v18, v7

    :goto_11a
    if-eqz v16, :cond_128

    .line 651
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    and-int/lit8 v6, v18, -0x11

    move-object v2, v9

    move-object v3, v15

    move/from16 v5, v18

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    .line 655
    :cond_128
    invoke-virtual {v0, v15, v1, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_131

    .line 656
    invoke-virtual {v0, v15, v1, v8}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantPermission(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)V

    :cond_131
    or-int/lit8 v5, v17, 0x40

    .line 661
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v2, v9

    move-object v3, v15

    move/from16 v6, v17

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :goto_13d
    and-int/lit8 v2, v18, 0x20

    if-eqz v2, :cond_152

    and-int/lit8 v2, v18, 0x10

    if-eqz v2, :cond_152

    if-nez p3, :cond_152

    .line 674
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x10

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, v15

    move-object v7, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    :cond_152
    move/from16 v4, v17

    :cond_154
    :goto_154
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_cb

    :cond_158
    return-void
.end method

.method public grantRuntimePermissionsProxy(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageInfo;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 473
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->grantRuntimePermissions(Landroid/content/pm/PackageInfo;Ljava/util/Set;ZI)V

    return-void
.end method

.method public final isFixedOrUserSet(I)Z
    .registers 2

    and-int/lit8 p0, p1, 0x17

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isGranted(Ljava/lang/String;Landroid/content/pm/PackageInfo;Landroid/os/UserHandle;)Z
    .registers 5

    .line 692
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 693
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method public final isPermissionRestricted(Ljava/lang/String;)Z
    .registers 2

    .line 698
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getPermissionInfo(Ljava/lang/String;)Landroid/content/pm/PermissionInfo;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 703
    :cond_8
    invoke-virtual {p0}, Landroid/content/pm/PermissionInfo;->isRestricted()Z

    move-result p0

    return p0
.end method

.method public revokeRuntimePermissionsProxy(Ljava/lang/String;Ljava/util/Set;ZI)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .line 422
    iget-object v0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 423
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$1;->getSystemPackageInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5d

    .line 424
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_5d

    .line 427
    :cond_15
    new-instance v7, Landroid/util/ArraySet;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 428
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v7, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 430
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    .line 432
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_38

    goto :goto_24

    .line 436
    :cond_38
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 437
    invoke-virtual {v0, v2, p1, v6}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p2

    and-int/lit8 v1, p2, 0x20

    if-nez v1, :cond_45

    goto :goto_24

    :cond_45
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_4a

    goto :goto_24

    :cond_4a
    and-int/lit8 p2, p2, 0x10

    if-eqz p2, :cond_51

    if-nez p3, :cond_51

    goto :goto_24

    .line 454
    :cond_51
    invoke-virtual {v0, p1, v2, v6}, Landroid/content/pm/PackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    move-object v1, v0

    move-object v3, p1

    .line 465
    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    goto :goto_24

    :cond_5d
    :goto_5d
    return-void
.end method

.method public updatePermissionFlagsProxy(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 12

    and-int/lit8 v3, p3, -0x5

    .line 412
    :try_start_2
    iget-object p0, p0, Lcom/samsung/android/server/pm/permission/OmcPermissionPolicy$PmServiceProxy;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 413
    invoke-static {p5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    .line 412
    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/PackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    :try_end_12
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_1a

    :catch_13
    const-string p0, "OmcPermissionPolicy"

    const-string p1, "Can\'t override a permission flag with POLICY_FIXED"

    .line 415
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    return-void
.end method
