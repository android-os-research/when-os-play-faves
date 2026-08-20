.class public Lcom/samsung/android/sume/core/filter/SyncFilter;
.super Lcom/samsung/android/sume/core/filter/DecorateFilter;
.source "SyncFilter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 19
    const-class v0, Lcom/samsung/android/sume/core/filter/SyncFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/SyncFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 2
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;-><init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V

    .line 23
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$run$0$com-samsung-android-sume-core-filter-SyncFilter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4
    .param p1, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "it"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 38
    invoke-super {p0, p2, p1}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 42
    .local v0, "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 29
    instance-of v0, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v0, :cond_16

    .line 30
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 31
    .local v0, "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    instance-of v1, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v1, :cond_16

    .line 32
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    .line 36
    .end local v0    # "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_16
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/filter/SyncFilter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/sume/core/filter/SyncFilter$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/filter/SyncFilter;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)V

    .line 37
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 44
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 47
    .local v0, "output":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/buffer/MediaBuffer;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    .line 48
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .local v1, "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_40

    .line 50
    .end local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_3c
    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->groupOf(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v1

    .line 52
    .restart local v1    # "buffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_40
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    .line 54
    return-object v1
.end method
