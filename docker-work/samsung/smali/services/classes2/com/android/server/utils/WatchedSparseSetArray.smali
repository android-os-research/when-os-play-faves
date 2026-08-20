.class public Lcom/android/server/utils/WatchedSparseSetArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseSetArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mStorage:Landroid/util/SparseSetArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 38
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 39
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-direct {v0}, Landroid/util/SparseSetArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseSetArray;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->untrackedStorage()Landroid/util/SparseSetArray;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/SparseSetArray;-><init>(Landroid/util/SparseSetArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseSetArray;Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 11

    .line 164
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    if-nez v0, :cond_30

    .line 167
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseSetArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_2c

    .line 169
    invoke-virtual {p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object v3

    .line 170
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    move v5, v1

    :goto_17
    if-ge v5, v4, :cond_29

    .line 172
    iget-object v6, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p1, v2}, Lcom/android/server/utils/WatchedSparseSetArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v3, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 175
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 165
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->add(ILjava/lang/Object;)Z

    move-result p1

    .line 63
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    return p1
.end method

.method public clear()V
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    return-void
.end method

.method public contains(ILjava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 79
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->contains(ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public get(I)Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .line 86
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->get(I)Landroid/util/ArraySet;

    move-result-object p0

    return-object p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public remove(I)V
    .registers 3

    .line 105
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseSetArray;->remove(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    return-void
.end method

.method public remove(ILjava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 95
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseSetArray;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method public size()I
    .registers 1

    .line 113
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0}, Landroid/util/SparseSetArray;->size()I

    move-result p0

    return p0
.end method

.method public sizeAt(I)I
    .registers 2

    .line 127
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseSetArray;->sizeAt(I)I

    move-result p0

    return p0
.end method

.method public snapshot()Ljava/lang/Object;
    .registers 2

    .line 140
    new-instance v0, Lcom/android/server/utils/WatchedSparseSetArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseSetArray;-><init>(Lcom/android/server/utils/WatchedSparseSetArray;)V

    .line 141
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseSetArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseSetArray<",
            "TT;>;)V"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseSetArray;->snapshot(Lcom/android/server/utils/WatchedSparseSetArray;Lcom/android/server/utils/WatchedSparseSetArray;)V

    return-void
.end method

.method public untrackedStorage()Landroid/util/SparseSetArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseSetArray<",
            "TT;>;"
        }
    .end annotation

    .line 54
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    return-object p0
.end method

.method public valueAt(II)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseSetArray;->mStorage:Landroid/util/SparseSetArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseSetArray;->valueAt(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
