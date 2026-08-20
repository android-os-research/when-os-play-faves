.class public Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
.super Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;
.source "ImgProcessorChain.java"

# interfaces
.implements Lcom/samsung/android/sume/core/functional/ImgProcessor;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field blacklist processors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist usePersistentFormat:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Enum;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "type":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    .local p2, "processors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 39
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda0;-><init>()V

    .line 40
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 44
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "processors":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/functional/ImgProcessor;>;"
    sget-object v0, Lcom/samsung/android/sume/core/types/ImgpType;->ANY:Lcom/samsung/android/sume/core/types/ImgpType;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/functional/ImgpPriorityComputable;-><init>(Ljava/lang/Enum;)V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 29
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain$$ExternalSyntheticLambda1;-><init>()V

    .line 30
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 34
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    .line 35
    return-void
.end method

.method public varargs constructor blacklist <init>([Lcom/samsung/android/sume/core/functional/ImgProcessor;)V
    .registers 3
    .param p1, "processors"    # [Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 24
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;-><init>(Ljava/util/List;)V

    .line 25
    return-void
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 31
    instance-of v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 32
    :cond_c
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Ljava/util/stream/Stream;
    .registers 2
    .param p0, "e"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 41
    instance-of v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    if-eqz v0, :cond_c

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 42
    :cond_c
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist addImgProcessor(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
    .registers 3
    .param p1, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 48
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    return-object p0
.end method

.method public blacklist config(Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;)V
    .registers 3
    .param p1, "descriptor"    # Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;

    .line 76
    invoke-virtual {p1}, Lcom/samsung/android/sume/core/descriptor/ImgpDescriptor;->isUsePersistentFormat()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    .line 77
    return-void
.end method

.method public blacklist process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 8
    .param p1, "buffer"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 65
    .local v1, "processor":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    :try_start_12
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/sume/core/functional/ImgProcessor;->process(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0
    :try_end_16
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v0

    .line 66
    :catch_17
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    iget-boolean v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->usePersistentFormat:Z

    if-eqz v3, :cond_21

    .line 68
    iget-object v3, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    :cond_21
    sget-object v3, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->TAG:Ljava/lang/String;

    const-string v4, "not support, try to next image processor"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v1    # "processor":Lcom/samsung/android/sume/core/functional/ImgProcessor;
    .end local v2    # "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_6

    .line 72
    :cond_29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "none of image processors to handle this"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist removeImgProcessor(Lcom/samsung/android/sume/core/functional/ImgProcessor;)Lcom/samsung/android/sume/core/functional/ImgProcessorChain;
    .registers 3
    .param p1, "processor"    # Lcom/samsung/android/sume/core/functional/ImgProcessor;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    return-object p0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/functional/ImgProcessor;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/functional/ImgProcessorChain;->processors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
