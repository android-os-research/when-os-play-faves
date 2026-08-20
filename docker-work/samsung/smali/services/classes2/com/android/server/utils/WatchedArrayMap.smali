.class public Lcom/android/server/utils/WatchedArrayMap;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArrayMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Lcom/android/server/utils/Snappable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/utils/WatchableImpl;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Lcom/android/server/utils/Snappable;"
    }
.end annotation


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 4

    .line 148
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayMap$1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1, p2}, Landroid/util/ArrayMap;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayMap$1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    .line 166
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayMap$1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayMap$1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    .line 156
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    if-eqz p1, :cond_19

    .line 158
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    :cond_19
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "TK;TV;>;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_2a

    .line 463
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_26

    .line 466
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 467
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 470
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 461
    :cond_2a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clear()V
    .registers 4

    .line 216
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_19

    .line 217
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_19

    .line 219
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 222
    :cond_19
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    .line 231
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 2

    .line 239
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public copyFrom(Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->clear()V

    .line 181
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 182
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_1d

    .line 184
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1d
    return-void
.end method

.method public copyTo(Landroid/util/ArrayMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 192
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 193
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1b

    .line 196
    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 247
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 255
    instance-of v0, p1, Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_f

    .line 256
    check-cast p1, Lcom/android/server/utils/WatchedArrayMap;

    .line 257
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 268
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    .line 276
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 378
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 390
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 355
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 292
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final onChanged()V
    .registers 1

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 301
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->registerChild(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 311
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_20
    return-void
.end method

.method public final registerChild(Ljava/lang/Object;)V
    .registers 3

    .line 67
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 68
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .registers 4

    .line 104
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_21

    .line 107
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 108
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_13
    if-ge v0, p1, :cond_21

    .line 110
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_21
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChildIf(Ljava/lang/Object;)V

    .line 323
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 424
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChildIf(Ljava/lang/Object;)V

    .line 425
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_11

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChildIf(Ljava/lang/Object;)V

    .line 407
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->registerChild(Ljava/lang/Object;)V

    .line 408
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    :cond_11
    return-object p1
.end method

.method public size()I
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 436
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    .line 437
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .registers 1

    .line 35
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 447
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    return-void
.end method

.method public final unregisterChild(Ljava/lang/Object;)V
    .registers 3

    .line 78
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_f

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_f

    .line 79
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_f
    return-void
.end method

.method public final unregisterChildIf(Ljava/lang/Object;)V
    .registers 3

    .line 91
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_17

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_17

    .line 92
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 93
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_17
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .registers 5

    .line 121
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_21

    .line 123
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, p1, :cond_1f

    .line 125
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 128
    :cond_1f
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    :cond_21
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 368
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 340
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
