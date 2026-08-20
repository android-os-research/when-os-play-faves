.class public Lcom/android/server/usage/BroadcastResponseStatsTracker;
.super Ljava/lang/Object;
.source "BroadcastResponseStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/BroadcastResponseStatsTracker$NotificationEventType;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_EVENT_TYPE_CANCELLED:I = 0x2

.field public static final NOTIFICATION_EVENT_TYPE_POSTED:I = 0x0

.field public static final NOTIFICATION_EVENT_TYPE_UPDATED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ResponseStatsTracker"


# instance fields
.field public mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field public mExemptedRoleHoldersCache:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

.field public final mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

.field public mRoleManager:Landroid/app/role/RoleManager;

.field public mUserBroadcastEvents:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastEvents;",
            ">;"
        }
    .end annotation
.end field

.field public mUserResponseStats:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastResponseStats;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-n26mEnQZeeiUiCyXsJkkQsm1As(Lcom/android/server/usage/BroadcastResponseStatsTracker;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/usage/AppStandbyInternal;)V
    .registers 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/usage/BroadcastResponseStatsTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/BroadcastResponseStatsTracker;)V

    iput-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    .line 99
    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 100
    new-instance p1, Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-direct {p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;-><init>()V

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    return-void
.end method

.method public static getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;I",
            "Ljava/lang/String;",
            "IJ)",
            "Lcom/android/server/usage/BroadcastEvent;"
        }
    .end annotation

    .line 449
    new-instance v6, Lcom/android/server/usage/BroadcastEvent;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/BroadcastEvent;-><init>(ILjava/lang/String;IJ)V

    .line 451
    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_17

    .line 453
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/BroadcastEvent;

    return-object p0

    .line 455
    :cond_17
    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-object v6
.end method


