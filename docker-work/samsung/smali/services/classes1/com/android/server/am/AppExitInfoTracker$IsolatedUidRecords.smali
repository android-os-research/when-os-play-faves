.class public final Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "IsolatedUidRecords"
.end annotation


# instance fields
.field public final mIsolatedUidToUidMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUidToIsolatedUidMap:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppExitInfoTracker;)V
    .registers 2

    .line 1560
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1561
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    .line 1562
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 6

    .line 1566
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1567
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    if-nez v1, :cond_1b

    .line 1569
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1570
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1572
    :cond_1b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1574
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1575
    monitor-exit v0

    return-void

    :catchall_2d
    move-exception p0

    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public getUidByIsolatedUid(I)Ljava/lang/Integer;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1594
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1595
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1596
    :try_start_d
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    monitor-exit v0

    return-object p0

    :catchall_17
    move-exception p0

    .line 1597
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_17

    throw p0

    .line 1599
    :cond_1a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public removeAppUid(IZ)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1615
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p2, :cond_2e

    .line 1617
    :try_start_9
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1618
    iget-object p2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_15
    if-ltz p2, :cond_36

    .line 1619
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1620
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    if-ne p1, v2, :cond_26

    .line 1621
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUidLocked(I)V

    .line 1623
    :cond_26
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_15

    .line 1626
    :cond_2e
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUidLocked(I)V

    .line 1627
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1629
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p0

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_9 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public final removeAppUidLocked(I)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1604
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-eqz p1, :cond_24

    .line 1606
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_10
    if-ltz v0, :cond_24

    .line 1607
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1608
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_10

    :cond_24
    return-void
.end method

.method public removeByUserId(I)V
    .registers 6

    const/4 v0, -0x2

    if-ne p1, v0, :cond_f

    .line 1652
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {p1}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmService(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {p1}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result p1

    .line 1654
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_25

    .line 1656
    :try_start_19
    iget-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1657
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 1658
    monitor-exit v0

    return-void

    .line 1660
    :cond_25
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2d
    if-ltz v1, :cond_53

    .line 1661
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1662
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1663
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_50

    .line 1664
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1665
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_50
    add-int/lit8 v1, v1, -0x1

    goto :goto_2d

    .line 1668
    :cond_53
    monitor-exit v0

    return-void

    :catchall_55
    move-exception p0

    monitor-exit v0
    :try_end_57
    .catchall {:try_start_19 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public removeIsolatedUid(II)V
    .registers 6

    .line 1579
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v0}, Lcom/android/server/am/AppExitInfoTracker;->-$$Nest$fgetmLock(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1580
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p2

    if-ltz p2, :cond_29

    .line 1582
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 1583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1584
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 1585
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1588
    :cond_29
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1589
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public removeIsolatedUidLocked(I)I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1634
    invoke-static {p1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_7

    return p1

    .line 1637
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1b

    return p1

    .line 1641
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mIsolatedUidToUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1642
    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->mUidToIsolatedUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_31

    .line 1644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_31
    return v0
.end method
