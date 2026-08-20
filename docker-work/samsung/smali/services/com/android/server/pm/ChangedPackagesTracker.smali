.class public Lcom/android/server/pm/ChangedPackagesTracker;
.super Ljava/lang/Object;
.source "ChangedPackagesTracker.java"


# instance fields
.field public mChangedPackagesSequenceNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mUserIdToSequenceToPackage:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    .line 52
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getChangedPackages(II)Landroid/content/pm/ChangedPackages;
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    const/4 v2, 0x0

    if-lt p1, v1, :cond_a

    .line 61
    monitor-exit v0

    return-object v2

    .line 63
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/SparseArray;

    if-nez p2, :cond_16

    .line 65
    monitor-exit v0

    return-object v2

    .line 67
    :cond_16
    new-instance v1, Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    sub-int/2addr v3, p1

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 69
    :goto_1e
    iget v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    if-ge p1, v3, :cond_30

    .line 70
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2d

    .line 72
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2d
    add-int/lit8 p1, p1, 0x1

    goto :goto_1e

    .line 75
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_37

    goto :goto_3e

    .line 76
    :cond_37
    new-instance v2, Landroid/content/pm/ChangedPackages;

    iget p0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    invoke-direct {v2, p0, v1}, Landroid/content/pm/ChangedPackages;-><init>(ILjava/util/List;)V

    :goto_3e
    monitor-exit v0

    return-object v2

    :catchall_40
    move-exception p0

    .line 77
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public getSequenceNumber()I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    return p0
.end method

.method public iterateAll(Ljava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 87
    :try_start_3
    iget v1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    invoke-interface {p1, v1, p0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public updateSequenceNumber(Ljava/lang/String;[I)V
    .registers 9

    .line 93
    iget-object v0, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_3
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    :goto_6
    if-ltz v1, :cond_52

    .line 95
    aget v2, p2, v1

    .line 96
    iget-object v3, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_1e

    .line 98
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mUserIdToSequenceToPackage:Landroid/util/SparseArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    :cond_1e
    iget-object v4, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_32

    .line 103
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 104
    iget-object v5, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumbers:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    :cond_32
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_41

    .line 108
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 110
    :cond_41
    iget v2, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 111
    iget v2, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 113
    :cond_52
    iget p1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/pm/ChangedPackagesTracker;->mChangedPackagesSequenceNumber:I

    .line 114
    monitor-exit v0

    return-void

    :catchall_5a
    move-exception p0

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_3 .. :try_end_5c} :catchall_5a

    throw p0
.end method
