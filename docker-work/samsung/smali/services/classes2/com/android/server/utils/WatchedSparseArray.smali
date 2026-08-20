.class public Lcom/android/server/utils/WatchedSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 130
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 141
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 149
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 156
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 486
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_25

    .line 489
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_21

    .line 491
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 492
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 493
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 495
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 487
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 426
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 427
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public clear()V
    .registers 4

    .line 410
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_19

    .line 411
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 413
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 416
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 417
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public contains(I)Z
    .registers 2

    .line 197
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public copyFrom(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 163
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->clear()V

    .line 164
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 166
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public copyTo(Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 174
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 175
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_18

    .line 177
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_18
    return-void
.end method

.method public delete(I)V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 222
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 437
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v0, :cond_f

    .line 438
    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    .line 439
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 213
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 432
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOfKey(I)I
    .registers 2

    .line 372
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 386
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public indexOfValueByValue(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 400
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfValueByValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .registers 2

    .line 323
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public put(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public final registerChild(Ljava/lang/Object;)V
    .registers 3

    .line 63
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 4

    .line 99
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 102
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 103
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_21

    .line 105
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method public remove(I)V
    .registers 2

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 252
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public removeAtRange(II)V
    .registers 8

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_7
    if-ge v2, p2, :cond_17

    .line 269
    :try_start_9
    iget-object v3, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    add-int v4, v2, p1

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_17

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 275
    :catch_17
    :cond_17
    :try_start_17
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->removeAtRange(II)V
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2c

    :goto_1c
    if-ge v1, p2, :cond_28

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 283
    :cond_28
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void

    :catchall_2c
    move-exception p1

    :goto_2d
    if-ge v1, p2, :cond_39

    .line 280
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 282
    :cond_39
    throw p1
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    return-object p1
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    if-eq p2, v0, :cond_16

    .line 360
    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 361
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 362
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    :cond_16
    return-void
.end method

.method public size()I
    .registers 1

    .line 304
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 462
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(I)V

    .line 463
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 32
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot()Lcom/android/server/utils/WatchedSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 473
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterChild(Ljava/lang/Object;)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public final unregisterChildIf(Ljava/lang/Object;)V
    .registers 4

    .line 86
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_18

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_18

    .line 87
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_18

    .line 88
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_18
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5

    .line 116
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_21

    .line 118
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_1f

    .line 120
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 123
    :cond_1f
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    :cond_21
    return-void
.end method

.method public untrackedStorage()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "TE;>;"
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 343
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
