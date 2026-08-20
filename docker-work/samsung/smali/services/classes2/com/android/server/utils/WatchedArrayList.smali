.class public Lcom/android/server/utils/WatchedArrayList;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArrayList.java"

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

.field public final mStorage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
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
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 139
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    if-eqz p1, :cond_19

    .line 151
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_19
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedArrayList<",
            "TE;>;",
            "Lcom/android/server/utils/WatchedArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 412
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    if-nez v0, :cond_26

    .line 415
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_22

    .line 418
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 421
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 413
    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 216
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 239
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_22

    .line 240
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move p1, v2

    goto :goto_a

    .line 243
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1f

    .line 225
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 228
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public clear()V
    .registers 4

    .line 258
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 261
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayList;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 264
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    .line 272
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

    .line 279
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public copyFrom(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 175
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    .line 177
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    return-void
.end method

.method public copyTo(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 186
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 187
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_17

    .line 189
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_17
    return-void
.end method

.method public ensureCapacity(I)V
    .registers 2

    .line 286
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 365
    instance-of v0, p1, Lcom/android/server/utils/WatchedArrayList;

    if-eqz v0, :cond_f

    .line 366
    check-cast p1, Lcom/android/server/utils/WatchedArrayList;

    .line 367
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

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

    .line 293
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 378
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 2

    .line 300
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 307
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 2

    .line 314
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

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
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_21

    .line 106
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->unregisterChildIf(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 333
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->unregisterChildIf(Ljava/lang/Object;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_11

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->unregisterChildIf(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    :cond_11
    return-object p1
.end method

.method public size()I
    .registers 1

    .line 357
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 388
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 389
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 31
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->snapshot()Lcom/android/server/utils/WatchedArrayList;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayList<",
            "TE;>;)V"
        }
    .end annotation

    .line 399
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    return-void
.end method

.method public final unregisterChild(Ljava/lang/Object;)V
    .registers 3

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public final unregisterChildIf(Ljava/lang/Object;)V
    .registers 3

    .line 87
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_17

    .line 88
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 89
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

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
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_1f

    .line 121
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayList;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 124
    :cond_1f
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    :cond_21
    return-void
.end method

.method public untrackedStorage()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    return-object p0
.end method
