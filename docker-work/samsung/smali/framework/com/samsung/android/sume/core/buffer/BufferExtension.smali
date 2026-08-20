.class public Lcom/samsung/android/sume/core/buffer/BufferExtension;
.super Ljava/lang/Object;
.source "BufferExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;,
        Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist binaryKeySEP:Ljava/lang/String; = "->"

.field private static volatile blacklist sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;


# instance fields
.field private final blacklist extensionClassMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist internalBufferHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist releaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist stringfyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;"
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
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 27
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 5

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    .line 101
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/lang/Number;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda14;-><init>()V

    .line 103
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Ljava/lang/Number;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda15;-><init>()V

    .line 125
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda16;-><init>()V

    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/os/ParcelFileDescriptor;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda17;-><init>()V

    .line 142
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/hardware/HardwareBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda18;-><init>()V

    .line 144
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda19;-><init>()V

    .line 149
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    const-class v2, Ljava/nio/ByteBuffer;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda20;-><init>()V

    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Ljava/nio/ByteBuffer;

    const-class v2, Landroid/graphics/Bitmap;

    new-instance v3, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;

    invoke-direct {v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda21;-><init>()V

    .line 160
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addTransform(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/function/BiFunction;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda22;-><init>()V

    .line 176
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addStringfy(Ljava/lang/Class;Ljava/util/function/Function;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    const-class v1, Landroid/hardware/HardwareBuffer;

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda23;-><init>()V

    .line 178
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->addRelease(Ljava/lang/Class;Ljava/util/function/Consumer;)Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    move-result-object v0

    .line 180
    .local v0, "registry":Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getTransform()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getWrappedTransform()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getStringfy()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 183
    invoke-virtual {v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;->getRelease()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 184
    return-void
.end method

.method static synthetic blacklist access$1000(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$1100(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterRelease(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$200()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 1

    .line 26
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$300(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$400(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$500(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$600(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/Map;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$700(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$800(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/lang/Class;
    .param p2, "x2"    # Ljava/lang/Class;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist access$900(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .param p1, "x1"    # Ljava/util/List;

    .line 26
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    return-object v0
.end method

.method private blacklist addToClassMap(Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 195
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 196
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_29
    return-void
.end method

.method private blacklist doRelease(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 265
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 267
    .local v1, "release":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    if-eqz v1, :cond_16

    .line 268
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 271
    return-void

    .line 270
    :cond_16
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method private blacklist doStringfy(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 282
    .local p1, "data":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 283
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Function;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    .line 284
    .local v1, "stringfy":Ljava/util/Optional;, "Ljava/util/Optional<Ljava/util/function/Function<TT;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda30;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method private blacklist doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .param p1, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 275
    .local p2, "data":Ljava/lang/Object;, "TT;"
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-direct {p0, v0, p3, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    .line 277
    .local v1, "transform":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;->apply(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private blacklist findAvailableBinaryKey(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            "T2:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT1;>;",
            "Ljava/lang/Class<",
            "TT2;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 308
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT1;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TT2;>;"
    .local p3, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;>;"
    move-object/from16 v8, p3

    invoke-direct/range {p0 .. p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    .line 309
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 310
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no transform exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", find alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 312
    .local v14, "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 314
    .local v15, "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;

    move-object v9, v1

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 315
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    .line 344
    invoke-static/range {p3 .. p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;

    invoke-direct {v1, v8}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v7

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object v11, v7

    .end local v7    # "key":Ljava/lang/String;
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 345
    invoke-virtual {v9, v10}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    .line 365
    .local v0, "found":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    invoke-interface {v8, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 309
    .end local v0    # "found":Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .end local v11    # "key":Ljava/lang/String;
    .end local v14    # "fromList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .end local v15    # "toList":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;>;"
    .restart local v7    # "key":Ljava/lang/String;
    :cond_79
    move-object v11, v7

    .line 367
    .end local v7    # "key":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    :goto_7a
    return-object v11
.end method

.method private blacklist findAvailableUnaryKey(Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/String;
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
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 288
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "registry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TR;>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "key":Ljava/lang/String;
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 290
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda12;-><init>(Ljava/lang/Class;)V

    .line 291
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 298
    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;

    invoke-direct {v2, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda13;-><init>(Ljava/lang/Class;)V

    .line 299
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    .local v1, "found":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .end local v1    # "found":Ljava/lang/String;
    :cond_31
    return-object v0
.end method

.method private blacklist getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;
    .registers 5
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
            "TR;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 191
    .local p1, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 2

    .line 40
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v0, :cond_17

    .line 41
    const-class v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    monitor-enter v0

    .line 42
    :try_start_7
    sget-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    if-nez v1, :cond_12

    .line 43
    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;-><init>()V

    sput-object v1, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    .line 45
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 47
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->sInstance:Lcom/samsung/android/sume/core/buffer/BufferExtension;

    return-object v0
.end method

.method private blacklist getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 187
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isRequiredToRelease(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 88
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isSupportedTransform(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
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
            "TR;>;)Z"
        }
    .end annotation

    .line 84
    .local p0, "from":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "to":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static blacklist isWrappedTransform(Ljava/util/function/BiFunction;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 60
    .local p0, "func":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$doStringfy$18(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # Ljava/lang/Object;
    .param p1, "it"    # Ljava/util/function/Function;

    .line 284
    invoke-interface {p1, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$22(Landroid/util/Pair;Landroid/util/Pair;)Z
    .registers 4
    .param p0, "it1"    # Landroid/util/Pair;
    .param p1, "it"    # Landroid/util/Pair;

    .line 347
    iget-object v0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$findAvailableBinaryKey$25(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .registers 5
    .param p0, "from"    # Ljava/lang/Class;
    .param p1, "to"    # Ljava/lang/Class;

    .line 362
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$19(Ljava/lang/Class;Ljava/lang/String;)Z
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "e"    # Ljava/lang/String;

    .line 293
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 294
    :catch_9
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    return v1
.end method

.method static synthetic blacklist lambda$findAvailableUnaryKey$20(Ljava/lang/Class;)Ljava/lang/UnsupportedOperationException;
    .registers 4
    .param p0, "clazz"    # Ljava/lang/Class;

    .line 299
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no extension exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$new$0(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Number;)Ljava/nio/ByteBuffer;
    .registers 6
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "number"    # Ljava/lang/Number;

    .line 105
    instance-of v0, p1, Ljava/lang/Integer;

    const/16 v1, 0x20

    if-eqz v0, :cond_19

    .line 106
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->put(I)Ljava/nio/IntBuffer;

    goto :goto_76

    .line 108
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_19
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_32

    .line 109
    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 110
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/nio/LongBuffer;->put(J)Ljava/nio/LongBuffer;

    goto :goto_76

    .line 111
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_32
    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_49

    .line 112
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 113
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    goto :goto_76

    .line 114
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_49
    instance-of v0, p1, Ljava/lang/Byte;

    if-eqz v0, :cond_5e

    .line 115
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 116
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    move-object v1, p1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_76

    .line 117
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5e
    instance-of v0, p1, Ljava/lang/Short;

    if-eqz v0, :cond_77

    .line 118
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 123
    :goto_76
    return-object v0

    .line 121
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_77
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported number type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$1(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Ljava/lang/Number;
    .registers 6
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 126
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getMediaType()Lcom/samsung/android/sume/core/types/MediaType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/MediaType;->isScala()Z

    move-result v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "media is not scala"

    invoke-static {v0, v3, v2}, Lcom/samsung/android/sume/core/Def;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isInt()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 129
    :cond_27
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isLong()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 130
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/LongBuffer;->get(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 131
    :cond_3e
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isFloat()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 133
    :cond_55
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isByte()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 134
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 135
    :cond_68
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getDataType()Lcom/samsung/android/sume/core/types/DataType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sume/core/types/DataType;->isShort()Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 136
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    return-object v0

    .line 138
    :cond_7f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not supported scala type"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$new$2(Landroid/os/ParcelFileDescriptor;)Ljava/lang/String;
    .registers 4
    .param p0, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 142
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "fd=%d, len=%ld"

    invoke-static {v1, v0}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$new$3(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 145
    invoke-static {p0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->create(Lcom/samsung/android/sume/core/format/MediaFormat;)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 146
    .local v0, "dstBuffer":Landroid/hardware/HardwareBuffer;
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyFromByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;Landroid/hardware/HardwareBuffer;)V

    .line 147
    return-object v0
.end method

.method static synthetic blacklist lambda$new$4(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;)Ljava/nio/ByteBuffer;
    .registers 4
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 150
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 151
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p0, p1, v0}, Lcom/samsung/android/sume/core/buffer/SharedBufferManager;->copyToByteBuffer(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/hardware/HardwareBuffer;Ljava/nio/ByteBuffer;)V

    .line 152
    return-object v0
.end method

.method static synthetic blacklist lambda$new$5(Lcom/samsung/android/sume/core/format/MediaFormat;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .registers 3
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 156
    .local v0, "dstBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 157
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 158
    return-object v0
.end method

.method static synthetic blacklist lambda$new$6(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/nio/ByteBuffer;)Landroid/graphics/Bitmap;
    .registers 5
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .param p1, "srcBuffer"    # Ljava/nio/ByteBuffer;

    .line 161
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/core/types/ColorFormat;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/core/types/ColorFormat;->RGBA:Lcom/samsung/android/sume/core/types/ColorFormat;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->check(Z)V

    .line 162
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 163
    .local v0, "dstBuffer":Landroid/graphics/Bitmap;
    invoke-virtual {v0, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 164
    return-object v0
.end method

.method static synthetic blacklist lambda$new$7(Landroid/hardware/HardwareBuffer;)Ljava/lang/String;
    .registers 5
    .param p0, "hwBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[w=%d, h=%d, fmt=%d]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 177
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 176
    invoke-static {v0, v1}, Lcom/samsung/android/sume/Utils;->fmtStr(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic blacklist lambda$registerTransform$9(Ljava/util/Map$Entry;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 5
    .param p0, "it"    # Ljava/util/Map$Entry;

    .line 211
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/BiFunction;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/function/BiFunction;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Ljava/util/function/BiFunction;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$unRegisterRelease$13(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 242
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterRelease$14(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "releases"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 242
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda11;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterStringfy$16(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 260
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterStringfy$17(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "stringfy"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 260
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda24;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransform$10(Ljava/util/Map$Entry;Ljava/lang/String;)Z
    .registers 3
    .param p0, "e"    # Ljava/util/Map$Entry;
    .param p1, "it"    # Ljava/lang/String;

    .line 224
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$unRegisterTransform$11(Ljava/util/List;Ljava/util/Map$Entry;)Z
    .registers 4
    .param p0, "transforms"    # Ljava/util/List;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 224
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static blacklist newRegistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;
    .registers 2

    .line 92
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Registry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method public static blacklist newUnregistry()Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;
    .registers 2

    .line 96
    new-instance v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$Unregistry;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension$1;)V

    return-object v0
.end method

.method static blacklist popInternalBufferHandler()Ljava/util/function/Consumer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    return-object v0
.end method

.method public static blacklist putInternalBufferHandler(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "bufferHandler":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->internalBufferHandlerMap:Ljava/util/Map;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private blacklist registerReleases(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Consumer<",
            "*>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 229
    .local p1, "release":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Consumer<*>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda1;-><init>()V

    .line 230
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 237
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Consumer<*>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 238
    return-object p0
.end method

.method private blacklist registerStringfy(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/function/Function<",
            "*",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 247
    .local p1, "stringfy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Class<*>;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda9;-><init>()V

    .line 248
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 255
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/function/Function<*Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 256
    return-object p0
.end method

.method private blacklist registerTransform(Ljava/util/Map;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;",
            "Ljava/util/function/BiFunction<",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "**>;>;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 200
    .local p1, "transforms":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Pair<Ljava/lang/Class<*>;Ljava/lang/Class<*>;>;Ljava/util/function/BiFunction<Lcom/samsung/android/sume/core/format/MediaFormat;**>;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;)V

    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda7;-><init>()V

    .line 201
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 213
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;>;"
    iget-object v1, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 214
    return-object p0
.end method

.method private blacklist registerWrappedTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 218
    .local p1, "wrappedTransforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->wrappedTransformList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 219
    return-object p0
.end method

.method public static blacklist release(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 72
    .local p0, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doRelease(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public static blacklist reset()V
    .registers 2

    .line 76
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    .line 77
    .local v0, "ex":Lcom/samsung/android/sume/core/buffer/BufferExtension;
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 79
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 80
    iget-object v1, v0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 81
    return-void
.end method

.method public static blacklist stringfy(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    .local p0, "data":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doStringfy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist transform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .param p0, "format"    # Lcom/samsung/android/sume/core/format/MediaFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/sume/core/format/MediaFormat;",
            "TT;",
            "Ljava/lang/Class<",
            "TR;>;)TR;"
        }
    .end annotation

    .line 68
    .local p1, "data":Ljava/lang/Object;, "TT;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    invoke-static {}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getInstance()Lcom/samsung/android/sume/core/buffer/BufferExtension;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->doTransform(Lcom/samsung/android/sume/core/format/MediaFormat;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private blacklist unRegisterRelease(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 242
    .local p1, "releases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->releaseMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda29;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 243
    return-object p0
.end method

.method private blacklist unRegisterStringfy(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 260
    .local p1, "stringfy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->stringfyMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda10;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 261
    return-object p0
.end method

.method private blacklist unRegisterTransform(Ljava/util/List;)Lcom/samsung/android/sume/core/buffer/BufferExtension;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sume/core/buffer/BufferExtension;"
        }
    .end annotation

    .line 224
    .local p1, "transforms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->transformMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda25;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 225
    return-object p0
.end method


# virtual methods
.method synthetic blacklist lambda$findAvailableBinaryKey$21$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)Z
    .registers 15
    .param p1, "from"    # Ljava/lang/Class;
    .param p2, "to"    # Ljava/lang/Class;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "fromList"    # Ljava/util/List;
    .param p5, "toList"    # Ljava/util/List;
    .param p6, "it"    # Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "->"

    invoke-virtual {p6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, "token":[Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 320
    .local v2, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v2, :cond_1a

    .line 321
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 323
    :cond_1a
    iget-object v3, p0, Lcom/samsung/android/sume/core/buffer/BufferExtension;->extensionClassMap:Ljava/util/Map;

    const/4 v4, 0x1

    aget-object v5, v1, v4

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 324
    .local v3, "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_2e

    .line 325
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 327
    :cond_2e
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 328
    sget-object v5, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "find alternative for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return v4

    .line 331
    :cond_5d
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 332
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 333
    :cond_6c
    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 334
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7a} :catch_7b

    .line 336
    :cond_7a
    :goto_7a
    return v0

    .line 338
    .end local v1    # "token":[Ljava/lang/String;
    .end local v2    # "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "toClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_7b
    move-exception v1

    .line 339
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 340
    return v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$23$com-samsung-android-sume-core-buffer-BufferExtension(Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 11
    .param p1, "it1"    # Landroid/util/Pair;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it2"    # Landroid/util/Pair;

    .line 350
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "first":Ljava/lang/String;
    iget-object v1, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, "second":Ljava/lang/String;
    sget-object v2, Lcom/samsung/android/sume/core/buffer/BufferExtension;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "find 2nd order combinations for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " => "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v2, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-direct {v2, v3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;-><init>([Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;)V

    return-object v2
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$24$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Landroid/util/Pair;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 7
    .param p1, "toList"    # Ljava/util/List;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "registry"    # Ljava/util/Map;
    .param p4, "it1"    # Landroid/util/Pair;

    .line 359
    nop

    .line 346
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;

    invoke-direct {v1, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda31;-><init>(Landroid/util/Pair;)V

    .line 347
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 348
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;

    invoke-direct {v1, p0, p4, p2, p3}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda32;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Landroid/util/Pair;Ljava/lang/String;Ljava/util/Map;)V

    .line 349
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 359
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$findAvailableBinaryKey$26$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Ljava/lang/Class;)Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;
    .registers 9
    .param p1, "fromList"    # Ljava/util/List;
    .param p2, "toList"    # Ljava/util/List;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "registry"    # Ljava/util/Map;
    .param p5, "from"    # Ljava/lang/Class;
    .param p6, "to"    # Ljava/lang/Class;

    .line 362
    nop

    .line 345
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda26;-><init>(Lcom/samsung/android/sume/core/buffer/BufferExtension;Ljava/util/List;Ljava/lang/String;Ljava/util/Map;)V

    .line 346
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;

    invoke-direct {v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda27;-><init>()V

    .line 360
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;

    invoke-direct {v1, p5, p6}, Lcom/samsung/android/sume/core/buffer/BufferExtension$$ExternalSyntheticLambda28;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/buffer/BufferExtension$TransformFunction;

    return-object v0
.end method

.method synthetic blacklist lambda$registerReleases$12$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 232
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 233
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerStringfy$15$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 3
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 250
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 251
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getUnaryKey(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic blacklist lambda$registerTransform$8$com-samsung-android-sume-core-buffer-BufferExtension(Ljava/util/Map$Entry;)Ljava/lang/String;
    .registers 5
    .param p1, "it"    # Ljava/util/Map$Entry;

    .line 203
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    .line 204
    .local v0, "from":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Class;

    .line 206
    .local v1, "to":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 207
    invoke-direct {p0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->addToClassMap(Ljava/lang/Class;)V

    .line 209
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sume/core/buffer/BufferExtension;->getBinaryKey(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
