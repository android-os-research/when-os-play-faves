.class public Lorg/tukaani/xz/ResettableArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "ResettableArrayCache.java"


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private final byteArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/tukaani/xz/ArrayCache;)V
    .registers 3

    .line 31
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 37
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDummyCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    if-ne p1, v0, :cond_11

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    goto :goto_1f

    .line 41
    :cond_11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    :goto_1f
    return-void
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .registers 4

    .line 47
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getByteArray(IZ)[B

    move-result-object p1

    .line 49
    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz p2, :cond_15

    .line 50
    monitor-enter p2

    .line 51
    :try_start_b
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    monitor-exit p2

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public getIntArray(IZ)[I
    .registers 4

    .line 73
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, p1, p2}, Lorg/tukaani/xz/ArrayCache;->getIntArray(IZ)[I

    move-result-object p1

    .line 75
    iget-object p2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz p2, :cond_15

    .line 76
    monitor-enter p2

    .line 77
    :try_start_b
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    monitor-exit p2

    goto :goto_15

    :catchall_12
    move-exception p0

    monitor-exit p2
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_12

    throw p0

    :cond_15
    :goto_15
    return-object p1
.end method

.method public putArray([B)V
    .registers 5

    .line 59
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 62
    monitor-enter v0

    .line 63
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 65
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    .line 68
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    goto :goto_1d

    :catchall_1a
    move-exception p0

    .line 66
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public putArray([I)V
    .registers 5

    .line 85
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 86
    monitor-enter v0

    .line 87
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 89
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 90
    :cond_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_1a

    .line 92
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    goto :goto_1d

    :catchall_1a
    move-exception p0

    .line 90
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    :cond_1d
    :goto_1d
    return-void
.end method

.method public reset()V
    .registers 5

    .line 102
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    if-eqz v0, :cond_4f

    .line 105
    monitor-enter v0

    .line 106
    :try_start_5
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_1f

    .line 107
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([B)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 109
    :cond_1f
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->byteArrays:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_4c

    .line 112
    iget-object v1, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    monitor-enter v1

    .line 113
    :try_start_28
    iget-object v0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_30
    if-ltz v0, :cond_42

    .line 114
    iget-object v2, p0, Lorg/tukaani/xz/ResettableArrayCache;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    iget-object v3, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    invoke-virtual {v2, v3}, Lorg/tukaani/xz/ArrayCache;->putArray([I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 116
    :cond_42
    iget-object p0, p0, Lorg/tukaani/xz/ResettableArrayCache;->intArrays:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 117
    monitor-exit v1

    goto :goto_4f

    :catchall_49
    move-exception p0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_28 .. :try_end_4b} :catchall_49

    throw p0

    :catchall_4c
    move-exception p0

    .line 110
    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method
