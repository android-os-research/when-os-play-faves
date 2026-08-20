.class public Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;
.super Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.source "GenericMediaBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sume/core/buffer/MediaBufferBase;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile blacklist planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 26
    const-class v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    .line 236
    new-instance v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 39
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_54

    .line 60
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 58
    goto :goto_4a

    .line 52
    :pswitch_20
    const-class v0, Landroid/os/ParcelFileDescriptor;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 53
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 54
    goto :goto_4a

    .line 48
    :pswitch_2f
    const-class v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 50
    goto :goto_4a

    .line 44
    :pswitch_3e
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 45
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 46
    nop

    .line 62
    :goto_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    .line 63
    return-void

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_2f
        :pswitch_20
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)V
    .registers 4
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;)V"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p2, "data":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;-><init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 36
    return-void
.end method

.method private blacklist dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "data"    # Ljava/lang/Object;

    .line 208
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda3;-><init>()V

    .line 209
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 219
    const-string v1, "n/a"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    return-object v0
.end method

.method static synthetic blacklist lambda$dataToString$3(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "it"    # Ljava/lang/Object;

    .line 211
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 212
    :catch_5
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    instance-of v1, p0, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_f

    .line 214
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    :cond_f
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic blacklist lambda$getPlanesFormat$0(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2
    .param p0, "plane"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 182
    instance-of v0, p0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    if-eqz v0, :cond_c

    .line 183
    move-object v0, p0

    check-cast v0, Lcom/samsung/android/sume/core/format/MutableMediaFormat;

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MutableMediaFormat;->toMediaFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0

    .line 185
    :cond_c
    return-object p0
.end method

.method static synthetic blacklist lambda$getPlanesFormat$1(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p0, "planes"    # Ljava/util/List;

    .line 187
    nop

    .line 181
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 187
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static synthetic blacklist lambda$getPlanesFormat$2(Lcom/samsung/android/sume/core/format/MediaFormat;)Ljava/util/Optional;
    .registers 3
    .param p0, "fmt"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 180
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getPlanesFormat()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic blacklist addExtra(Ljava/util/Map;)V
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->addExtra(Ljava/util/Map;)V

    return-void
.end method

.method public blacklist asRef()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 5

    .line 91
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 92
    .local v0, "useCount":I
    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inc ref count now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-object p0
.end method

.method public bridge synthetic blacklist containFlags([I)Z
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containFlags([I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAllExtra([Ljava/lang/String;)Z
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAllExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsAnyExtra([Ljava/lang/String;)Z
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsAnyExtra([Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic blacklist containsExtra(Ljava/lang/String;)Z
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->containsExtra(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .registers 2

    .line 233
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 224
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "format="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 225
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const-string v4, "n/a"

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extra="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->extra:Ljava/util/HashMap;

    .line 226
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 227
    invoke-direct {p0, v3}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 224
    const-string v2, "    "

    invoke-static {v2, v1}, Lcom/samsung/android/sume/core/Def;->contentToStringln(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist convertTo(Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sume/core/buffer/MediaBuffer;->of(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    .line 129
    .local v0, "newBuffer":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->release()V

    .line 130
    return-object v0
.end method

.method public bridge synthetic blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist describeContents()I
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getChannels()I
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getChannels()I

    move-result v0

    return v0
.end method

.method public bridge synthetic blacklist getCols()I
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()TV;"
        }
    .end annotation

    .line 140
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDataClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    return-object v0
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic blacklist getExtra()Ljava/util/Map;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPlanesFormat()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            ">;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    if-nez v0, :cond_26

    .line 177
    monitor-enter p0

    .line 178
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    if-nez v0, :cond_21

    .line 179
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    .line 190
    :cond_21
    monitor-exit p0

    goto :goto_26

    :catchall_23
    move-exception v0

    monitor-exit p0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_23

    throw v0

    .line 193
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic blacklist getRows()I
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v0, :cond_37

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_34

    .line 161
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-class v0, Ljava/lang/Number;

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_34

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2d

    goto :goto_34

    .line 165
    :cond_2d
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    return-object v0

    .line 157
    :cond_37
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public bridge synthetic blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist release()V
    .registers 6

    .line 98
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 99
    .local v0, "useCount":I
    sget-object v1, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dec ref count now: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    if-lez v0, :cond_54

    .line 101
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release skipped("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 105
    :cond_54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "release("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-super {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->release()V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    if-eqz v1, :cond_87

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->isDataShared()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 111
    :try_start_80
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    invoke-static {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->release(Ljava/lang/Object;)V
    :try_end_85
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_80 .. :try_end_85} :catch_86

    .line 114
    goto :goto_87

    .line 112
    :catch_86
    move-exception v1

    .line 117
    :cond_87
    :goto_87
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public bridge synthetic blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->removeExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setData(Ljava/lang/Object;)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    .local p1, "data":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 146
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    goto :goto_1b

    .line 148
    :cond_f
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->dataClass:Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    .line 150
    :goto_1b
    return-object p0
.end method

.method public bridge synthetic blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic blacklist setExtra(Ljava/util/Map;)V
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setExtra(Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 2

    .line 24
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist size()J
    .registers 3

    .line 198
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->bytePerSample()F

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/sume/core/format/Shape;->getDimension()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public blacklist stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/samsung/android/sume/core/buffer/MediaBuffer;",
            ">;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 204
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 7
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    .local p0, "this":Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;, "Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer<TT;>;"
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    instance-of v1, v0, Lcom/samsung/android/sume/core/buffer/MediaBufferAllocator$Nothing;

    if-eqz v1, :cond_e

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_54

    .line 70
    :cond_e
    instance-of v1, v0, Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_1e

    .line 71
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_54

    .line 73
    :cond_1e
    instance-of v0, v0, Ljava/lang/Number;

    if-eqz v0, :cond_2e

    .line 74
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    goto :goto_54

    .line 79
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v2, Landroid/hardware/HardwareBuffer;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;
    :try_end_3c
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2e .. :try_end_3c} :catch_3d

    .line 82
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    goto :goto_4d

    .line 80
    .end local v0    # "hwBuffer":Landroid/hardware/HardwareBuffer;
    :catch_3d
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->data:Ljava/lang/Object;

    const-class v3, Landroid/hardware/HardwareBuffer;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/HardwareBuffer;

    move-object v0, v1

    .line 83
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    :goto_4d
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 86
    .end local v0    # "hwBuffer":Landroid/hardware/HardwareBuffer;
    :goto_54
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/GenericMediaBuffer;->planes:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 87
    return-void
.end method
