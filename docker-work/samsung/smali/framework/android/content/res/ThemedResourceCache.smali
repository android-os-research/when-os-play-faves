.class abstract Landroid/content/res/ThemedResourceCache;
.super Ljava/lang/Object;
.source "ThemedResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mNullThemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private greylist mThemedEntries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/res/Resources$ThemeKey;",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o mUnthemedEntries:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 35
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private greylist-max-o getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;
    .registers 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;
    .param p2, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources$Theme;",
            "Z)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_13

    .line 149
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v1, :cond_10

    if-eqz p2, :cond_10

    .line 150
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    .line 152
    :cond_10
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    return-object v0

    .line 155
    :cond_13
    iget-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v1, :cond_23

    .line 156
    if-eqz p2, :cond_21

    .line 157
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v1, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    goto :goto_23

    .line 159
    :cond_21
    const/4 v0, 0x0

    return-object v0

    .line 163
    :cond_23
    :goto_23
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    move-result-object v1

    .line 164
    .local v1, "key":Landroid/content/res/Resources$ThemeKey;
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    .line 165
    .local v2, "cache":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-nez v2, :cond_42

    if-eqz p2, :cond_42

    .line 166
    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    move-object v2, v3

    .line 168
    invoke-virtual {v1}, Landroid/content/res/Resources$ThemeKey;->clone()Landroid/content/res/Resources$ThemeKey;

    move-result-object v0

    .line 169
    .local v0, "keyClone":Landroid/content/res/Resources$ThemeKey;
    iget-object v3, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .end local v0    # "keyClone":Landroid/content/res/Resources$ThemeKey;
    :cond_42
    return-object v2
.end method

.method private greylist-max-o getUnthemedLocked(Z)Landroid/util/LongSparseArray;
    .registers 4
    .param p1, "create"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    .line 186
    new-instance v0, Landroid/util/LongSparseArray;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    .line 188
    :cond_e
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method private greylist-max-o prune(I)Z
    .registers 5
    .param p1, "configChanges"    # I

    .line 200
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 201
    :try_start_1
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 202
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_23

    .line 203
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 204
    iget-object v2, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 202
    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 209
    .end local v0    # "i":I
    :cond_23
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 210
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    invoke-direct {p0, v0, p1}, Landroid/content/res/ThemedResourceCache;->pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z

    .line 212
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_3a

    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-nez v0, :cond_3a

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    :goto_3b
    monitor-exit p0

    return v1

    .line 214
    :catchall_3d
    move-exception v0

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method private greylist-max-o pruneEntriesLocked(Landroid/util/LongSparseArray;I)Z
    .registers 7
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "TT;>;>;I)Z"
        }
    .end annotation

    .line 219
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 220
    return v0

    .line 223
    :cond_4
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_23

    .line 224
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 225
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Landroid/content/res/ThemedResourceCache;->pruneEntryLocked(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 226
    :cond_1d
    invoke-virtual {p1, v1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 223
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_20
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 230
    .end local v1    # "i":I
    :cond_23
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    return v0
.end method

.method private greylist-max-o pruneEntryLocked(Ljava/lang/Object;I)Z
    .registers 4
    .param p2, "configChanges"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 234
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p1, "entry":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_d

    if-eqz p2, :cond_b

    .line 235
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ThemedResourceCache;->shouldInvalidateEntry(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    .line 234
    :goto_e
    return v0
.end method


# virtual methods
.method public declared-synchronized blacklist clear()V
    .registers 2

    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 239
    :try_start_1
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mThemedEntries:Landroid/util/ArrayMap;

    if-eqz v0, :cond_8

    .line 240
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 243
    .end local p0    # "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    :cond_8
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mUnthemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_f

    .line 244
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 247
    :cond_f
    iget-object v0, p0, Landroid/content/res/ThemedResourceCache;->mNullThemedEntries:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_16

    .line 248
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 250
    :cond_16
    monitor-exit p0

    return-void

    .line 238
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o get(JLandroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 8
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            ")TT;"
        }
    .end annotation

    .line 94
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    monitor-enter p0

    .line 95
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p3, v0}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v1

    .line 96
    .local v1, "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v1, :cond_16

    .line 97
    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 98
    .local v2, "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_16

    .line 99
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 103
    .end local v2    # "themedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_16
    invoke-direct {p0, v0}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 104
    .local v0, "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    if-eqz v0, :cond_2a

    .line 105
    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 106
    .local v2, "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    if-eqz v2, :cond_2a

    .line 107
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    monitor-exit p0

    return-object v3

    .line 110
    .end local v0    # "unthemedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v1    # "themedEntries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    .end local v2    # "unthemedEntry":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<TT;>;"
    :cond_2a
    monitor-exit p0

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 110
    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_2 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public greylist onConfigurationChange(I)V
    .registers 2
    .param p1, "configChanges"    # I

    .line 123
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    invoke-direct {p0, p1}, Landroid/content/res/ThemedResourceCache;->prune(I)Z

    .line 124
    return-void
.end method

.method public greylist-max-o put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;)V
    .registers 11
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ThemedResourceCache;->put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V

    .line 51
    return-void
.end method

.method public greylist-max-o put(JLandroid/content/res/Resources$Theme;Ljava/lang/Object;Z)V
    .registers 8
    .param p1, "key"    # J
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .param p5, "usesTheme"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Landroid/content/res/Resources$Theme;",
            "TT;Z)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Landroid/content/res/ThemedResourceCache;, "Landroid/content/res/ThemedResourceCache<TT;>;"
    .local p4, "entry":Ljava/lang/Object;, "TT;"
    if-nez p4, :cond_3

    .line 65
    return-void

    .line 68
    :cond_3
    monitor-enter p0

    .line 70
    const/4 v0, 0x1

    if-nez p5, :cond_c

    .line 71
    :try_start_7
    invoke-direct {p0, v0}, Landroid/content/res/ThemedResourceCache;->getUnthemedLocked(Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .local v0, "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    goto :goto_10

    .line 73
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_c
    invoke-direct {p0, p3, v0}, Landroid/content/res/ThemedResourceCache;->getThemedLocked(Landroid/content/res/Resources$Theme;Z)Landroid/util/LongSparseArray;

    move-result-object v0

    .line 75
    .restart local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :goto_10
    if-eqz v0, :cond_1a

    .line 76
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 78
    .end local v0    # "entries":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Ljava/lang/ref/WeakReference<TT;>;>;"
    :cond_1a
    monitor-exit p0

    .line 79
    return-void

    .line 78
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method protected abstract greylist-max-o shouldInvalidateEntry(Ljava/lang/Object;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method
