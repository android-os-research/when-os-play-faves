.class public Landroid/util/LruCache;
.super Ljava/lang/Object;
.source "LruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o createCount:I

.field private greylist-max-o evictionCount:I

.field private greylist-max-o hitCount:I

.field private final greylist map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private greylist-max-o maxSize:I

.field private greylist-max-o missCount:I

.field private greylist-max-o putCount:I

.field private greylist-max-o size:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 6
    .param p1, "maxSize"    # I

    .line 83
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-lez p1, :cond_13

    .line 87
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 88
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    .line 89
    return-void

    .line 85
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 289
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LruCache;->sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 290
    .local v0, "result":I
    if-ltz v0, :cond_7

    .line 293
    return v0

    .line 291
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Negative size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected whitelist create(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 285
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized whitelist createCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 352
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->createCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 352
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected whitelist entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p1, "evicted"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZTK;TV;TV;)V"
        }
    .end annotation

    .line 267
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "oldValue":Ljava/lang/Object;, "TV;"
    .local p4, "newValue":Ljava/lang/Object;, "TV;"
    return-void
.end method

.method public final whitelist evictAll()V
    .registers 2

    .line 311
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->trimToSize(I)V

    .line 312
    return-void
.end method

.method public final declared-synchronized whitelist evictionCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 366
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 366
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 114
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_55

    .line 119
    monitor-enter p0

    .line 120
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, "mapValue":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_13

    .line 122
    iget v1, p0, Landroid/util/LruCache;->hitCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->hitCount:I

    .line 123
    monitor-exit p0

    return-object v0

    .line 125
    :cond_13
    iget v1, p0, Landroid/util/LruCache;->missCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/util/LruCache;->missCount:I

    .line 126
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_52

    .line 135
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->create(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "createdValue":Ljava/lang/Object;, "TV;"
    if-nez v1, :cond_22

    .line 137
    const/4 v2, 0x0

    return-object v2

    .line 140
    :cond_22
    monitor-enter p0

    .line 141
    :try_start_23
    iget v2, p0, Landroid/util/LruCache;->createCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/util/LruCache;->createCount:I

    .line 142
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 144
    if-eqz v0, :cond_38

    .line 146
    iget-object v2, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 148
    :cond_38
    iget v2, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v1}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/LruCache;->size:I

    .line 150
    :goto_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_23 .. :try_end_42} :catchall_4f

    .line 152
    if-eqz v0, :cond_49

    .line 153
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-object v0

    .line 156
    :cond_49
    iget v2, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v2}, Landroid/util/LruCache;->trimToSize(I)V

    .line 157
    return-object v1

    .line 150
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2

    .line 126
    .end local v0    # "mapValue":Ljava/lang/Object;, "TV;"
    .end local v1    # "createdValue":Ljava/lang/Object;, "TV;"
    :catchall_52
    move-exception v0

    :try_start_53
    monitor-exit p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    throw v0

    .line 115
    :cond_55
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist hitCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 337
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 337
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized whitelist maxSize()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 329
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 329
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized whitelist missCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 345
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 345
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final whitelist put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 168
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_35

    if-eqz p2, :cond_35

    .line 173
    monitor-enter p0

    .line 174
    :try_start_5
    iget v0, p0, Landroid/util/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/LruCache;->putCount:I

    .line 175
    iget v0, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, p2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/util/LruCache;->size:I

    .line 176
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_25

    .line 178
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 180
    :cond_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_32

    .line 182
    if-eqz v0, :cond_2c

    .line 183
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 186
    :cond_2c
    iget v1, p0, Landroid/util/LruCache;->maxSize:I

    invoke-virtual {p0, v1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 187
    return-object v0

    .line 180
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    .line 169
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null || value == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist putCount()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 359
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 359
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final whitelist remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_20

    .line 238
    monitor-enter p0

    .line 239
    :try_start_3
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "previous":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_14

    .line 241
    iget v1, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, p1, v0}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/LruCache;->size:I

    .line 243
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1d

    .line 245
    if-eqz v0, :cond_1c

    .line 246
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v0, v2}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 249
    :cond_1c
    return-object v0

    .line 243
    .end local v0    # "previous":Ljava/lang/Object;, "TV;"
    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v0

    .line 234
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "key == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist resize(I)V
    .registers 4
    .param p1, "maxSize"    # I

    .line 97
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    if-lez p1, :cond_d

    .line 101
    monitor-enter p0

    .line 102
    :try_start_3
    iput p1, p0, Landroid/util/LruCache;->maxSize:I

    .line 103
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    .line 104
    invoke-virtual {p0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 105
    return-void

    .line 103
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0

    .line 98
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized whitelist size()I
    .registers 2

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 320
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 320
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected whitelist sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    .line 304
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized whitelist snapshot()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 374
    :try_start_1
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object v0

    .line 374
    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    monitor-enter p0

    .line 378
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->hitCount:I

    iget v1, p0, Landroid/util/LruCache;->missCount:I

    add-int/2addr v1, v0

    .line 379
    .local v1, "accesses":I
    const/4 v2, 0x0

    if-eqz v1, :cond_d

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    goto :goto_e

    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :cond_d
    move v0, v2

    .line 380
    .local v0, "hitPercent":I
    :goto_e
    const-string v3, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Landroid/util/LruCache;->maxSize:I

    .line 381
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x1

    iget v5, p0, Landroid/util/LruCache;->hitCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    iget v5, p0, Landroid/util/LruCache;->missCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 380
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    monitor-exit p0

    return-object v2

    .line 377
    .end local v0    # "hitPercent":I
    .end local v1    # "accesses":I
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist trimToSize(I)V
    .registers 7
    .param p1, "maxSize"    # I

    .line 201
    .local p0, "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    :goto_0
    monitor-enter p0

    .line 202
    :try_start_1
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-ltz v0, :cond_43

    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget v0, p0, Landroid/util/LruCache;->size:I

    if-nez v0, :cond_43

    .line 207
    :cond_11
    iget v0, p0, Landroid/util/LruCache;->size:I

    if-gt v0, p1, :cond_17

    .line 208
    monitor-exit p0

    goto :goto_20

    .line 211
    :cond_17
    iget-object v0, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->eldest()Ljava/util/Map$Entry;

    move-result-object v0

    .line 212
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    if-nez v0, :cond_21

    .line 213
    monitor-exit p0

    .line 225
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :goto_20
    return-void

    .line 216
    .restart local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 217
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 218
    .local v2, "value":Ljava/lang/Object;, "TV;"
    iget-object v3, p0, Landroid/util/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget v3, p0, Landroid/util/LruCache;->size:I

    invoke-direct {p0, v1, v2}, Landroid/util/LruCache;->safeSizeOf(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->size:I

    .line 220
    iget v3, p0, Landroid/util/LruCache;->evictionCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/util/LruCache;->evictionCount:I

    .line 221
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_64

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, v4, v1, v2, v0}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 224
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 203
    :cond_43
    :try_start_43
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .end local p1    # "maxSize":I
    throw v0

    .line 221
    .restart local p0    # "this":Landroid/util/LruCache;, "Landroid/util/LruCache<TK;TV;>;"
    .restart local p1    # "maxSize":I
    :catchall_64
    move-exception v0

    monitor-exit p0
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_64

    throw v0
.end method
