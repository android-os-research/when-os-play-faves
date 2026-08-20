.class public Lcom/samsung/android/sume/core/filter/ByPassFilter;
.super Ljava/lang/Object;
.source "ByPassFilter.java"

# interfaces
.implements Lcom/samsung/android/sume/core/filter/MediaFilter;


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mfDescriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const-class v0, Lcom/samsung/android/sume/core/filter/ByPassFilter;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/ByPassFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/descriptor/MFDescriptor;)V
    .registers 2
    .param p1, "mfDescriptor"    # Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sume/core/filter/ByPassFilter;->mfDescriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    .line 21
    return-void
.end method


# virtual methods
.method public blacklist getDescriptor()Lcom/samsung/android/sume/core/descriptor/MFDescriptor;
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sume/core/filter/ByPassFilter;->mfDescriptor:Lcom/samsung/android/sume/core/descriptor/MFDescriptor;

    return-object v0
.end method

.method public blacklist run(Lcom/samsung/android/sume/core/buffer/MediaBuffer;Lcom/samsung/android/sume/core/buffer/MediaBuffer;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6
    .param p1, "ibuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .param p2, "obuf"    # Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 26
    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x1

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "not yet support obuf given case"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-interface {p1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->copy()Ljava/lang/Object;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 28
    return-object p2
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

    .line 38
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method
