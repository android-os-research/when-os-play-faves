.class public Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/buffer/BufferExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Registry"
.end annotation


# instance fields
.field private final blacklist releaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist stringfyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist transformMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;"
        }
    .end annotation
.end field

.field private final blacklist wrappedTransformList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    .line 407
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->releaseMap:Ljava/util/Map;

    .line 408
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    .line 409
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    .line 411
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension$1;

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addRelease(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    .line 414
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "restore":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->releaseMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    return-object p0
.end method

.method public blacklist addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    .line 430
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "logger":Ljava/util/function/Function;, "Ljava/util/function/Function<TT;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    return-object p0
.end method

.method public blacklist addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    .line 419
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "mapper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;TT;TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    return-object p0
.end method

.method public blacklist addWrappedTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;TR;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;"
        }
    .end annotation

    .line 424
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p3, "mapper":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;TT;TR;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    return-object p0
.end method

.method blacklist getRelease()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation

    .line 443
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->releaseMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getStringfy()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getTransform()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    return-object v0
.end method

.method blacklist getWrappedTransform()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 439
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    return-object v0
.end method

.method public blacklist register()V
    .registers 3

    .line 451
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->transformMap:Ljava/util/Map;

    .line 452
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->wrappedTransformList:Ljava/util/List;

    .line 453
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->stringfyMap:Ljava/util/Map;

    .line 454
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->releaseMap:Ljava/util/Map;

    .line 455
    # invokes: Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->access$600(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 456
    return-void
.end method
