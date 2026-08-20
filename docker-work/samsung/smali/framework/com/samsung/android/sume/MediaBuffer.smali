.class public final Lcom/samsung/android/sume/MediaBuffer;
.super Ljava/lang/Object;
.source "MediaBuffer.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sume/MediaBuffer$State;,
        Lcom/samsung/android/sume/MediaBuffer$Flag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/MediaBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist END_OF_FRAME:I = 0x2

.field public static final blacklist END_OF_IMAGE:I = 0x1

.field public static final blacklist KEEP_CONCURRENT:I = 0x4

.field private static final blacklist TAG:Ljava/lang/String; = "MediaBuffer"

.field private static blacklist bufferAddrId:Ljava/lang/reflect/Field;

.field private static blacklist bufferCapacityId:Ljava/lang/reflect/Field;

.field private static final blacklist transformDeposit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private transient blacklist blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private blacklist bufferType:Lcom/samsung/android/sume/BufferType;

.field private transient blacklist condition:Ljava/util/concurrent/locks/Condition;

.field private transient blacklist data:Ljava/nio/ByteBuffer;

.field private transient blacklist dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

.field private transient blacklist dataObj:Ljava/lang/Object;

.field private transient blacklist dataWrapper:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist extra:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist flags:J

.field private blacklist format:Lcom/samsung/android/sume/MediaFormat;

.field private blacklist id:I

.field private final transient blacklist lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private transient blacklist sideChannel:Ljava/lang/Object;

