.class public final Lcom/android/server/pm/SuspendPackageHelper;
.super Ljava/lang/Object;
.source "SuspendPackageHelper.java"


# instance fields
.field public final mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

.field public final mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;


# direct methods
.method public static synthetic $r8$lambda$56lMTTmdwpGLgie--3DUwPSUIRI(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DiG1oDRWb4wb1DGaTlfdBYjEN-Q(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$sendMyPackageSuspendedOrUnsuspended$3(ZI[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$q8yyKm6etC93i5lkgJcTbAozJFk(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xoXctDtUuiXfv2cpIdOn1J4kKpk(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->lambda$sendPackagesSuspendedForUser$2(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/BroadcastHelper;Lcom/android/server/pm/ProtectedPackages;)V
    .registers 5

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 75
    iput-object p2, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    .line 76
    iput-object p3, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    .line 77
    iput-object p4, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    return-void
.end method

.method public static synthetic lambda$removeSuspensionsBySuspendingPackage$1(Landroid/util/ArrayMap;ILcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 9

    const/4 v0, 0x0

    move v1, v0

    .line 337
    :goto_2
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 338
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 339
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 340
    invoke-virtual {p2, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    move v4, v0

    .line 341
    :goto_1d
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f

    .line 342
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v2, v5}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_32
    return-void
.end method

.method private synthetic lambda$sendMyPackageSuspendedOrUnsuspended$3(ZI[Ljava/lang/String;Ljava/lang/String;)V
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    .line 692
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IActivityManager null. Cannot send MY_PACKAGE_ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1b

    const-string v1, ""

    goto :goto_1d

    :cond_1b
    const-string v1, "UN"

    .line 695
    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SUSPENDED broadcasts"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    .line 694
    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2f
    const/4 v3, 0x1

    new-array v15, v3, [I

    const/4 v4, 0x0

    aput v1, v15, v4

    .line 699
    iget-object v5, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v14

    .line 700
    array-length v13, v2

    move v12, v4

    :goto_3d
    if-ge v12, v13, :cond_7e

    aget-object v9, v2, v12

    const/4 v4, 0x0

    if-eqz p1, :cond_4b

    const/16 v5, 0x3e8

    .line 702
    invoke-virtual {v0, v14, v9, v1, v5}, Lcom/android/server/pm/SuspendPackageHelper;->getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v5

    goto :goto_4c

    :cond_4b
    move-object v5, v4

    :goto_4c
    if-eqz v5, :cond_58

    .line 706
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, v3}, Landroid/os/Bundle;-><init>(I)V

    const-string v6, "android.intent.extra.SUSPENDED_PACKAGE_EXTRAS"

    .line 707
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_58
    move-object v7, v4

    .line 711
    iget-object v4, v0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v6, 0x0

    const/high16 v8, 0x1000000

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v5, p4

    move-object v11, v15

    move/from16 v19, v12

    move/from16 v12, v16

    move/from16 v16, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V

    add-int/lit8 v12, v19, 0x1

    move/from16 v13, v16

    move-object/from16 v14, v17

    goto :goto_3d

    :cond_7e
    return-void
.end method

.method private synthetic lambda$sendPackagesSuspendedForUser$2(Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V
    .registers 16

    .line 658
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mBroadcastHelper:Lcom/android/server/pm/BroadcastHelper;

    const/4 v2, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v7, p3

    move-object v9, p4

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic lambda$setPackagesSuspended$0(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;Lcom/android/server/pm/pkg/mutate/PackageStateMutator;)V
    .registers 9

    .line 179
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_21

    .line 181
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    invoke-virtual {p5, v2}, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;->forPackage(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageStateWrite;

    move-result-object v2

    .line 183
    invoke-interface {v2, p1}, Lcom/android/server/pm/pkg/mutate/PackageStateWrite;->userState(I)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    move-result-object v2

    if-eqz p2, :cond_1b

    .line 185
    invoke-interface {v2, p3, p4}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->putSuspendParams(Ljava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    goto :goto_1e

    .line 187
    :cond_1b
    invoke-interface {v2, p3}, Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;->removeSuspension(Ljava/lang/String;)Lcom/android/server/pm/pkg/mutate/PackageUserStateWrite;

    :goto_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_21
    return-void
.end method


# virtual methods
.method public canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 496
    array-length v4, v2

    new-array v4, v4, [Z

    move/from16 v5, p4

    .line 497
    invoke-virtual {v0, v1, v3, v5}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result v5

    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 500
    :try_start_15
    iget-object v8, v0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageManagerServiceInjector;->getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;

    move-result-object v8

    .line 501
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultHome(I)Ljava/lang/String;

    move-result-object v9

    .line 502
    invoke-virtual {v8, v3}, Lcom/android/server/pm/DefaultAppProvider;->getDefaultDialer(I)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    .line 504
    invoke-virtual {v0, v1, v10, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    .line 506
    invoke-virtual {v0, v1, v11, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    .line 508
    invoke-virtual {v0, v1, v12, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x64

    .line 511
    invoke-virtual {v0, v1, v13, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x7

    .line 514
    invoke-virtual {v0, v1, v14, v3}, Lcom/android/server/pm/SuspendPackageHelper;->getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;

    move-result-object v14
    :try_end_3d
    .catchall {:try_start_15 .. :try_end_3d} :catchall_216

    move-wide/from16 v16, v6

    const/4 v15, 0x0

    .line 516
    :goto_40
    :try_start_40
    array-length v6, v2

    if-ge v15, v6, :cond_20e

    const/4 v6, 0x0

    .line 517
    aput-boolean v6, v4, v15

    .line 518
    aget-object v7, v2, v15

    .line 520
    iget-object v6, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v6, v7, v3}, Lcom/android/server/pm/PackageManagerService;->isPackageDeviceAdmin(Ljava/lang/String;I)Z

    move-result v6
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_214

    const-string v2, "Cannot suspend package \""

    move-object/from16 v18, v4

    const-string v4, "PackageManager"

    if-eqz v6, :cond_6f

    .line 521
    :try_start_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": has an active device admin"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 525
    :cond_6f
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 526
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": contains the active launcher"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 530
    :cond_8e
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 531
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package installation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 535
    :cond_ad
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_cc

    .line 536
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package uninstallation"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 540
    :cond_cc
    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 541
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package verification"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 546
    :cond_eb
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10a

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for package samsung verification"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 552
    :cond_10a
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_129

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": is the default dialer"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 557
    :cond_129
    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_148

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": required for permissions management"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 562
    :cond_148
    iget-object v6, v0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v6, v3, v7}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_169

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": protected package"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    :cond_169
    if-nez v5, :cond_18a

    .line 567
    invoke-interface {v1, v3, v7}, Lcom/android/server/pm/Computer;->getBlockUninstall(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18a

    .line 568
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\": blocked by admin"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_204

    .line 576
    :cond_18a
    invoke-interface {v1, v7}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v2

    if-nez v2, :cond_192

    const/4 v2, 0x0

    goto :goto_196

    .line 577
    :cond_192
    invoke-interface {v2}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    :goto_196
    if-eqz v2, :cond_1e4

    .line 580
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isSdkLibrary()Z

    move-result v6
    :try_end_19c
    .catchall {:try_start_56 .. :try_end_19c} :catchall_214

    const-string v0, "Cannot suspend package: "

    if-eqz v6, :cond_1bf

    .line 581
    :try_start_1a0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing SDK library: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSdkLibName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204

    .line 589
    :cond_1bf
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->isStaticSharedLibrary()Z

    move-result v6

    if-eqz v6, :cond_1e4

    .line 590
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " providing static shared library: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getStaticSharedLibName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 590
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204

    :cond_1e4
    const-string v0, "android"

    .line 596
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_201

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend the platform package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_204

    :cond_201
    const/4 v0, 0x1

    .line 600
    aput-boolean v0, v18, v15
    :try_end_204
    .catchall {:try_start_1a0 .. :try_end_204} :catchall_214

    :goto_204
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v4, v18

    goto/16 :goto_40

    :cond_20e
    move-object/from16 v18, v4

    .line 603
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v18

    :catchall_214
    move-exception v0

    goto :goto_219

    :catchall_216
    move-exception v0

    move-wide/from16 v16, v6

    :goto_219
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 604
    throw v0
.end method

.method public final getKnownPackageName(Lcom/android/server/pm/Computer;II)Ljava/lang/String;
    .registers 4

    .line 667
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 668
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getKnownPackageNamesInternal(Lcom/android/server/pm/Computer;II)[Ljava/lang/String;

    move-result-object p0

    .line 669
    array-length p1, p0

    if-lez p1, :cond_d

    const/4 p1, 0x0

    aget-object p0, p0, p1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public getSuspendedDialogInfo(Lcom/android/server/pm/Computer;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/SuspendDialogInfo;
    .registers 6

    .line 449
    invoke-interface {p1, p2, p5}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 455
    :cond_8
    invoke-interface {p0, p4}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 456
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_13

    return-object p1

    .line 461
    :cond_13
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object p1

    .line 466
    :cond_1a
    invoke-virtual {p0, p3}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p0, :cond_26

    .line 467
    invoke-virtual {p0}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object p1

    :cond_26
    return-object p1
.end method

.method public getSuspendedPackageAppExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 6

    .line 269
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 273
    :cond_8
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 274
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 275
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p3, 0x0

    .line 276
    :goto_18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-ge p3, p4, :cond_3e

    .line 277
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p4, :cond_3b

    .line 278
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 279
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getAppExtras()Landroid/os/PersistableBundle;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 283
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_45

    move-object p1, p2

    :cond_45
    return-object p1
.end method

.method public getSuspendedPackageLauncherExtras(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 6

    .line 371
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 375
    :cond_8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 376
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 377
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p3

    if-eqz p3, :cond_3e

    const/4 p3, 0x0

    .line 378
    :goto_18
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p4

    if-ge p3, p4, :cond_3e

    .line 379
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz p4, :cond_3b

    .line 380
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 381
    invoke-virtual {p4}, Lcom/android/server/pm/pkg/SuspendParams;->getLauncherExtras()Landroid/os/PersistableBundle;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/os/Bundle;->putAll(Landroid/os/PersistableBundle;)V

    :cond_3b
    add-int/lit8 p3, p3, 0x1

    goto :goto_18

    .line 385
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Bundle;->size()I

    move-result p0

    if-lez p0, :cond_45

    move-object p1, p2

    :cond_45
    return-object p1
.end method

.method public getSuspendingPackage(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Ljava/lang/String;
    .registers 5

    .line 415
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 421
    :cond_8
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 422
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p2

    if-nez p2, :cond_13

    return-object p1

    :cond_13
    const/4 p2, 0x0

    .line 427
    :goto_14
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p3

    if-ge p2, p3, :cond_34

    .line 428
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p3, "android"

    .line 429
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_31

    return-object p1

    :cond_31
    add-int/lit8 p2, p2, 0x1

    goto :goto_14

    :cond_34
    return-object p1
.end method

.method public getUnsuspendablePackagesForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Ljava/lang/String;
    .registers 10

    .line 236
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v0

    const-string v1, "PackageManager"

    if-nez v0, :cond_1d

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Cannot suspend due to restrictions on user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 240
    :cond_1d
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 241
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object p0

    const/4 v2, 0x0

    .line 243
    :goto_27
    array-length v3, p2

    if-ge v2, v3, :cond_5a

    .line 244
    aget-boolean v3, p0, v2

    if-nez v3, :cond_34

    .line 245
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 248
    :cond_34
    aget-object v3, p2, v2

    .line 249
    invoke-interface {p1, v3, p4, p3}, Lcom/android/server/pm/Computer;->getPackageStateFiltered(Ljava/lang/String;II)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v3

    if-nez v3, :cond_57

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not find package setting for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p2, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_57
    :goto_57
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 255
    :cond_5a
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z
    .registers 11

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_6

    return v0

    .line 677
    :cond_6
    iget-object p0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    if-eqz v2, :cond_1d

    const-wide/16 v3, 0x0

    move-object v1, p1

    move v5, p2

    move v6, p3

    .line 679
    invoke-interface/range {v1 .. v6}, Lcom/android/server/pm/Computer;->getPackageUidInternal(Ljava/lang/String;JII)I

    move-result p1

    if-ne p3, p1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, p0

    :goto_1c
    return v0

    :cond_1d
    return p0
.end method

.method public isPackageSuspended(Lcom/android/server/pm/Computer;Ljava/lang/String;II)Z
    .registers 5

    .line 399
    invoke-interface {p1, p2, p4}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 400
    invoke-interface {p0, p3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object p0

    .line 401
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z
    .registers 5

    .line 478
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 479
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/SuspendPackageHelper;->isCallerDeviceOrProfileOwner(Lcom/android/server/pm/Computer;II)Z

    move-result p0

    if-nez p0, :cond_21

    const-string/jumbo p0, "no_control_apps"

    .line 480
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1f

    const-string/jumbo p0, "no_uninstall_apps"

    .line 481
    invoke-virtual {v0, p0, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    if-nez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public removeSuspensionsBySuspendingPackage(Lcom/android/server/pm/Computer;[Ljava/lang/String;Ljava/util/function/Predicate;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Computer;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v5, p4

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    new-instance v3, Landroid/util/IntArray;

    invoke-direct {v3}, Landroid/util/IntArray;-><init>()V

    .line 302
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 303
    array-length v6, v1

    const/4 v8, 0x0

    :goto_17
    const/4 v9, 0x0

    if-ge v8, v6, :cond_8b

    aget-object v10, v1, v8

    move-object/from16 v11, p1

    .line 305
    invoke-interface {v11, v10}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v12

    if-nez v12, :cond_25

    goto :goto_29

    .line 307
    :cond_25
    invoke-interface {v12, v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v9

    :goto_29
    if-eqz v9, :cond_84

    .line 308
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v13

    if-nez v13, :cond_32

    goto :goto_84

    .line 313
    :cond_32
    invoke-interface {v9}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 315
    :goto_38
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v15

    if-ge v13, v15, :cond_69

    .line 316
    invoke-virtual {v9, v13}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v7, p3

    .line 317
    invoke-interface {v7, v15}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_64

    .line 319
    invoke-virtual {v4, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/util/ArraySet;

    if-nez v16, :cond_5d

    .line 321
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 322
    invoke-virtual {v4, v10, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_5d
    move-object/from16 v1, v16

    .line 324
    :goto_5f
    invoke-virtual {v1, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    :cond_64
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p2

    goto :goto_38

    :cond_69
    move-object/from16 v7, p3

    .line 330
    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ne v14, v1, :cond_86

    .line 331
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-interface {v12}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v1

    invoke-static {v5, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/util/IntArray;->add(I)V

    goto :goto_86

    :cond_84
    :goto_84
    move-object/from16 v7, p3

    :cond_86
    :goto_86
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p2

    goto :goto_17

    .line 336
    :cond_8b
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v6, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v4, v5}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda0;-><init>(Landroid/util/ArrayMap;I)V

    invoke-virtual {v1, v9, v6}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 347
    iget-object v1, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    .line 349
    iget-object v4, v0, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 350
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c6

    .line 352
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 351
    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 353
    invoke-virtual {v0, v4, v2, v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    .line 355
    invoke-virtual {v3}, Landroid/util/IntArray;->toArray()[I

    move-result-object v6

    const-string v2, "android.intent.action.PACKAGES_UNSUSPENDED"

    move-object/from16 v0, p0

    move-object v3, v4

    move-object v4, v6

    move/from16 v5, p4

    .line 354
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    :cond_c6
    return-void
.end method

.method public final sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V
    .registers 12

    .line 687
    iget-object v0, p0, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz p2, :cond_b

    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    goto :goto_d

    :cond_b
    const-string v1, "android.intent.action.MY_PACKAGE_UNSUSPENDED"

    :goto_d
    move-object v7, v1

    .line 691
    new-instance v1, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;

    move-object v2, v1

    move-object v3, p0

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/SuspendPackageHelper;ZI[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V
    .registers 23
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, p5

    .line 619
    new-instance v7, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 620
    new-instance v8, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 621
    new-instance v9, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x1

    new-array v10, v3, [I

    const/4 v4, 0x0

    aput v2, v10, v4

    move v5, v4

    .line 625
    :goto_21
    array-length v11, v1

    if-ge v5, v11, :cond_a5

    .line 626
    aget-object v11, v1, v5

    .line 627
    aget v12, p4, v5

    .line 628
    iget-object v13, v6, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerServiceInjector;->getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;

    move-result-object v13

    const/16 v14, 0x3e8

    .line 629
    invoke-interface {v0, v11, v14}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;I)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v14

    .line 630
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/Computer;->getPackageStates()Landroid/util/ArrayMap;

    move-result-object v15

    .line 628
    invoke-virtual {v13, v0, v14, v10, v15}, Lcom/android/server/pm/AppsFilterBase;->getVisibilityAllowList(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/pkg/PackageStateInternal;[ILandroid/util/ArrayMap;)Landroid/util/SparseArray;

    move-result-object v13

    if-nez v13, :cond_43

    .line 632
    new-instance v13, Landroid/util/SparseArray;

    invoke-direct {v13, v4}, Landroid/util/SparseArray;-><init>(I)V

    :cond_43
    move v14, v4

    .line 635
    :goto_44
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_7c

    .line 636
    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [I

    invoke-virtual {v13, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, [I

    invoke-static {v15, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 637
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-interface {v8, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/IntArray;

    invoke-virtual {v4, v12}, Landroid/util/IntArray;->add(I)V

    move v4, v3

    goto :goto_7d

    :cond_78
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_44

    :cond_7c
    const/4 v4, 0x0

    :goto_7d
    if-nez v4, :cond_9f

    .line 644
    new-instance v4, Ljava/util/ArrayList;

    new-array v14, v3, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-array v4, v3, [I

    aput v12, v4, v15

    .line 645
    invoke-static {v4}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    :cond_9f
    const/4 v15, 0x0

    :goto_a0
    add-int/lit8 v5, v5, 0x1

    move v4, v15

    goto/16 :goto_21

    :cond_a5
    move v15, v4

    .line 650
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getHandler()Landroid/os/Handler;

    move-result-object v11

    .line 651
    :goto_ac
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_10a

    .line 652
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 654
    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v1, "android.intent.extra.changed_package_list"

    .line 653
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 655
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/IntArray;

    invoke-virtual {v0}, Landroid/util/IntArray;->toArray()[I

    move-result-object v0

    const-string v1, "android.intent.extra.changed_uid_list"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 656
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_f2

    const/4 v0, 0x0

    goto :goto_f8

    .line 657
    :cond_f2
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    :goto_f8
    move-object v5, v0

    .line 658
    new-instance v12, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v4, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/SuspendPackageHelper;Ljava/lang/String;Landroid/os/Bundle;[ILandroid/util/SparseArray;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_ac

    :cond_10a
    return-void
.end method

.method public setPackagesSuspended(Lcom/android/server/pm/Computer;[Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;II)[Ljava/lang/String;
    .registers 29

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v7, p3

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v2, p9

    .line 104
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v1

    :cond_15
    const-string v3, "PackageManager"

    if-eqz v7, :cond_34

    .line 107
    invoke-virtual {v6, v0, v9, v2}, Lcom/android/server/pm/SuspendPackageHelper;->isSuspendAllowedForUser(Lcom/android/server/pm/Computer;II)Z

    move-result v4

    if-nez v4, :cond_34

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot suspend due to restrictions on user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 112
    :cond_34
    new-instance v5, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v4, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct {v5, v11, v4, v10}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)V

    .line 115
    new-instance v10, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    new-instance v12, Landroid/util/IntArray;

    array-length v4, v1

    invoke-direct {v12, v4}, Landroid/util/IntArray;-><init>(I)V

    .line 119
    new-instance v13, Landroid/util/ArraySet;

    array-length v4, v1

    invoke-direct {v13, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 120
    new-instance v14, Landroid/util/IntArray;

    array-length v4, v1

    invoke-direct {v14, v4}, Landroid/util/IntArray;-><init>(I)V

    if-eqz v7, :cond_64

    .line 123
    invoke-virtual {v6, v0, v1, v9, v2}, Lcom/android/server/pm/SuspendPackageHelper;->canSuspendPackageForUser(Lcom/android/server/pm/Computer;[Ljava/lang/String;II)[Z

    move-result-object v4

    goto :goto_65

    :cond_64
    const/4 v4, 0x0

    :goto_65
    const/4 v15, 0x0

    .line 124
    :goto_66
    array-length v6, v1

    move-object/from16 p5, v14

    if-ge v15, v6, :cond_156

    .line 125
    aget-object v6, v1, v15

    .line 126
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a6

    .line 127
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling package: "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " trying to "

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_8a

    const-string v1, ""

    goto :goto_8d

    :cond_8a
    const-string/jumbo v1, "un"

    .line 128
    :goto_8d
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "suspend itself. Ignoring"

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_a0
    move-object/from16 v14, p5

    move-object/from16 v16, v5

    goto/16 :goto_14a

    .line 133
    :cond_a6
    invoke-interface {v0, v6}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v1

    if-eqz v1, :cond_12a

    .line 135
    invoke-interface {v0, v1, v2, v9}, Lcom/android/server/pm/Computer;->shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z

    move-result v16

    if-eqz v16, :cond_b4

    goto/16 :goto_12a

    :cond_b4
    if-eqz v4, :cond_be

    .line 141
    aget-boolean v16, v4, v15

    if-nez v16, :cond_be

    .line 142
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a0

    .line 147
    :cond_be
    invoke-interface {v1, v9}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v14

    if-nez v14, :cond_ca

    const/4 v0, 0x0

    goto :goto_d2

    .line 150
    :cond_ca
    invoke-virtual {v14, v6}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/pm/pkg/SuspendParams;

    move-object/from16 v0, v16

    .line 151
    :goto_d2
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v16, 0x1

    xor-int/lit8 v0, v0, 0x1

    if-eqz v7, :cond_ed

    if-nez v0, :cond_ed

    .line 155
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-virtual {v12, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_a0

    .line 162
    :cond_ed
    invoke-static {v14}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Map;)I

    move-result v2

    move-object/from16 v16, v5

    if-nez v7, :cond_101

    const/4 v5, 0x1

    if-eqz v2, :cond_102

    if-ne v2, v5, :cond_101

    .line 164
    invoke-virtual {v14, v8}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    goto :goto_102

    :cond_101
    const/4 v5, 0x0

    :cond_102
    :goto_102
    if-nez v7, :cond_106

    if-eqz v5, :cond_114

    .line 168
    :cond_106
    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v2

    invoke-static {v9, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/util/IntArray;->add(I)V

    :cond_114
    if-eqz v0, :cond_127

    .line 173
    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageState;->getAppId()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    move-object/from16 v14, p5

    invoke-virtual {v14, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_14a

    :cond_127
    move-object/from16 v14, p5

    goto :goto_14a

    :cond_12a
    :goto_12a
    move-object/from16 v14, p5

    move-object/from16 v16, v5

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find package setting for package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ". Skipping suspending/un-suspending."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_14a
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p9

    move-object/from16 v5, v16

    goto/16 :goto_66

    :cond_156
    move-object/from16 v6, p0

    move-object/from16 v14, p5

    move-object/from16 v16, v5

    const/4 v5, 0x1

    .line 178
    iget-object v15, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;

    move-object v0, v4

    move-object v1, v13

    move/from16 v2, p8

    move/from16 v3, p3

    move-object/from16 v17, v10

    move-object v10, v4

    move-object/from16 v4, p7

    move/from16 v18, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper$$ExternalSyntheticLambda3;-><init>(Landroid/util/ArraySet;IZLjava/lang/String;Lcom/android/server/pm/pkg/SuspendParams;)V

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v10}, Lcom/android/server/pm/PackageManagerService;->commitPackageStateMutation(Lcom/android/server/pm/pkg/mutate/PackageStateMutator$InitialState;Ljava/util/function/Consumer;)Lcom/android/server/pm/pkg/mutate/PackageStateMutator$Result;

    .line 192
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v10

    .line 194
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1aa

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 195
    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    if-eqz v7, :cond_192

    const-string v0, "android.intent.action.PACKAGES_SUSPENDED"

    goto :goto_194

    :cond_192
    const-string v0, "android.intent.action.PACKAGES_UNSUSPENDED"

    :goto_194
    move-object v2, v0

    .line 199
    invoke-virtual {v12}, Landroid/util/IntArray;->toArray()[I

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v3, v15

    move/from16 v5, p8

    .line 196
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    .line 200
    invoke-virtual {v6, v15, v7, v9}, Lcom/android/server/pm/SuspendPackageHelper;->sendMyPackageSuspendedOrUnsuspended([Ljava/lang/String;ZI)V

    .line 201
    iget-object v0, v6, Lcom/android/server/pm/SuspendPackageHelper;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageManagerService;->scheduleWritePackageRestrictions(I)V

    .line 203
    :cond_1aa
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_WA_SUSPEND_CTS:Z

    if-eqz v0, :cond_1e7

    if-nez v7, :cond_1bf

    .line 204
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1bf

    const-string v0, "com.samsung.android.forest"

    .line 205
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bf

    goto :goto_1c1

    :cond_1bf
    const/16 v18, 0x0

    :goto_1c1
    if-eqz v18, :cond_1c4

    goto :goto_209

    .line 210
    :cond_1c4
    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_209

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 212
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move-object/from16 p1, v10

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move/from16 p5, p8

    .line 211
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    goto :goto_209

    .line 217
    :cond_1e7
    invoke-virtual {v13}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_209

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    .line 219
    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v14}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGES_SUSPENSION_CHANGED"

    move-object/from16 p1, v10

    move-object/from16 p2, v2

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move/from16 p5, p8

    .line 218
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/pm/SuspendPackageHelper;->sendPackagesSuspendedForUser(Lcom/android/server/pm/Computer;Ljava/lang/String;[Ljava/lang/String;[II)V

    :cond_209
    :goto_209
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v1, v17

    .line 222
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
