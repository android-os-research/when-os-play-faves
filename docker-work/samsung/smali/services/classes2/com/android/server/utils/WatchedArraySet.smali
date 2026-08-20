.class public Lcom/android/server/utils/WatchedArraySet;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArraySet.java"

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

.field public final mStorage:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation
.end field

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .line 144
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1, p2}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 159
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 152
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>([Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 430
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_26

    .line 433
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 434
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 436
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 437
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 439
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 431
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return v0
.end method

.method public addAll(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "+TE;>;)V"
        }
    .end annotation

    .line 304
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_11

    .line 306
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_11
    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 296
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public append(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    .line 286
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public clear()V
    .registers 4

    .line 208
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_19

    .line 209
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 211
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 214
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 225
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public copyFrom(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 174
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    .line 177
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method public copyTo(Landroid/util/ArraySet;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 187
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 372
    instance-of v0, p1, Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_f

    .line 373
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/utils/WatchedArraySet;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 375
    :cond_f
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .registers 1

    .line 384
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 2

    .line 242
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final onChanged()V
    .registers 1

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public final registerChild(Ljava/lang/Object;)V
    .registers 3

    .line 63
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 4

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 103
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_21

    .line 106
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 317
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 318
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 346
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    if-ge v2, v0, :cond_1c

    .line 349
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    if-eqz v3, :cond_16

    goto :goto_18

    :cond_16
    move v3, v1

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v3, 0x1

    :goto_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_1c
    return v3
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-object p1
.end method

.method public size()I
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 406
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 407
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArraySet<",
            "TE;>;)V"
        }
    .end annotation

    .line 417
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 396
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterChild(Ljava/lang/Object;)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public final unregisterChildIf(Ljava/lang/Object;)V
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_17

    .line 88
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 89
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_17
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5

    .line 117
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_21

    .line 119
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_1f

    .line 121
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 124
    :cond_1f
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    :cond_21
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArraySet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 255
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