# virtual methods
.method public clearBroadcastEvents(II)V
    .registers 4

    .line 283
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez p0, :cond_f

    .line 286
    monitor-exit v0

    return-void

    .line 288
    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->clear(I)V

    .line 289
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public clearBroadcastResponseStats(ILjava/lang/String;JI)V
    .registers 7

    .line 267
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 268
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 269
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_f

    .line 271
    monitor-exit v0

    return-void

    .line 274
    :cond_f
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_19

    .line 276
    monitor-exit v0

    return-void

    .line 278
    :cond_19
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->clearBroadcastResponseStats(Ljava/lang/String;J)V

    .line 279
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7

    .line 308
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 309
    invoke-interface {p0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedPermissions()Ljava/util/List;

    move-result-object p0

    .line 310
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_c
    if-ltz v0, :cond_22

    .line 311
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 313
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 312
    invoke-static {v2, p1, v3}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 8

    .line 293
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v0}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseExemptedRoles()Ljava/util/List;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 295
    :try_start_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_f
    if-ltz v2, :cond_26

    .line 296
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    invoke-virtual {p0, v4, p2}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 298
    invoke-static {v4, p1}, Lcom/android/internal/util/CollectionUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 299
    monitor-exit v1

    return v3

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_f

    .line 302
    :cond_26
    monitor-exit v1

    const/4 p0, 0x0

    return p0

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "Broadcast response stats:"

    .line 461
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 464
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 466
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 467
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 468
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 470
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 471
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->dumpLogs(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 472
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_b .. :try_end_23} :catchall_27

    .line 474
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_27
    move-exception p0

    .line 472
    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final dumpBroadcastEventsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Broadcast events:"

    .line 479
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 481
    :goto_9
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_44

    .line 482
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 483
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    .line 484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 486
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 487
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 489
    :cond_44
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpResponseStatsLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Response stats:"

    .line 494
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 496
    :goto_a
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_76

    .line 497
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 498
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 499
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 500
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v4, v0

    .line 502
    :goto_3d
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_70

    .line 503
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 505
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/usage/UserBroadcastResponseStats;

    .line 506
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "User "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 508
    invoke-virtual {v6, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 509
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 511
    :cond_70
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 513
    :cond_76
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpRoleHoldersLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    const-string v0, "Role holders:"

    .line 518
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 520
    :goto_a
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_89

    .line 521
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 522
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 523
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    .line 524
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 525
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v2, v0

    .line 526
    :goto_3d
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_83

    .line 527
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 528
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 529
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    move v4, v0

    .line 530
    :goto_64
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7d

    if-lez v4, :cond_71

    const-string v6, ", "

    .line 532
    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 534
    :cond_71
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_64

    .line 536
    :cond_7d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3d

    .line 538
    :cond_83
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 540
    :cond_89
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 390
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    .line 391
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 390
    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez p0, :cond_10

    const/4 p0, 0x0

    return-object p0

    .line 395
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getBroadcastResponseStats(Landroid/util/SparseArray;Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usage/UserBroadcastResponseStats;",
            ">;",
            "Lcom/android/server/usage/BroadcastEvent;",
            ")",
            "Landroid/app/usage/BroadcastResponseStats;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    .line 419
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v0

    .line 418
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p1, :cond_11

    return-object p0

    .line 423
    :cond_11
    invoke-virtual {p1, p2}, Lcom/android/server/usage/UserBroadcastResponseStats;->getBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/usage/BroadcastEvent;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/UserBroadcastEvents;

    if-nez v0, :cond_1c

    .line 404
    new-instance v0, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-direct {v0}, Lcom/android/server/usage/UserBroadcastEvents;-><init>()V

    .line 405
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 407
    :cond_1c
    invoke-virtual {v0, p1}, Lcom/android/server/usage/UserBroadcastEvents;->getOrCreateBroadcastEvents(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 430
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getSourceUid()I

    move-result v0

    .line 431
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 432
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_18

    .line 434
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 435
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    :cond_18
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result p0

    .line 437
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_30

    .line 440
    new-instance p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    invoke-direct {p0}, Lcom/android/server/usage/UserBroadcastResponseStats;-><init>()V

    .line 441
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTargetUserId()I

    move-result v0

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object p0

    return-object p0
.end method

.method public final getRoleHoldersLocked(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 324
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 323
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    if-nez v0, :cond_1c

    .line 326
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 329
    :cond_1c
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_2f

    .line 330
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    if-eqz p0, :cond_2f

    .line 331
    invoke-virtual {p0, p1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 332
    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    return-object v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 6

    .line 360
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserBroadcastEvents;

    if-eqz v1, :cond_10

    .line 363
    invoke-virtual {v1, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onPackageRemoved(Ljava/lang/String;)V

    .line 366
    :cond_10
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_18
    if-ltz v1, :cond_30

    .line 367
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 368
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-eqz v2, :cond_2d

    .line 370
    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastResponseStats;->onPackageRemoved(Ljava/lang/String;)V

    :cond_2d
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 373
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 338
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    .line 340
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_13

    .line 342
    monitor-exit v0

    return-void

    .line 344
    :cond_13
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public onSystemServicesReady(Landroid/content/Context;)V
    .registers 4

    .line 104
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleManager:Landroid/app/role/RoleManager;

    .line 105
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mRoleHoldersChangedListener:Landroid/app/role/OnRoleHoldersChangedListener;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onUidRemoved(I)V
    .registers 5

    .line 377
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 378
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 379
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/UserBroadcastEvents;

    invoke-virtual {v2, p1}, Lcom/android/server/usage/UserBroadcastEvents;->onUidRemoved(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 382
    :cond_1b
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 383
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public onUserRemoved(I)V
    .registers 5

    .line 349
    iget-object v0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserBroadcastEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 352
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_10
    if-ltz v1, :cond_20

    .line 353
    iget-object v2, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_10

    .line 355
    :cond_20
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mExemptedRoleHoldersCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 356
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public queryBroadcastResponseStats(ILjava/lang/String;JI)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "JI)",
            "Ljava/util/List<",
            "Landroid/app/usage/BroadcastResponseStats;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 249
    :try_start_8
    iget-object p0, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mUserResponseStats:Landroid/util/SparseArray;

    .line 250
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    if-nez p0, :cond_14

    .line 252
    monitor-exit v1

    return-object v0

    .line 255
    :cond_14
    invoke-virtual {p0, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/UserBroadcastResponseStats;

    if-nez p0, :cond_1e

    .line 257
    monitor-exit v1

    return-object v0

    .line 259
    :cond_1e
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/usage/UserBroadcastResponseStats;->populateAllBroadcastResponseStats(Ljava/util/List;Ljava/lang/String;J)V

    .line 261
    monitor-exit v1

    return-object v0

    :catchall_23
    move-exception p0

    monitor-exit v1
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public final recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V
    .registers 15
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 225
    invoke-virtual {p1}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 227
    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v1

    .line 228
    iget-object v3, p0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 229
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsDurationMs()J

    move-result-wide v3

    .line 230
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    .line 232
    :goto_16
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->size()I

    move-result v9

    if-lez v9, :cond_3c

    .line 233
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    sub-long v11, v5, v1

    cmp-long v9, v9, v11

    if-gez v9, :cond_3c

    .line 234
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v9

    cmp-long v11, v9, v7

    if-ltz v11, :cond_38

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v7

    const/4 v8, 0x1

    .line 238
    invoke-virtual {v7, v8}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long/2addr v9, v3

    move-wide v7, v9

    .line 241
    :cond_38
    invoke-virtual {v0}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_16

    :cond_3c
    return-void
.end method

.method public reportBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V
    .registers 21

    move-object v0, p0

    move-object v10, p2

    move-object v11, p3

    .line 113
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logBroadcastDispatchEvent(ILjava/lang/String;Landroid/os/UserHandle;JJI)V

    .line 115
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    invoke-interface {v1}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseFgThresholdState()I

    move-result v1

    move/from16 v2, p8

    if-gt v2, v1, :cond_1c

    return-void

    .line 120
    :cond_1c
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedRole(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_23

    return-void

    .line 124
    :cond_23
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->doesPackageHoldExemptedPermission(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_2a

    return-void

    .line 129
    :cond_2a
    iget-object v7, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 131
    :try_start_2d
    invoke-virtual {p0, p2, p3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v1

    .line 133
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    move v2, p1

    move-object v3, p2

    move-wide/from16 v5, p4

    .line 132
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastEvent(Landroid/util/ArraySet;ILjava/lang/String;IJ)Lcom/android/server/usage/BroadcastEvent;

    move-result-object v1

    move-wide/from16 v2, p6

    .line 134
    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/BroadcastEvent;->addTimestampMs(J)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 138
    monitor-exit v7

    return-void

    :catchall_47
    move-exception v0

    monitor-exit v7
    :try_end_49
    .catchall {:try_start_2d .. :try_end_49} :catchall_47

    throw v0
.end method

.method public reportNotificationCancelled(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 154
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public final reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V
    .registers 27

    move-object/from16 v0, p0

    move/from16 v7, p1

    .line 159
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLogger:Lcom/android/server/usage/BroadcastResponseStatsLogger;

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/BroadcastResponseStatsLogger;->logNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    .line 160
    iget-object v1, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 162
    :try_start_18
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getBroadcastEventsLocked(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/util/ArraySet;

    move-result-object v2

    if-nez v2, :cond_20

    .line 164
    monitor-exit v1

    return-void

    .line 166
    :cond_20
    iget-object v3, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 167
    invoke-interface {v3}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastResponseWindowDurationMs()J

    move-result-wide v3

    .line 168
    iget-object v5, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 169
    invoke-interface {v5}, Lcom/android/server/usage/AppStandbyInternal;->getBroadcastSessionsWithResponseDurationMs()J

    move-result-wide v5

    .line 170
    iget-object v8, v0, Lcom/android/server/usage/BroadcastResponseStatsTracker;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 171
    invoke-interface {v8}, Lcom/android/server/usage/AppStandbyInternal;->shouldNoteResponseEventForAllBroadcastSessions()Z

    move-result v8

    .line 172
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    :goto_38
    if-ltz v9, :cond_b3

    .line 173
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/usage/BroadcastEvent;

    .line 174
    invoke-virtual {v0, v11}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->recordAndPruneOldBroadcastDispatchTimestamps(Lcom/android/server/usage/BroadcastEvent;)V

    .line 176
    invoke-virtual {v11}, Lcom/android/server/usage/BroadcastEvent;->getTimestampsMs()Landroid/util/LongArrayQueue;

    move-result-object v12

    const-wide/16 v13, 0x0

    move-wide v15, v13

    .line 180
    :goto_4a
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->size()I

    move-result v17

    if-lez v17, :cond_a7

    .line 181
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    cmp-long v17, v17, p4

    if-gez v17, :cond_a7

    .line 182
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v17

    sub-long v19, p4, v17

    cmp-long v19, v19, v3

    if-gtz v19, :cond_a1

    cmp-long v19, v17, v15

    if-ltz v19, :cond_a1

    cmp-long v15, v15, v13

    if-eqz v15, :cond_6d

    if-nez v8, :cond_6d

    goto :goto_a7

    .line 196
    :cond_6d
    invoke-virtual {v0, v11}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->getOrCreateBroadcastResponseStats(Lcom/android/server/usage/BroadcastEvent;)Landroid/app/usage/BroadcastResponseStats;

    move-result-object v15

    .line 197
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementBroadcastsDispatchedCount(I)V

    add-long v16, v17, v5

    if-eqz v7, :cond_9c

    if-eq v7, v10, :cond_98

    const/4 v13, 0x2

    if-eq v7, v13, :cond_94

    const-string v13, "ResponseStatsTracker"

    .line 211
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unknown event: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 208
    :cond_94
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsCancelledCount(I)V

    goto :goto_9f

    .line 205
    :cond_98
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsUpdatedCount(I)V

    goto :goto_9f

    .line 202
    :cond_9c
    invoke-virtual {v15, v10}, Landroid/app/usage/BroadcastResponseStats;->incrementNotificationsPostedCount(I)V

    :goto_9f
    move-wide/from16 v15, v16

    .line 214
    :cond_a1
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->removeFirst()J

    const-wide/16 v13, 0x0

    goto :goto_4a

    .line 216
    :cond_a7
    :goto_a7
    invoke-virtual {v12}, Landroid/util/LongArrayQueue;->size()I

    move-result v11

    if-nez v11, :cond_b0

    .line 217
    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_b0
    add-int/lit8 v9, v9, -0x1

    goto :goto_38

    .line 220
    :cond_b3
    monitor-exit v1

    return-void

    :catchall_b5
    move-exception v0

    monitor-exit v1
    :try_end_b7
    .catchall {:try_start_18 .. :try_end_b7} :catchall_b5

    throw v0
.end method

.method public reportNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method

.method public reportNotificationUpdated(Ljava/lang/String;Landroid/os/UserHandle;J)V
    .registers 11

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 148
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/BroadcastResponseStatsTracker;->reportNotificationEvent(ILjava/lang/String;Landroid/os/UserHandle;J)V

    return-void
.end method