.field private transient blacklist state:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$Db1U8iovGtR6MxxcLT32dFP006M(Lcom/samsung/android/sume/MediaBuffer;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->hwToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$n7DyQ3QlaBhaPhWTwT7bhewK4gc(Lcom/samsung/android/sume/MediaBuffer;Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->bufferToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    .line 77
    const-string/jumbo v0, "sume_mediabuffer_jni.media.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/samsung/android/sume/MediaBuffer$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/MediaBuffer$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/MediaBuffer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 204
    const-class v0, Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaFormat;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 208
    const-class v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    goto :goto_61

    .line 210
    :cond_5e
    invoke-virtual {p0, v1, v1}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 212
    :goto_61
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 213
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaFormat;)V
    .registers 5
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 106
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 107
    return-void
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/sume/MediaFormat;Ljava/nio/Buffer;)V
    .registers 3
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;
    .param p2, "data"    # Ljava/nio/Buffer;

    .line 110
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;-><init>(Lcom/samsung/android/sume/MediaFormat;)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public static blacklist alloc(Lcom/samsung/android/sume/BufferType;Lcom/samsung/android/sume/MediaFormat;)Lcom/samsung/android/sume/MediaBuffer;
    .registers 10
    .param p0, "type"    # Lcom/samsung/android/sume/BufferType;
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;

    .line 588
    invoke-virtual {p1}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v0, v0

    .line 589
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alloc: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaBuffer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer;

    invoke-direct {v1, p1}, Lcom/samsung/android/sume/MediaBuffer;-><init>(Lcom/samsung/android/sume/MediaFormat;)V

    .line 592
    .local v1, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$2;->$SwitchMap$com$samsung$android$sume$BufferType:[I

    invoke-virtual {p0}, Lcom/samsung/android/sume/BufferType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_46

    goto :goto_45

    .line 598
    :pswitch_2e
    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    move v2, v0

    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    goto :goto_45

    .line 594
    :pswitch_3d
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V

    .line 595
    nop

    .line 608
    :goto_45
    return-object v1

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_3d
        :pswitch_2e
    .end packed-switch
.end method

.method private blacklist bufferToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 449
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v3

    :goto_b
    invoke-static {v0}, Lcom/samsung/android/sume/Utils;->check(Z)V

    .line 450
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    .line 451
    .local v0, "src":Ljava/nio/Buffer;
    const/4 v1, 0x0

    .line 453
    .local v1, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v4

    .line 454
    .local v4, "size":I
    if-lez v4, :cond_19

    goto :goto_1a

    :cond_19
    move v2, v3

    :goto_1a
    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "empty input buffer can\'t be allowed"

    invoke-static {v2, v6, v5}, Lcom/samsung/android/sume/Utils;->require(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {v0}, Ljava/nio/Buffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_4b

    .line 457
    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_36

    .line 458
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 459
    move-object v2, v0

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_58

    .line 460
    :cond_36
    instance-of v2, v0, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_58

    .line 461
    shl-int/lit8 v4, v4, 0x2

    .line 462
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Ljava/nio/IntBuffer;

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_58

    .line 465
    :cond_4b
    instance-of v2, v0, Ljava/nio/IntBuffer;

    if-eqz v2, :cond_58

    .line 466
    shl-int/lit8 v4, v4, 0x2

    .line 467
    new-array v2, v3, [Ljava/lang/Object;

    const-string v5, "not implemented yet"

    invoke-static {v3, v5, v2}, Lcom/samsung/android/sume/Utils;->check(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 470
    :cond_58
    :goto_58
    return-object v1
.end method

.method private blacklist hwToByteBuffer(Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 491
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    invoke-static {v0}, Lcom/samsung/android/sume/Utils;->check(Z)V

    .line 493
    move-object v0, p1

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 494
    .local v0, "src":Landroid/hardware/HardwareBuffer;
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 496
    .local v1, "dst":Ljava/nio/ByteBuffer;
    :try_start_1a
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "cols"

    .line 497
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "rows"

    .line 498
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "size"

    iget-object v4, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 499
    invoke-virtual {v4}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "color-format"

    iget-object v4, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 500
    invoke-virtual {v4}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/sume/ColorFormat;->toJson()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 501
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 496
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sume/MediaBuffer;->nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I

    .line 504
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 505
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_62} :catch_6c
    .catchall {:try_start_1a .. :try_end_62} :catchall_6a

    .line 506
    nop

    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 512
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 506
    return-object v1

    .line 511
    :catchall_6a
    move-exception v2

    goto :goto_78

    .line 507
    :catch_6c
    move-exception v2

    .line 508
    .local v2, "e":Lorg/json/JSONException;
    :try_start_6d
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    .line 509
    const/4 v3, 0x0

    .line 511
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 512
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 509
    return-object v3

    .line 511
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_78
    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 512
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 513
    throw v2
.end method

.method private blacklist lockHwBuffer(Landroid/hardware/HardwareBuffer;)J
    .registers 8
    .param p1, "hwBuffer"    # Landroid/hardware/HardwareBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 431
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_3e

    if-nez p1, :cond_b

    goto :goto_3e

    .line 434
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->nativeLockHwBuffer(Landroid/hardware/HardwareBuffer;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lock hw buffer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_37
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0

    .line 432
    :cond_3e
    :goto_3e
    return-wide v2
.end method

.method private native blacklist nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I
.end method

.method private native blacklist nativeHw2ByteBuffer(Landroid/hardware/HardwareBuffer;Ljava/nio/Buffer;Ljava/lang/String;)I
.end method

.method private native blacklist nativeLockHwBuffer(Landroid/hardware/HardwareBuffer;)J
.end method

.method private native blacklist nativeSaveImage(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;)I
.end method

.method private native blacklist nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V
.end method

.method public static blacklist registerTransform(Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 98
    .local p1, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method private blacklist toHardwareBuffer()Landroid/hardware/HardwareBuffer;
    .registers 3

    .line 522
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_b

    .line 523
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    return-object v0

    .line 525
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 552
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    .line 525
    return-object v0
.end method

.method public static blacklist unRegisterTransform(Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;

    .line 101
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void
.end method

.method private blacklist unlockHwBuffer(Landroid/hardware/HardwareBuffer;)V
    .registers 6
    .param p1, "hwBuffer"    # Landroid/hardware/HardwareBuffer;

    .line 441
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_33

    .line 442
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unlock hw buffer["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/MediaBuffer;->nativeUnLockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 446
    :cond_33
    return-void
.end method


# virtual methods
.method public blacklist block()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    if-eq v0, v1, :cond_b

    .line 162
    return-void

    .line 164
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 166
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_24

    .line 168
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_1d} :catch_20
    .catchall {:try_start_10 .. :try_end_1d} :catchall_1e

    goto :goto_24

    .line 174
    :catchall_1e
    move-exception v0

    goto :goto_2b

    .line 171
    :catch_20
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_1e

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    nop

    .line 176
    return-void

    .line 174
    :goto_2b
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 175
    throw v0
.end method

.method protected whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 146
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, "obj":Ljava/lang/Object;
    return-object v0
.end method

.method public blacklist close()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 155
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    .line 157
    :cond_14
    return-void
.end method

.method public blacklist copyTo(Lcom/samsung/android/sume/MediaBuffer;)V
    .registers 4
    .param p1, "other"    # Lcom/samsung/android/sume/MediaBuffer;

    .line 115
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    iput v0, p1, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 117
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 118
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 119
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    .line 121
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->dataAddr:Ljava/util/concurrent/atomic/AtomicLong;

    .line 122
    iget-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    iput-object v0, p1, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 124
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    iput-wide v0, p1, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 126
    return-void
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBlockCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .line 414
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public blacklist getBufferType()Lcom/samsung/android/sume/BufferType;
    .registers 2

    .line 244
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    return-object v0
.end method

.method public blacklist getCondition()Ljava/util/concurrent/locks/Condition;
    .registers 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method public blacklist getData()Ljava/lang/Object;
    .registers 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    :goto_7
    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;)Ljava/lang/Object;
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

    .line 367
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 371
    .local p2, "defaultValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExtra()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public blacklist getFlags()J
    .registers 3

    .line 390
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    return-wide v0
.end method

.method public final blacklist getFormat()Lcom/samsung/android/sume/MediaFormat;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    return-object v0
.end method

.method public final blacklist getId()I
    .registers 2

    .line 350
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    return v0
.end method

.method public blacklist getSideChannel()Ljava/lang/Object;
    .registers 2

    .line 382
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getState()Ljava/util/concurrent/atomic/AtomicReference;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 272
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTypedData(Ljava/lang/Class;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/function/Function<",
            "Ljava/nio/ByteBuffer;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 277
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/nio/ByteBuffer;TT;>;"
    const-class v0, Ljava/nio/ByteBuffer;

    if-ne v0, p1, :cond_9

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 279
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    const-string v1, "MediaBuffer"

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    .line 280
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    return-object v0

    .line 281
    :cond_1d
    if-eqz p2, :cond_28

    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->getTypedData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 283
    :cond_28
    const-string v0, "data-obj is given, but no transform function given"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    return-object v2

    .line 286
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4e

    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v0

    .line 288
    :cond_3f
    if-eqz p2, :cond_48

    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 290
    :cond_48
    const-string v0, "data is given, but no transform function given"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-object v2

    .line 294
    :cond_4e
    return-object v2
.end method

.method public final blacklist getTypedData()Ljava/nio/ByteBuffer;
    .registers 3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public blacklist hasFlag(I)Z
    .registers 6
    .param p1, "flag"    # I

    .line 402
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    int-to-long v2, p1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method synthetic blacklist lambda$getTypedData$0$com-samsung-android-sume-MediaBuffer()Ljava/util/function/Function;
    .registers 3

    .line 261
    sget-object v0, Lcom/samsung/android/sume/MediaBuffer;->transformDeposit:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    return-object v0
.end method

.method synthetic blacklist lambda$getTypedData$1$com-samsung-android-sume-MediaBuffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    if-nez v0, :cond_d

    .line 257
    const-string v0, "MediaBuffer"

    const-string v1, "no data given"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x0

    return-object v0

    .line 260
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    .line 261
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Function;

    .line 263
    .local v0, "transform":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    if-eqz v0, :cond_2a

    .line 264
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 265
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    return-object v1
.end method

.method synthetic blacklist lambda$toHardwareBuffer$2$com-samsung-android-sume-MediaBuffer(Ljava/nio/ByteBuffer;)Landroid/hardware/HardwareBuffer;
    .registers 10
    .param p1, "it"    # Ljava/nio/ByteBuffer;

    .line 526
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 527
    invoke-virtual {v0}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v0

    long-to-int v2, v0

    .line 526
    const/4 v3, 0x1

    const/16 v4, 0x21

    const/4 v5, 0x1

    const-wide/16 v6, 0x33

    invoke-static/range {v2 .. v7}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 534
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    :try_start_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-nez v1, :cond_24

    .line 535
    move-object v1, p1

    .line 536
    .local v1, "org":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object p1, v2

    .line 537
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 540
    .end local v1    # "org":Ljava/nio/ByteBuffer;
    :cond_24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "cols"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 541
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/Shape;->getCols()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "rows"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 542
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getShape()Lcom/samsung/android/sume/Shape;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/Shape;->getRows()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "size"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 543
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->size()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "color-format"

    iget-object v3, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 544
    invoke-virtual {v3}, Lcom/samsung/android/sume/MediaFormat;->getColorFormat()Lcom/samsung/android/sume/ColorFormat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sume/ColorFormat;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 545
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 540
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/sume/MediaBuffer;->nativeByte2HwBuffer(Ljava/nio/Buffer;Landroid/hardware/HardwareBuffer;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;)V
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_71} :catch_72

    .line 547
    return-object v0

    .line 548
    :catch_72
    move-exception v1

    .line 549
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 550
    const/4 v2, 0x0

    return-object v2
.end method

.method public blacklist open()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    if-eq v0, v1, :cond_b

    .line 181
    return-void

    .line 183
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 185
    :try_start_10
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_25

    .line 187
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/samsung/android/sume/MediaBuffer$State;->CLOSE:Lcom/samsung/android/sume/MediaBuffer$State;

    sget-object v2, Lcom/samsung/android/sume/MediaBuffer$State;->OPEN:Lcom/samsung/android/sume/MediaBuffer$State;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    goto :goto_2a

    .line 191
    :cond_25
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2a
    .catchall {:try_start_10 .. :try_end_2a} :catchall_31

    .line 194
    :goto_2a
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    nop

    .line 196
    return-void

    .line 194
    :catchall_31
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->lock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    throw v0
.end method

.method public blacklist release()V
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    if-ne v0, v1, :cond_14

    .line 558
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-direct {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->unlockHwBuffer(Landroid/hardware/HardwareBuffer;)V

    .line 559
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    .line 562
    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 563
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 564
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 565
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 566
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 567
    return-void
.end method

.method public blacklist removeExtra(Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 377
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    return-void
.end method

.method public blacklist setBlockCount(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2
    .param p1, "blockCount"    # Ljava/util/concurrent/atomic/AtomicInteger;

    .line 418
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->blockCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 419
    return-void
.end method

.method public blacklist setBufferType(Lcom/samsung/android/sume/BufferType;)V
    .registers 2
    .param p1, "bufferType"    # Lcom/samsung/android/sume/BufferType;

    .line 248
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 249
    return-void
.end method

.method public blacklist setCondition(Ljava/util/concurrent/locks/Condition;)V
    .registers 2
    .param p1, "condition"    # Ljava/util/concurrent/locks/Condition;

    .line 427
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->condition:Ljava/util/concurrent/locks/Condition;

    .line 428
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;)V
    .registers 3
    .param p1, "dataObj"    # Ljava/lang/Object;

    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sume/MediaBuffer;->setData(Ljava/lang/Object;Ljava/util/function/Function;)V

    .line 305
    return-void
.end method

.method public blacklist setData(Ljava/lang/Object;Ljava/util/function/Function;)V
    .registers 5
    .param p1, "dataObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/function/Function<",
            "Ljava/lang/Object;",
            "Ljava/nio/ByteBuffer;",
            ">;)V"
        }
    .end annotation

    .line 310
    .local p2, "wrapper":Ljava/util/function/Function;, "Ljava/util/function/Function<Ljava/lang/Object;Ljava/nio/ByteBuffer;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_e

    .line 311
    sget-object v1, Lcom/samsung/android/sume/BufferType;->NONE:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 312
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 313
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 314
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    goto :goto_55

    .line 315
    :cond_e
    instance-of v1, p1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_20

    .line 316
    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 317
    move-object v1, p1

    check-cast v1, Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 318
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 319
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    goto :goto_55

    .line 321
    :cond_20
    instance-of v1, p1, Ljava/nio/Buffer;

    if-eqz v1, :cond_31

    .line 322
    sget-object v1, Lcom/samsung/android/sume/BufferType;->HEAP:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 323
    if-nez p2, :cond_4f

    .line 324
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    move-object p2, v1

    goto :goto_4f

    .line 325
    :cond_31
    instance-of v1, p1, Landroid/hardware/HardwareBuffer;

    if-eqz v1, :cond_42

    .line 326
    sget-object v1, Lcom/samsung/android/sume/BufferType;->SHARED:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 327
    if-nez p2, :cond_4f

    .line 328
    new-instance v1, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sume/MediaBuffer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/sume/MediaBuffer;)V

    move-object p2, v1

    goto :goto_4f

    .line 329
    :cond_42
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4b

    .line 330
    sget-object v1, Lcom/samsung/android/sume/BufferType;->LIST:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    goto :goto_4f

    .line 332
    :cond_4b
    sget-object v1, Lcom/samsung/android/sume/BufferType;->PROPRIETARY:Lcom/samsung/android/sume/BufferType;

    iput-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->bufferType:Lcom/samsung/android/sume/BufferType;

    .line 335
    :cond_4f
    :goto_4f
    iput-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->data:Ljava/nio/ByteBuffer;

    .line 336
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->dataObj:Ljava/lang/Object;

    .line 337
    iput-object p2, p0, Lcom/samsung/android/sume/MediaBuffer;->dataWrapper:Ljava/util/function/Function;

    .line 339
    :goto_55
    return-void
.end method

.method public blacklist setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/sume/MediaBuffer;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 358
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-object p0
.end method

.method public blacklist setExtra(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/samsung/android/sume/MediaBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/samsung/android/sume/MediaBuffer;"
        }
    .end annotation

    .line 362
    .local p1, "meta":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 363
    return-object p0
.end method

.method public blacklist setFlags(I)V
    .registers 6
    .param p1, "flag"    # I

    .line 398
    iget-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    int-to-long v2, p1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 399
    return-void
.end method

.method public blacklist setFlags(J)V
    .registers 3
    .param p1, "flags"    # J

    .line 394
    iput-wide p1, p0, Lcom/samsung/android/sume/MediaBuffer;->flags:J

    .line 395
    return-void
.end method

.method public blacklist setFormat(Lcom/samsung/android/sume/MediaFormat;)V
    .registers 2
    .param p1, "format"    # Lcom/samsung/android/sume/MediaFormat;

    .line 346
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 347
    return-void
.end method

.method public final blacklist setId(I)V
    .registers 2
    .param p1, "var1"    # I

    .line 354
    iput p1, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    .line 355
    return-void
.end method

.method public blacklist setSideChannel(Ljava/lang/Object;)V
    .registers 2
    .param p1, "sideChannel"    # Ljava/lang/Object;

    .line 386
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->sideChannel:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public blacklist setState(Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/sume/MediaBuffer$State;",
            ">;)V"
        }
    .end annotation

    .line 410
    .local p1, "state":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/samsung/android/sume/MediaBuffer$State;>;"
    iput-object p1, p0, Lcom/samsung/android/sume/MediaBuffer;->state:Ljava/util/concurrent/atomic/AtomicReference;

    .line 411
    return-void
.end method

.method public blacklist toMediaBuffer()Lcom/samsung/android/sume/MediaBuffer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/MediaBuffer;->toMediaBuffer(Z)Lcom/samsung/android/sume/MediaBuffer;

    move-result-object v0

    return-object v0
.end method

.method public blacklist toMediaBuffer(Z)Lcom/samsung/android/sume/MediaBuffer;
    .registers 8
    .param p1, "deepCopied"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/sume/MediaBuffer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/MediaBuffer;

    .line 134
    .local v0, "mbuf":Lcom/samsung/android/sume/MediaBuffer;
    if-eqz p1, :cond_3f

    .line 135
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {v1}, Lcom/samsung/android/sume/MediaFormat;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sume/MediaFormat;

    iput-object v1, v0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    .line 136
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 138
    .local v2, "entry":Ljava/util/Map$Entry;
    iget-object v3, v0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 140
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_3f
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 217
    iget-object v0, p0, Lcom/samsung/android/sume/MediaBuffer;->format:Lcom/samsung/android/sume/MediaFormat;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 218
    iget v0, p0, Lcom/samsung/android/sume/MediaBuffer;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 221
    invoke-direct {p0}, Lcom/samsung/android/sume/MediaBuffer;->toHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    .line 222
    .local v0, "hwBuffer":Landroid/hardware/HardwareBuffer;
    if-nez v0, :cond_19

    .line 223
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 225
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    :goto_20
    iget-object v1, p0, Lcom/samsung/android/sume/MediaBuffer;->extra:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 229
    return-void
.end method
