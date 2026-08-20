.class public abstract Lcom/samsung/android/sume/core/filter/DecorateFilter;
.super Ljava/lang/Object;
.source "DecorateFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist successor:Lcom/samsung/android/sume/core/filter/MediaFilter;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 14
    const-class v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 2
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 20
    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 3

    .line 61
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    if-eqz v1, :cond_d

    .line 62
    check-cast v0, Lcom/samsung/android/sume/core/filter/DecorateFilter;

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/filter/DecorateFilter;->getEnclosedFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;

    move-result-object v0

    return-object v0

    .line 65
    :cond_d
    return-object v0
.end method

.method public blacklist getSuccessorFilter()Lcom/samsung/android/sume/core/filter/MediaFilter;
    .registers 2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    return-object v0
.end method

.method public blacklist prepare()V
    .registers 4

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v1, v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v1, :cond_16

    .line 26
    check-cast v0, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    .line 27
    .local v0, "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    invoke-interface {v0}, Lcom/samsung/android/sume/core/functional/PlaceHolder;->reset()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 30
    .local v1, "replacedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    iget-object v2, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    instance-of v2, v2, Lcom/samsung/android/sume/core/functional/PlaceHolder;

    if-eqz v2, :cond_16

    .line 31
    iput-object v1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 33
    .end local v0    # "placeHolder":Lcom/samsung/android/sume/core/functional/PlaceHolder;, "Lcom/samsung/android/sume/core/functional/PlaceHolder<Lcom/samsung/android/sume/core/filter/MediaFilter;>;"
    .end local v1    # "replacedFilter":Lcom/samsung/android/sume/core/filter/MediaFilter;
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->prepare()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 36
    goto :goto_20

    .line 34
    :catch_1c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_20
    return-void
.end method

.method public blacklist release()V
    .registers 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->release()V

    .line 48
    return-void
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter;->run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setSuccessorFilter(Lcom/samsung/android/sume/core/filter/MediaFilter;)V
    .registers 2
    .param p1, "successor"    # Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    .line 72
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

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/DecorateFilter;->successor:Lcom/samsung/android/sume/core/filter/MediaFilter;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
