.class public final Lcom/android/server/pm/PendingPackageBroadcasts;
.super Ljava/lang/Object;
.source "PendingPackageBroadcasts.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mUidMap:Landroid/util/SparseArray;
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
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ZF3PgbY60LDKwKcT3Tqd6J1Z3AI(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PendingPackageBroadcasts;->lambda$getOrAllocate$0(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v0}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    .line 44
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static synthetic lambda$getOrAllocate$0(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 1

    .line 141
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addComponent(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 63
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->getOrAllocate(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 66
    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public addComponents(ILjava/lang/String;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PendingPackageBroadcasts;->getOrAllocate(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    .line 75
    :goto_8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_20

    .line 76
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 78
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    .line 81
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public clear()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    .line 119
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public copiedMap()Landroid/util/SparseArray;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 103
    :goto_a
    iget-object v4, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_49

    .line 104
    iget-object v4, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    .line 105
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    move v6, v2

    .line 106
    :goto_20
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_3d

    .line 107
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    new-instance v8, Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v4, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 107
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 110
    :cond_3d
    iget-object v4, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 112
    :cond_49
    monitor-exit v0

    return-object v1

    :catchall_4b
    move-exception p0

    .line 113
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public final getOrAllocate(I)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_17

    .line 126
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 127
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 129
    :cond_17
    monitor-exit v0

    return-object v1

    :catchall_19
    move-exception p0

    .line 130
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final getOrAllocate(ILjava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_17

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 138
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 141
    :cond_17
    new-instance p0, Lcom/android/server/pm/PendingPackageBroadcasts$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/pm/PendingPackageBroadcasts$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p2, p0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    monitor-exit v0

    return-object p0

    :catchall_24
    move-exception p0

    .line 142
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public hasPackage(ILjava/lang/String;)Z
    .registers 4

    .line 48
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_15

    .line 50
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 51
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public put(ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PendingPackageBroadcasts;->getOrAllocate(I)Landroid/util/ArrayMap;

    move-result-object p0

    .line 57
    invoke-virtual {p0, p2, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public remove(I)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 95
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 96
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public remove(ILjava/lang/String;)V
    .registers 4

    .line 85
    iget-object v0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PendingPackageBroadcasts;->mUidMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-eqz p0, :cond_10

    .line 88
    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method
