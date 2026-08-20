.class public Lorg/tukaani/xz/BasicArrayCache;
.super Lorg/tukaani/xz/ArrayCache;
.source "BasicArrayCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tukaani/xz/BasicArrayCache$LazyHolder;,
        Lorg/tukaani/xz/BasicArrayCache$CacheMap;,
        Lorg/tukaani/xz/BasicArrayCache$CyclicStack;
    }
.end annotation


# static fields
.field private static final CACHEABLE_SIZE_MIN:I = 0x8000

.field private static final ELEMENTS_PER_STACK:I = 0x200

.field private static final STACKS_MAX:I = 0x20


# instance fields
.field private final byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[B>;"
        }
    .end annotation
.end field

.field private final intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Lorg/tukaani/xz/ArrayCache;-><init>()V

    .line 161
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    .line 166
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-direct {v0}, Lorg/tukaani/xz/BasicArrayCache$CacheMap;-><init>()V

    iput-object v0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    return-void
.end method

.method private static getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;I)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x8000

    if-ge p1, v1, :cond_7

    return-object v0

    .line 180
    :cond_7
    monitor-enter p0

    .line 181
    :try_start_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    .line 182
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_26

    if-nez p1, :cond_16

    return-object v0

    .line 190
    :cond_16
    invoke-virtual {p1}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/Reference;

    if-nez p0, :cond_1f

    return-object v0

    .line 194
    :cond_1f
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_16

    return-object p0

    :catchall_26
    move-exception p1

    .line 182
    :try_start_27
    monitor-exit p0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p1
.end method

.method public static getInstance()Lorg/tukaani/xz/BasicArrayCache;
    .registers 1

    .line 155
    sget-object v0, Lorg/tukaani/xz/BasicArrayCache$LazyHolder;->INSTANCE:Lorg/tukaani/xz/BasicArrayCache;

    return-object v0
.end method

.method private static putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/tukaani/xz/BasicArrayCache$CacheMap<",
            "TT;>;TT;I)V"
        }
    .end annotation

    const v0, 0x8000

    if-ge p2, v0, :cond_6

    return-void

    .line 211
    :cond_6
    monitor-enter p0

    .line 216
    :try_start_7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    if-nez v0, :cond_20

    .line 218
    new-instance v0, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;-><init>(Lorg/tukaani/xz/BasicArrayCache$CyclicStack-IA;)V

    .line 219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_20
    monitor-exit p0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_2a

    .line 223
    new-instance p0, Ljava/lang/ref/SoftReference;

    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/BasicArrayCache$CyclicStack;->push(Ljava/lang/Object;)V

    return-void

    :catchall_2a
    move-exception p1

    .line 221
    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw p1
.end method


# virtual methods
.method public getByteArray(IZ)[B
    .registers 3

    .line 238
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {p0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-nez p0, :cond_d

    .line 241
    new-array p0, p1, [B

    goto :goto_13

    :cond_d
    if-eqz p2, :cond_13

    const/4 p1, 0x0

    .line 243
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([BB)V

    :cond_13
    :goto_13
    return-object p0
.end method

.method public getIntArray(IZ)[I
    .registers 3

    .line 262
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    invoke-static {p0, p1}, Lorg/tukaani/xz/BasicArrayCache;->getArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_d

    .line 265
    new-array p0, p1, [I

    goto :goto_13

    :cond_d
    if-eqz p2, :cond_13

    const/4 p1, 0x0

    .line 267
    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    :cond_13
    :goto_13
    return-object p0
.end method

.method public putArray([B)V
    .registers 3

    .line 255
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->byteArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    return-void
.end method

.method public putArray([I)V
    .registers 3

    .line 279
    iget-object p0, p0, Lorg/tukaani/xz/BasicArrayCache;->intArrayCache:Lorg/tukaani/xz/BasicArrayCache$CacheMap;

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/BasicArrayCache;->putArray(Lorg/tukaani/xz/BasicArrayCache$CacheMap;Ljava/lang/Object;I)V

    return-void
.end method
