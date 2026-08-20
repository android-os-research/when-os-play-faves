.class abstract Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
.super Ljava/lang/Object;
.source "MediaBufferAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 16
    return-void
.end method

.method static blacklist of(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator;
    .registers 4
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 25
    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "mutable format not allowed"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/sume/core/Def;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 27
    move-object v0, p0

    .line 28
    .local v0, "fmt":Lcom/samsung/android/sume/core/format/MediaFormat;
    instance-of v1, p0, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    if-eqz v1, :cond_21

    const-string/jumbo v1, "update-at-alloc"

    invoke-interface {p0, v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 29
    move-object v1, p0

    check-cast v1, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/UpdatableMediaFormat;->update()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    .line 31
    :cond_21
    new-instance v1, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;

    invoke-direct {v1, v0}, Lcom/samsung/android/sume/core/buffer/StapleBufferAllocator;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    return-object v1
.end method


# virtual methods
.method abstract blacklist allocate()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist allocatePlaceHolder()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist allocateShared()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
.end method

.method abstract blacklist wrap(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method

.method abstract blacklist wrapPlaceHolder(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation
.end method
