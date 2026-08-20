.class public abstract Lcom/samsung/android/sume/core/filter/NNFWFilter;
.super Ljava/lang/Object;
.source "NNFWFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

.field protected blacklist executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

.field private blacklist targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 23
    const-class v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;)V
    .registers 2
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    .line 32
    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    return-object v0
.end method

.method public blacklist prepare()V
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getTargetFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 53
    :cond_14
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 11
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 58
    move-object v0, p2

    .line 59
    .local v0, "output":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    if-nez v0, :cond_58

    .line 60
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    .line 62
    .local v1, "iFmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v2}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getOutputFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda0;-><init>()V

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    .line 66
    .local v2, "oFmt":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    if-nez v1, :cond_28

    if-eqz v2, :cond_26

    goto :goto_28

    :cond_26
    const/4 v3, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 v3, 0x1

    :goto_29
    invoke-static {v3}, Lcom/samsung/android/sume/core/Def;->require(Z)V

    .line 68
    if-eqz v1, :cond_48

    if-eqz v2, :cond_48

    .line 69
    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/Shape;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 70
    :cond_40
    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->setShape(Lcom/samsung/android/sume/core/format/Shape;)Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    goto :goto_54

    .line 72
    :cond_48
    if-nez v2, :cond_54

    .line 73
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v3}, Lcom/samsung/android/sume/core/format/MediaFormat;->toMutableFormat()Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    move-result-object v2

    .line 76
    :cond_54
    :goto_54
    invoke-static {v2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MutableMediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 79
    .end local v1    # "iFmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    .end local v2    # "oFmt":Lcom/samsung/android/sume/core/format/MutableMediaFormat;
    :cond_58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 83
    .local v1, "triggerTs":J
    :try_start_5c
    iget-object v3, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    if-eqz v3, :cond_6a

    .line 84
    new-instance v4, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/samsung/android/sume/core/filter/NNFWFilter$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/filter/NNFWFilter;)V

    invoke-interface {v3, p1, v0, v4}, Lcom/samsung/android/sume/core/functional/ExecuteDelegator;->execute(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/functional/BiBufferProcessor;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .local v3, "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    goto :goto_6e

    .line 86
    .end local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_6a
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/core/filter/NNFWFilter;->runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_6e} :catch_e1

    .line 90
    .restart local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_6e
    nop

    .line 92
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    .line 94
    if-eqz p2, :cond_7d

    if-eq v3, p2, :cond_7d

    .line 95
    invoke-interface {p2}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 97
    :cond_7d
    instance-of v4, p1, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v4, :cond_9b

    .line 98
    move-object v4, p1

    .line 99
    .local v4, "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :goto_82
    instance-of v5, v4, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    if-eqz v5, :cond_8e

    .line 100
    move-object v5, v4

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;

    invoke-virtual {v5}, Lcom/samsung/android/sume/core/buffer/MediaBufferGroup;->getPrimaryBuffer()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v4

    goto :goto_82

    .line 102
    :cond_8e
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    invoke-interface {v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->getExtra()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->addExtra(Ljava/util/Map;)V

    .line 105
    .end local v4    # "primaryBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_9b
    iget-object v4, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    if-eqz v4, :cond_ad

    .line 106
    move-object v4, v3

    .line 107
    .local v4, "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-static {}, Lcom/samsung/android/sume/solution/filter/UniImgp;->ofUnified()Lcom/samsung/android/sume/core/functional/ImgProcessor;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->targetFormat:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-interface {v5, v4, v6}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v3

    .line 108
    invoke-interface {v4}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->release()V

    .line 111
    .end local v4    # "buf":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :cond_ad
    sget-object v4, Lcom/samsung/android/sume/core/filter/NNFWFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->descriptor:Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;

    invoke-virtual {v6}, Lcom/samsung/android/sume/core/descriptor/nn/NNFWDescriptor;->getFw()Lcom/samsung/android/sume/core/types/nn/NNFW;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] processing nn ts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-object v3

    .line 87
    .end local v3    # "ret":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_e1
    move-exception v3

    .line 88
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 89
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-static {v3, p0}, Lcom/samsung/android/sume/core/Def;->makeExceptionTag(Ljava/lang/Exception;Lcom/samsung/android/sume/core/filter/MediaFilter;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public abstract blacklist runAdapter(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method public blacklist setExecuteDelegator(Lcom/samsung/android/sume/core/functional/ExecuteDelegator;)V
    .registers 2
    .param p1, "delegator"    # Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/NNFWFilter;->executeDelegator:Lcom/samsung/android/sume/core/functional/ExecuteDelegator;

    .line 46
    return-void
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
