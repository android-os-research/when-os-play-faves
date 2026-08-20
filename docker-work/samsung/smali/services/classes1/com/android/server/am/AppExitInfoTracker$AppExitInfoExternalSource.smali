.class public final Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AppExitInfoExternalSource"
.end annotation


# static fields
.field public static final APP_EXIT_INFO_FRESHNESS_MS:J = 0x493e0L


# instance fields
.field public final mData:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public final mPresetReason:Ljava/lang/Integer;

.field public mProcDiedListener:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public static synthetic $r8$lambda$nmCCfprBXSJ2b1yXDTJJGtn72Zg(Ljava/util/function/BiConsumer;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->lambda$onProcDied$0(Ljava/util/function/BiConsumer;II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    .line 1755
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1756
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    .line 1757
    iput-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mTag:Ljava/lang/String;

    .line 1758
    iput-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic lambda$onProcDied$0(Ljava/util/function/BiConsumer;II)V
    .registers 3

    .line 1861
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addLocked(IILjava/lang/Object;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1763
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 1765
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1768
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_22

    .line 1770
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1771
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1773
    :cond_22
    new-instance p0, Landroid/util/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public onProcDied(IILjava/lang/Integer;)V
    .registers 7

    .line 1842
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_2f

    const-string v0, "ActivityManager"

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": proc died: pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    if-nez v0, :cond_38

    return-void

    .line 1853
    :cond_38
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1854
    :try_start_3f
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mPresetReason:Ljava/lang/Integer;

    invoke-static {v1, p1, p2, p3, v2}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$mupdateExitInfoIfNecessaryLocked(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1855
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->addLocked(IILjava/lang/Object;)V

    .line 1859
    :cond_4c
    iget-object p3, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mProcDiedListener:Ljava/util/function/BiConsumer;

    if-eqz p3, :cond_60

    .line 1861
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/BiConsumer;II)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1863
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3f .. :try_end_64} :catchall_62

    throw p0
.end method

.method public remove(II)Landroid/util/Pair;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1778
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1779
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 1781
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1784
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz p2, :cond_3e

    .line 1786
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    if-eqz v2, :cond_3e

    .line 1788
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1789
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object p1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result p0

    if-eqz p0, :cond_3c

    move-object v1, v2

    :cond_3c
    monitor-exit v0

    return-object v1

    .line 1792
    :cond_3e
    monitor-exit v0

    return-object v1

    :catchall_40
    move-exception p0

    .line 1793
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_7 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public removeByUidLocked(IZ)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1816
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1817
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1819
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_14
    if-eqz p2, :cond_38

    .line 1824
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1825
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_22
    if-ltz p2, :cond_3d

    .line 1826
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, p1, :cond_35

    .line 1827
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_35
    add-int/lit8 p2, p2, -0x1

    goto :goto_22

    .line 1831
    :cond_38
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_3d
    return-void
.end method

.method public removeByUserId(I)V
    .registers 5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_f

    .line 1798
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    .line 1800
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_20

    .line 1802
    :try_start_19
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1803
    monitor-exit v0

    return-void

    .line 1805
    :cond_20
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_28
    if-ltz v1, :cond_3e

    .line 1806
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 1807
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_3b

    .line 1808
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mData:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_3b
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 1811
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_19 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public setOnProcDiedListener(Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1836
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1837
    :try_start_7
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->mProcDiedListener:Ljava/util/function/BiConsumer;

    .line 1838
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw p0
.end method
