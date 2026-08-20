.class public Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;
.super Landroid/media/Image;
.source "ProcessorImageImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;
    }
.end annotation


# static fields
.field private static final NUM_OF_PLANE_FOR_JPEG:I = 0x1

.field private static final NUM_OF_PLANE_FOR_YUV:I = 0x3

.field private static final NV21_UV_PIXEL_STRIDE:I = 0x2

.field private static final NV21_Y_PIXEL_STRIDE:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private METHOD_RELEASE:Ljava/lang/reflect/Method;

.field private mBuffer:Ljava/nio/ByteBuffer;

.field private final mFormat:I

.field private final mHeight:I

.field private mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

.field private final mShared:Z

.field private mTimeStamp:J

.field private mTransform:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    const-class v0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/Object;)V
    .registers 15
    .param p1, "version_code"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .line 40
    invoke-direct {p0}, Landroid/media/Image;-><init>()V

    .line 46
    if-eqz p2, :cond_a9

    array-length v0, p2

    const/4 v1, 0x6

    if-lt v0, v1, :cond_a9

    .line 49
    const/4 v0, 0x0

    aget-object v1, p2, v0

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 50
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    aget-object v3, p2, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 51
    .local v3, "format":I
    const/4 v4, 0x2

    aget-object v5, p2, v4

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 52
    .local v5, "width":I
    const/4 v6, 0x3

    aget-object v7, p2, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 53
    .local v7, "height":I
    const/4 v8, 0x4

    aget-object v8, p2, v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 54
    .local v8, "shared":Z
    const/4 v9, 0x5

    aget-object v9, p2, v9

    check-cast v9, Ljava/lang/reflect/Method;

    .line 56
    .local v9, "release":Ljava/lang/reflect/Method;
    iput-boolean v8, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mShared:Z

    .line 57
    iput-object v1, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    .line 58
    iput v3, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mFormat:I

    .line 59
    iput v5, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mWidth:I

    .line 60
    iput v7, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mHeight:I

    .line 61
    const/16 v10, 0x100

    if-ne v3, v10, :cond_57

    .line 62
    new-array v4, v2, [Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iput-object v4, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    .line 63
    new-instance v6, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iget-object v10, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-direct {v6, p0, v10, v0, v0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;-><init>(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v4, v0

    goto :goto_9e

    .line 64
    :cond_57
    const/16 v10, 0x23

    if-ne v3, v10, :cond_9e

    .line 66
    new-array v6, v6, [Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iput-object v6, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    .line 68
    new-instance v10, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iget-object v11, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-direct {v10, p0, v11, v5, v2}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;-><init>(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;Ljava/nio/ByteBuffer;II)V

    aput-object v10, v6, v0

    .line 70
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    mul-int v6, v5, v7

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    new-instance v6, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iget-object v10, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-direct {v6, p0, v10, v5, v4}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;-><init>(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v0, v2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    mul-int v6, v5, v7

    add-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    new-instance v6, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    iget-object v10, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-direct {v6, p0, v10, v5, v4}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;-><init>(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;Ljava/nio/ByteBuffer;II)V

    aput-object v6, v0, v4

    .line 76
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 79
    :cond_9e
    :goto_9e
    iput-object v9, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->METHOD_RELEASE:Ljava/lang/reflect/Method;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mTimeStamp:J

    .line 83
    iput-boolean v2, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mIsImageValid:Z

    .line 84
    return-void

    .line 47
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "format":I
    .end local v5    # "width":I
    .end local v7    # "height":I
    .end local v8    # "shared":Z
    .end local v9    # "release":Ljava/lang/reflect/Method;
    :cond_a9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal arguments to Image constructor"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mIsImageValid:Z

    if-eqz v0, :cond_33

    .line 89
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_9
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 90
    .local v4, "plane":Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;
    # invokes: Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->clear()V
    invoke-static {v4}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;->access$000(Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;)V

    .line 89
    .end local v4    # "plane":Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 92
    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    .line 93
    iget-boolean v1, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mShared:Z

    if-nez v1, :cond_2f

    .line 95
    :try_start_1a
    iget-object v1, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->METHOD_RELEASE:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_26} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_26} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_26} :catch_27

    .line 98
    goto :goto_2f

    .line 96
    :catch_27
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->TAG:Ljava/lang/String;

    const-string v4, "Fail to release native heap."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    iput-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mBuffer:Ljava/nio/ByteBuffer;

    .line 102
    iput-boolean v2, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mIsImageValid:Z

    .line 104
    :cond_33
    return-void
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 161
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    nop

    .line 163
    return-void

    .line 161
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    throw v0
.end method

.method public getFormat()I
    .registers 2

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 109
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mFormat:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 121
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mHeight:I

    return v0
.end method

.method public getPlanes()[Landroid/media/Image$Plane;
    .registers 2

    .line 126
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 127
    iget-object v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mPlanes:[Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl$ImagePlane;

    return-object v0
.end method

.method public getScalingMode()I
    .registers 2

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 133
    iget-wide v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mTimeStamp:J

    return-wide v0
.end method

.method public getTransform()I
    .registers 2

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 140
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mTransform:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 115
    iget v0, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mWidth:I

    return v0
.end method

.method public setTimestamp(J)V
    .registers 3
    .param p1, "timestamp"    # J

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->throwISEIfImageIsInvalid()V

    .line 153
    iput-wide p1, p0, Lcom/samsung/android/sdk/camera/impl/internal/ProcessorImageImpl;->mTimeStamp:J

    .line 154
    return-void
.end method
