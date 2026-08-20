.class public final Lcom/android/server/am/AppPermissionTracker;
.super Lcom/android/server/am/BaseAppStateTracker;
.source "AppPermissionTracker.java"

# interfaces
.implements Landroid/content/pm/PackageManager$OnPermissionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;,
        Lcom/android/server/am/AppPermissionTracker$MyHandler;,
        Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;,
        Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/BaseAppStateTracker<",
        "Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;",
        ">;",
        "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;"
    }
.end annotation


# static fields
.field public static final DEBUG_PERMISSION_TRACKER:Z = false

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field public final mAppOpsCallbacks:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAppOpsCallbacks"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

.field public volatile mLockedBootCompleted:Z

.field public mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/am/AppPermissionTracker;)Lcom/android/server/am/AppPermissionTracker$MyHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleAppOpsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsDestroy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleAppOpsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handleAppOpsInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleOpChanged(Lcom/android/server/am/AppPermissionTracker;IILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppPermissionTracker;->handleOpChanged(IILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsChanged(Lcom/android/server/am/AppPermissionTracker;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsDestroy(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsDestroy()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsInit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monPermissionTrackerEnabled(Lcom/android/server/am/AppPermissionTracker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .registers 4

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppPermissionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/am/AppRestrictionController;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/android/server/am/BaseAppStateTracker$Injector<",
            "Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;",
            ">;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 87
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    .line 90
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 103
    new-instance p1, Lcom/android/server/am/AppPermissionTracker$MyHandler;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppPermissionTracker$MyHandler;-><init>(Lcom/android/server/am/AppPermissionTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    .line 104
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p2, p3, p0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppPermissionTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 458
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "APP PERMISSIONS TRACKER:"

    .line 459
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 460
    iget-object v2, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v2

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 463
    array-length v6, v2

    const/4 v8, 0x0

    :goto_3e
    if-ge v8, v6, :cond_107

    aget-object v9, v2, v8

    .line 464
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 465
    iget-object v10, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_56

    .line 467
    iget-object v11, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 469
    :cond_56
    iget-object v11, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_77

    if-nez v10, :cond_68

    const/16 v10, 0x2b

    .line 471
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(C)V

    .line 473
    :cond_68
    iget-object v10, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_77
    const/16 v10, 0x3a

    .line 475
    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(C)V

    .line 476
    iget-object v10, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 477
    :try_start_7f
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 479
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v12, 0x5b

    .line 480
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(C)V

    .line 482
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_8f
    if-ge v13, v12, :cond_f0

    .line 483
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/ArraySet;

    .line 484
    invoke-virtual {v15}, Landroid/util/ArraySet;->size()I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v7, v16

    :goto_a1
    if-ltz v7, :cond_e3

    .line 485
    invoke-virtual {v15, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    move-object/from16 v16, v2

    .line 486
    iget v2, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    move-object/from16 v18, v3

    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_da

    iget-object v2, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 487
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_da

    if-eqz v14, :cond_ce

    const/16 v2, 0x2c

    .line 489
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 492
    :cond_ce
    iget v0, v0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v14, v17

    goto :goto_e7

    :cond_da
    add-int/lit8 v7, v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_a1

    :cond_e3
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    :goto_e7
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto :goto_8f

    :cond_f0
    move-object/from16 v16, v2

    move-object/from16 v18, v3

    const/16 v0, 0x5d

    .line 497
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(C)V

    .line 498
    monitor-exit v10

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, v16

    move-object/from16 v3, v18

    goto/16 :goto_3e

    :catchall_104
    move-exception v0

    monitor-exit v10
    :try_end_106
    .catchall {:try_start_7f .. :try_end_106} :catchall_104

    throw v0

    .line 500
    :cond_107
    invoke-super/range {p0 .. p2}, Lcom/android/server/am/BaseAppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType()I
    .registers 1
    .annotation build Lcom/android/server/am/AppRestrictionController$TrackerType;
    .end annotation

    const/4 p0, 0x5

    return p0
.end method

.method public final handleAppOpsDestroy()V
    .registers 1

    .line 170
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    return-void
.end method

.method public final handleAppOpsInit()V
    .registers 7

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v1

    const/4 v2, 0x0

    .line 120
    :goto_12
    array-length v3, v1

    if-ge v2, v3, :cond_2c

    .line 121
    aget-object v3, v1, v2

    .line 122
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_29

    .line 123
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 126
    :cond_2c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->startWatchingMode([Ljava/lang/Integer;)V

    return-void
.end method

.method public final handleOpChanged(IILjava/lang/String;)V
    .registers 8

    .line 202
    iget-object p3, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {p3}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object p3

    if-eqz p3, :cond_3e

    .line 203
    array-length v0, p3

    if-lez v0, :cond_3e

    const/4 v0, 0x0

    move v1, v0

    .line 204
    :goto_13
    array-length v2, p3

    if-ge v1, v2, :cond_3e

    .line 205
    aget-object v2, p3, v1

    .line 206
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, p1, :cond_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 209
    :cond_25
    new-instance p3, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {p3, p0, p2, v1, p1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 211
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    :try_start_32
    new-array v1, v1, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    aput-object p3, v1, v0

    .line 212
    invoke-virtual {p0, p2, v1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 213
    monitor-exit p1

    goto :goto_3e

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    :goto_3e
    return-void
.end method

.method public final handlePermissionsChanged(I)V
    .registers 8

    .line 223
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 224
    array-length v1, v0

    if-lez v1, :cond_40

    .line 225
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    .line 226
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 227
    array-length v1, v0

    new-array v1, v1, [Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    const/4 v2, 0x0

    .line 229
    :goto_1a
    array-length v3, v0

    if-ge v2, v3, :cond_35

    .line 230
    aget-object v3, v0, v2

    .line 231
    new-instance v4, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v4, p0, p1, v5, v3}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 236
    :cond_35
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_38
    invoke-virtual {p0, p1, v1}, Lcom/android/server/am/AppPermissionTracker;->handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V

    .line 238
    monitor-exit v0

    goto :goto_40

    :catchall_3d
    move-exception p0

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    :goto_40
    return-void
.end method

.method public final handlePermissionsChangedLocked(I[Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_11

    .line 246
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    .line 247
    :goto_12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v11, 0x0

    move v12, v11

    .line 248
    :goto_18
    array-length v2, p2

    if-ge v12, v2, :cond_64

    .line 249
    aget-object v2, p2, v12

    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v5

    const/4 v2, 0x1

    if-eqz v5, :cond_38

    if-nez v1, :cond_31

    .line 253
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 254
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_32

    :cond_31
    move v2, v11

    .line 257
    :goto_32
    aget-object v3, p2, v12

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_38
    if-eqz v1, :cond_54

    .line 258
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_54

    .line 259
    aget-object v3, p2, v12

    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 260
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_55

    :cond_54
    move v2, v11

    :goto_55
    if-eqz v2, :cond_61

    const/16 v8, 0x10

    const-string v4, ""

    move-object v2, p0

    move v3, p1

    move-wide v6, v9

    .line 265
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    :cond_61
    add-int/lit8 v12, v12, 0x1

    goto :goto_18

    :cond_64
    return-void
.end method

.method public final handlePermissionsDestroy()V
    .registers 14

    .line 174
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v11

    move v12, v2

    :goto_f
    if-ge v12, v11, :cond_2e

    .line 179
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 180
    invoke-virtual {v1, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 181
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_2b

    const-string v4, ""

    const/4 v5, 0x0

    const/16 v8, 0x10

    move-object v2, p0

    move-wide v6, v9

    .line 182
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    :cond_2b
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 186
    :cond_2e
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 187
    monitor-exit v0

    return-void

    :catchall_33
    move-exception p0

    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_33

    throw p0
.end method

.method public final handlePermissionsInit()V
    .registers 27

    move-object/from16 v0, p0

    .line 130
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object v8

    .line 131
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v9

    .line 132
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    .line 133
    iget-object v1, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;->getBgPermissionsInMonitor()[Landroid/util/Pair;

    move-result-object v10

    .line 134
    iget-object v11, v0, Lcom/android/server/am/AppPermissionTracker;->mUidGrantedPermissionsInMonitor:Landroid/util/SparseArray;

    .line 136
    array-length v12, v8

    const/4 v14, 0x0

    :goto_27
    if-ge v14, v12, :cond_da

    aget v1, v8, v14

    const-wide/16 v2, 0x0

    const/16 v4, 0x3e8

    .line 137
    invoke-virtual {v9, v2, v3, v1, v4}, Landroid/content/pm/PackageManagerInternal;->getInstalledApplications(JII)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_37

    goto/16 :goto_d6

    .line 141
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 142
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_40
    if-ge v5, v7, :cond_d6

    .line 143
    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 144
    array-length v4, v10

    const/4 v3, 0x0

    :goto_4b
    if-ge v3, v4, :cond_ce

    aget-object v1, v10, v3

    .line 145
    new-instance v2, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    iget v13, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v18, v3

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v2, v0, v13, v3, v1}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;-><init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V

    .line 147
    invoke-virtual {v2}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->isGranted()Z

    move-result v1

    if-nez v1, :cond_73

    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    goto :goto_c0

    .line 151
    :cond_73
    iget-object v13, v0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v13

    .line 152
    :try_start_76
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 153
    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_b4

    .line 155
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 156
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v11, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 159
    iget v1, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v19, ""

    const/16 v20, 0x1

    const/16 v21, 0x10

    move/from16 v22, v1

    move-object/from16 v1, p0

    move-object/from16 v23, v2

    move/from16 v2, v22

    move-object/from16 v22, v3

    move-object/from16 v3, v19

    move/from16 v19, v4

    move/from16 v4, v20

    move/from16 v20, v5

    move-object/from16 v24, v6

    move-wide/from16 v5, v16

    move/from16 v25, v7

    move/from16 v7, v21

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    goto :goto_bc

    :cond_b4
    move/from16 v19, v4

    move/from16 v20, v5

    move-object/from16 v24, v6

    move/from16 v25, v7

    .line 162
    :goto_bc
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 163
    monitor-exit v13

    :goto_c0
    add-int/lit8 v3, v18, 0x1

    move/from16 v4, v19

    move/from16 v5, v20

    move-object/from16 v6, v24

    move/from16 v7, v25

    goto :goto_4b

    :catchall_cb
    move-exception v0

    monitor-exit v13
    :try_end_cd
    .catchall {:try_start_76 .. :try_end_cd} :catchall_cb

    throw v0

    :cond_ce
    move/from16 v20, v5

    move/from16 v25, v7

    add-int/lit8 v5, v20, 0x1

    goto/16 :goto_40

    :cond_d6
    :goto_d6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_27

    :cond_da
    return-void
.end method

.method public onLockedBootCompleted()V
    .registers 2

    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    .line 453
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPermissionTracker$AppPermissionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/AppPermissionTracker;->onPermissionTrackerEnabled(Z)V

    return-void
.end method

.method public final onPermissionTrackerEnabled(Z)V
    .registers 3

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker;->mLockedBootCompleted:Z

    if-nez v0, :cond_5

    return-void

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManager()Landroid/permission/PermissionManager;

    move-result-object v0

    if-eqz p1, :cond_1b

    .line 442
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 443
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_28

    .line 445
    :cond_1b
    invoke-virtual {v0, p0}, Landroid/permission/PermissionManager;->removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    .line 446
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_28
    return-void
.end method

.method public onPermissionsChanged(I)V
    .registers 4

    .line 114
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mHandler:Lcom/android/server/am/AppPermissionTracker$MyHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final startWatchingMode([Ljava/lang/Integer;)V
    .registers 10

    .line 363
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 364
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker;->stopWatchingMode()V

    .line 365
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2a

    .line 367
    :try_start_c
    array-length v2, p1

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_28

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 368
    new-instance v5, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback;-><init>(Lcom/android/server/am/AppPermissionTracker;Lcom/android/server/am/AppPermissionTracker$MyAppOpsCallback-IA;)V

    .line 369
    iget-object v7, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v7, 0x1

    .line 370
    invoke-interface {v1, v4, v6, v7, v5}, Lcom/android/internal/app/IAppOpsService;->startWatchingModeWithFlags(ILjava/lang/String;ILcom/android/internal/app/IAppOpsCallback;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_25} :catch_28
    .catchall {:try_start_c .. :try_end_25} :catchall_2a

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 376
    :catch_28
    :cond_28
    :try_start_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_28 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final stopWatchingMode()V
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v1

    .line 382
    iget-object v2, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_28

    add-int/lit8 v2, v2, -0x1

    :goto_11
    if-ltz v2, :cond_21

    .line 384
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/IAppOpsCallback;

    invoke-interface {v1, v3}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1e} :catch_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_28

    :catch_1e
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 389
    :cond_21
    :try_start_21
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker;->mAppOpsCallbacks:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 390
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw p0
.end method
