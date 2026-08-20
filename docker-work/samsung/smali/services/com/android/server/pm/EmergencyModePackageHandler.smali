.class public Lcom/android/server/pm/EmergencyModePackageHandler;
.super Ljava/lang/Object;
.source "EmergencyModePackageHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;,
        Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    }
.end annotation


# static fields
.field public static final EMPTY_INT_ARRAY:[I

.field public static final EM_CANCEL_SENDING_BROADCAST:I = 0x5

.field public static final EM_CHECK_TIMEOUT_OF_BROADCAST:I = 0x3

.field public static final EM_MAKE_PENDING_BROADCAST:I = 0x1

.field public static final EM_SEND_FINISHING_INTENT:I = 0x4

.field public static final EM_SEND_PENDING_BROADCAST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EMPkgHandler"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

.field public final mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

.field public final mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

.field public final mSettings:Lcom/android/server/pm/Settings;

.field public mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$mhandlePendingBroadcastsForBurst(Lcom/android/server/pm/EmergencyModePackageHandler;[Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msendPackageChangedBroadcastWithReceiver(Lcom/android/server/pm/EmergencyModePackageHandler;Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/EmergencyModePackageHandler;->sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 59
    sput-object v0, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/Settings;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/ProtectedPackages;Landroid/os/Looper;)V
    .registers 9

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    new-instance v0, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-direct {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    .line 70
    iput-object p3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    .line 71
    iput-object p5, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 72
    iput-object p6, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 73
    new-instance p1, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-direct {p1, p0, p7}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;-><init>(Lcom/android/server/pm/EmergencyModePackageHandler;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    .line 74
    iput-object p4, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public cancelEMPHandlerSendPendingBroadcast()V
    .registers 3

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz v0, :cond_1e

    .line 599
    invoke-virtual {v0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "EMPkgHandler"

    const-string v1, "cancelEMHandlerSendPendingBroadcast : Already done"

    .line 601
    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 606
    :cond_18
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1e
    return-void
.end method

.method public getEMPackageHanderObj()Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;
    .registers 1

    .line 326
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    return-object p0
.end method

.method public final getIPackageManager()Landroid/content/pm/IPackageManager;
    .registers 1

    .line 455
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    return-object p0
.end method

.method public getPendingBroadcastsForBurst()Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;
    .registers 1

    .line 427
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    return-object p0
.end method

.method public getProgressionOfPackageChanged()I
    .registers 1

    .line 590
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    if-eqz p0, :cond_9

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;->getProgressionOfPackageChanged()I

    move-result p0

    return p0

    :cond_9
    const/4 p0, -0x1

    return p0
.end method

.method public final handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I[Z[II)I"
        }
    .end annotation

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handlePendingBroadcastsForBurst size["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMPkgHandler"

    invoke-static {v1, v0}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-gtz p6, :cond_20

    return v0

    :cond_20
    move v1, v0

    move v2, v1

    .line 553
    :goto_22
    iget-object v3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v3}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdCount()I

    move-result v3

    if-ge v1, v3, :cond_9f

    .line 554
    iget-object v3, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v3, v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->userIdAt(I)I

    move-result v3

    .line 555
    iget-object v4, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    .line 556
    invoke-virtual {v4, v3}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v4

    .line 557
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 558
    iget-object v5, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->packagesNewStateForUserId(I)Ljava/util/LinkedHashMap;

    move-result-object v5

    if-eqz v5, :cond_9c

    .line 560
    :cond_46
    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9c

    if-ge v2, p6, :cond_9c

    .line 561
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 562
    iget-object v7, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v7, v7, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageSetting;

    if-eqz v7, :cond_46

    .line 564
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, p1, v2

    .line 565
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    aput-object v6, p2, v2

    .line 566
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    aput v6, p3, v2

    .line 567
    aget-object v6, p1, v2

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 568
    aput v6, p5, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_92

    .line 571
    aput-boolean v7, p4, v2

    goto :goto_99

    :cond_92
    if-nez v6, :cond_97

    .line 573
    aput-boolean v7, p4, v2

    goto :goto_99

    .line 576
    :cond_97
    aput-boolean v0, p4, v2

    :goto_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    :cond_9c
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 583
    :cond_9f
    iget-object p0, p0, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->clear()V

    return v2
.end method

.method public isKnox(I)Z
    .registers 2

    .line 611
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p0

    return p0
.end method

.method public final sendPackageChangedBroadcastWithReceiver(Ljava/lang/String;ZLjava/util/ArrayList;ILandroid/content/IIntentReceiver;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Landroid/content/IIntentReceiver;",
            "I)V"
        }
    .end annotation

    move-object/from16 v1, p3

    .line 433
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v3, 0x0

    .line 436
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/pm/EmergencyModePackageHandler;->getIPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_14

    move-object/from16 v6, p1

    :try_start_d
    invoke-interface {v0, v6, v2}, Landroid/content/pm/IPackageManager;->isInstantApp(Ljava/lang/String;I)Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception v0

    goto :goto_17

    :catch_14
    move-exception v0

    move-object/from16 v6, p1

    .line 438
    :goto_17
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v0, v3

    .line 440
    :goto_1b
    sget-object v4, Lcom/android/server/pm/EmergencyModePackageHandler;->EMPTY_INT_ARRAY:[I

    const/4 v5, 0x1

    if-eqz v0, :cond_26

    new-array v0, v5, [I

    aput v2, v0, v3

    move-object v12, v0

    goto :goto_27

    :cond_26
    move-object v12, v4

    .line 442
    :goto_27
    new-instance v7, Landroid/os/Bundle;

    const/4 v0, 0x4

    invoke-direct {v7, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 443
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "android.intent.extra.changed_component_name"

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 445
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v1, "android.intent.extra.changed_component_name_list"

    .line 446
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "android.intent.extra.DONT_KILL_APP"

    move/from16 v1, p2

    .line 447
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "android.intent.extra.UID"

    move/from16 v1, p4

    .line 448
    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "EM_PKG_HADNLER_ID"

    move/from16 v2, p6

    .line 449
    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object v2, p0

    .line 450
    iget-object v4, v2, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    new-array v11, v5, [I

    .line 451
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    aput v0, v11, v3

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v6, p1

    move-object/from16 v10, p5

    .line 450
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public setApplicationEnabledSettingWithList(Ljava/util/List;IIZZILjava/lang/String;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IIZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p4

    move/from16 v1, p5

    move/from16 v2, p6

    if-eqz p1, :cond_187

    .line 460
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_187

    .line 465
    :cond_12
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1b

    return-void

    :cond_1b
    if-nez p7, :cond_27

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_29

    :cond_27
    move-object/from16 v3, p7

    :goto_29
    and-int/lit8 v0, p3, -0x2

    or-int/lit8 v4, v0, 0x4

    const-string v0, "EMPkgHandler"

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setApplicationEnabledSettingWithList usePending = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "  Start now = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v0, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .line 484
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 485
    array-length v7, v5

    const/16 v16, 0x0

    move/from16 v15, v16

    :goto_5c
    if-ge v15, v7, :cond_11f

    aget v14, v5, v15

    .line 487
    invoke-virtual {v8, v14}, Lcom/android/server/pm/EmergencyModePackageHandler;->isKnox(I)Z

    move-result v0

    if-eqz v0, :cond_81

    const-string v0, "EMPkgHandler"

    .line 488
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setApplicationEnabledSettingWithList- skip knox user = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v17, v15

    goto/16 :goto_11b

    :cond_81
    const-string v0, "EMPkgHandler"

    .line 491
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setApplicationEnabledSettingWithList - user id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 493
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_cf

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 494
    iget-object v11, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v11, v14, v10}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_cb

    const-string v11, "EMPkgHandler"

    .line 495
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setApplicationEnabledSettingWithList- skip ProtectedPackage = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9f

    .line 498
    :cond_cb
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9f

    .line 502
    :cond_cf
    :try_start_cf
    iget-object v10, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;
    :try_end_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_cf .. :try_end_d1} :catch_fe
    .catch Ljava/lang/SecurityException; {:try_start_cf .. :try_end_d1} :catch_e0

    move-object v11, v6

    move/from16 v12, p2

    move v13, v4

    move/from16 v17, v15

    move-object v15, v3

    :try_start_d8
    invoke-virtual/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->setEnabledSettingEMPkgHndlr(Ljava/util/ArrayList;IIILjava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d8 .. :try_end_db} :catch_de
    .catch Ljava/lang/SecurityException; {:try_start_d8 .. :try_end_db} :catch_dc

    goto :goto_11b

    :catch_dc
    move-exception v0

    goto :goto_e3

    :catch_de
    move-exception v0

    goto :goto_101

    :catch_e0
    move-exception v0

    move/from16 v17, v15

    :goto_e3
    const-string v10, "EMPkgHandler"

    .line 507
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnabledSettingEMPkgHndlr :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_11b

    :catch_fe
    move-exception v0

    move/from16 v17, v15

    :goto_101
    const-string v10, "EMPkgHandler"

    .line 504
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setEnabledSettingEMPkgHndlr :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_11b
    add-int/lit8 v15, v17, 0x1

    goto/16 :goto_5c

    :cond_11f
    const-string v0, "EMPkgHandler"

    const-string/jumbo v3, "setApplicationEnabledSettingWithList"

    .line 512
    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object v10, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    monitor-enter v10

    const/4 v0, 0x0

    if-eqz v9, :cond_146

    if-eqz v1, :cond_167

    .line 516
    :try_start_12f
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_167

    .line 517
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 518
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 519
    iget-object v2, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mEMPackageHander:Lcom/android/server/pm/EmergencyModePackageHandler$EMPackageHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_167

    .line 523
    :cond_146
    iget-object v1, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPendingBroadcastsForBurst:Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;

    if-eqz v1, :cond_167

    .line 524
    invoke-virtual {v1}, Lcom/android/server/pm/EmergencyModePackageHandler$PendingPackageBroadcastsWithList;->size()I

    move-result v7

    if-gtz v7, :cond_152

    .line 526
    monitor-exit v10

    return-void

    .line 528
    :cond_152
    new-array v0, v7, [Ljava/lang/String;

    .line 529
    new-array v11, v7, [Ljava/util/ArrayList;

    .line 530
    new-array v12, v7, [I

    .line 531
    new-array v13, v7, [Z

    .line 532
    new-array v6, v7, [I

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    .line 533
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/EmergencyModePackageHandler;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[Z[II)I

    move-result v1

    goto :goto_16c

    :cond_167
    :goto_167
    move-object v11, v0

    move-object v12, v11

    move-object v13, v12

    move/from16 v1, v16

    .line 536
    :goto_16c
    monitor-exit v10
    :try_end_16d
    .catchall {:try_start_12f .. :try_end_16d} :catchall_184

    if-nez v9, :cond_183

    move/from16 v2, v16

    :goto_171
    if-ge v2, v1, :cond_183

    .line 541
    iget-object v3, v8, Lcom/android/server/pm/EmergencyModePackageHandler;->mPkgMgrSvc:Lcom/android/server/pm/PackageManagerService;

    aget-object v4, v0, v2

    aget-boolean v5, v13, v2

    aget-object v6, v11, v2

    aget v7, v12, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcastEMPkgHndlr(Ljava/lang/String;ZLjava/util/ArrayList;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_171

    :cond_183
    return-void

    :catchall_184
    move-exception v0

    .line 536
    :try_start_185
    monitor-exit v10
    :try_end_186
    .catchall {:try_start_185 .. :try_end_186} :catchall_184

    throw v0

    :cond_187
    :goto_187
    const-string v0, "EMPkgHandler"

    const-string/jumbo v1, "list of PackageName is invalid"

    .line 461
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
