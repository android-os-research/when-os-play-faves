.class public Lcom/samsung/android/sume/core/filter/collection/SimpleConveyorFilter;
.super Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;
.source "SimpleConveyorFilter.java"


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V
    .registers 2
    .param p1, "sequentialDescriptor"    # Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/filter/collection/SequentialFilter;-><init>(Lcom/samsung/android/sume/core/descriptor/SequentialDescriptor;)V

    .line 22
    return-void
.end method


# virtual methods
.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 28
    if-nez p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    .line 29
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/collection/SimpleConveyorFilter;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 30
    .local v1, "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    invoke-interface {v1, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p2

    .line 31
    move-object p1, p2

    .line 32
    .end local v1    # "filter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    goto :goto_e

    .line 33
    :cond_20
    return-object p2
.end method
