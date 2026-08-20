.class abstract Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
.super Ljava/lang/Object;
.source "MediaBufferBase.java"

# interfaces
.implements Lcom/samsung/android/sume/core/buffer/MediaBuffer;


# static fields
.field static final blacklist DATA_HARDWARE_BUFFER:I = 0x2

.field static final blacklist DATA_NOTHING:I = 0x1

.field static final blacklist DATA_PARCELABLE:I = 0x4

.field static final blacklist DATA_PARCEL_FILEDESCRIPTOR:I = 0x3

.field static final blacklist DATA_SERIALIZABLE:I = 0x5

.field protected static final blacklist INDENT_MARK:Ljava/lang/String; = "    "

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field protected blacklist extra:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist flags:I

.field protected blacklist format:Lcom/samsung/android/sume/core/format/MediaFormat;

.field protected blacklist internalBuffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected blacklist sharedObj:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedObj:Ljava/util/Set;

    .line 40
    iput v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->internalBuffers:Ljava/util/List;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/format/MediaFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 51
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 52
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/core/format/MediaFormat;)V
    .registers 4
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedObj:Ljava/util/Set;

    .line 40
    iput v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->internalBuffers:Ljava/util/List;

    .line 45
    iput-object p1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 46
    return-void
.end method

.method static synthetic blacklist lambda$containsAllExtra$5(Ljava/util/HashMap;Ljava/lang/String;)Z
    .registers 4
    .param p0, "e"    # Ljava/util/HashMap;
    .param p1, "it"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$containsAllExtra$6([Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 168
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda9;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda9;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$containsAnyExtra$3(Ljava/util/HashMap;Ljava/lang/String;)Z
    .registers 4
    .param p0, "e"    # Ljava/util/HashMap;
    .param p1, "it"    # Ljava/lang/String;

    .line 161
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$containsAnyExtra$4([Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .registers 4
    .param p0, "keys"    # [Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 161
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda13;-><init>(Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$containsExtra$2(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/util/HashMap;

    .line 155
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$isDataShared$8(Ljava/lang/Class;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "it"    # Ljava/lang/Class;

    .line 187
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->isRequiredToRelease(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$release$9(Ljava/lang/Object;)V
    .registers 2
    .param p0, "buffer"    # Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->isRequiredToRelease(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 212
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->release(Ljava/lang/Object;)V

    .line 214
    :cond_d
    return-void
.end method


# virtual methods
.method public blacklist addExtra(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 120
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    if-ne v0, p1, :cond_5

    .line 121
    return-void

    .line 123
    :cond_5
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    .line 124
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda2;-><init>()V

    new-instance v3, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda3;-><init>()V

    .line 125
    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 123
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 129
    return-void
.end method

.method public varargs blacklist containFlags([I)Z
    .registers 4
    .param p1, "flagsToCheck"    # [I

    .line 103
    invoke-static {p1}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method public varargs blacklist containsAllExtra([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda11;-><init>([Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 167
    return v0
.end method

.method public varargs blacklist containsAnyExtra([Ljava/lang/String;)Z
    .registers 4
    .param p1, "keys"    # [Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda12;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda12;-><init>([Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 162
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 160
    return v0
.end method

.method public blacklist containsExtra(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6

    .line 226
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    .line 228
    .local v0, "copied":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->isDataShared()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 229
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 230
    .local v1, "use_count":I
    sget-object v2, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shared count increased: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3f
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3f} :catch_40

    .line 232
    .end local v1    # "use_count":I
    :cond_3f
    return-object v0

    .line 233
    .end local v0    # "copied":Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    :catch_40
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 235
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->copy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 3

    .line 246
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->deepCopy()Lcom/samsung/android/sume/core/buffer/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getChannels()I
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v0

    return v0
.end method

.method public blacklist getCols()I
    .registers 2

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    return v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 145
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public blacklist getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    return-object v0
.end method

.method public blacklist getRows()I
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v0

    return v0
.end method

.method public blacklist getTypedDataOr(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 87
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getTypedData(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 88
    :catch_5
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NullPointerException;
    return-object p2
.end method

.method protected declared-synchronized blacklist isDataRequireToRelease()Z
    .registers 4

    monitor-enter p0

    .line 192
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedObj:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_2c

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 193
    monitor-exit p0

    return v1

    .line 194
    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedObj:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->sharedCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0
    :try_end_27
    .catchall {:try_start_14 .. :try_end_27} :catchall_2c

    if-nez v0, :cond_2a

    const/4 v1, 0x1

    :cond_2a
    monitor-exit p0

    return v1

    .line 191
    .end local p0    # "this":Lcom/samsung/android/sume/core/buffer/MediaBufferBase;
    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected blacklist isDataShared()Z
    .registers 3

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda8;-><init>()V

    .line 187
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 188
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 186
    return v0
.end method

.method synthetic blacklist lambda$addExtra$1$com-samsung-android-sume-core-buffer-MediaBufferBase(Ljava/util/Map$Entry;)Z
    .registers 4
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 124
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic blacklist lambda$containFlags$0$com-samsung-android-sume-core-buffer-MediaBufferBase(I)Z
    .registers 3
    .param p1, "it"    # I

    .line 103
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method synthetic blacklist lambda$transformDataTo$7$com-samsung-android-sume-core-buffer-MediaBufferBase(Ljava/lang/Object;)V
    .registers 3
    .param p1, "buffer"    # Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->internalBuffers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist release()V
    .registers 4

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getPlanesFormat()Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "planes":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sume/core/format/MediaFormat;>;"
    if-eqz v0, :cond_9

    .line 202
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    if-eqz v1, :cond_10

    .line 206
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 208
    :cond_10
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    .line 209
    iput-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    .line 210
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->internalBuffers:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 215
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->internalBuffers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 216
    return-void
.end method

.method public blacklist removeExtra(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getExtra()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public blacklist setExtra(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    if-ne v0, p1, :cond_5

    .line 114
    return-void

    .line 115
    :cond_5
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 116
    return-void
.end method

.method public varargs blacklist setFlags([I)Lcom/samsung/android/sume/core/buffer/MediaBuffer;
    .registers 6
    .param p1, "flags"    # [I

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget v2, p1, v1

    .line 96
    .local v2, "flag":I
    iget v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->flags:I

    .line 95
    .end local v2    # "flag":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 98
    :cond_e
    return-object p0
.end method

.method protected blacklist transformDataTo(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 174
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    :try_start_0
    new-instance v0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/sume/core/buffer/MediaBufferBase;)V

    invoke-static {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->putInternalBufferHandler(Ljava/util/function/Consumer;)V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_10} :catch_11

    return-object v0

    .line 176
    :catch_11
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    instance-of v1, p1, Landroid/hardware/HardwareBuffer;

    if-nez v1, :cond_1d

    const-class v1, Landroid/hardware/HardwareBuffer;

    if-ne p2, v1, :cond_1b

    goto :goto_1d

    .line 180
    :cond_1b
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->getFormat()Lcom/samsung/android/sume/core/format/MediaFormat;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->format:Lcom/samsung/android/sume/core/format/MediaFormat;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 57
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/MediaBufferBase;->extra:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 59
    return-void
.end method
