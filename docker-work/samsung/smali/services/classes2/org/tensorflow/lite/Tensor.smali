.class public final Lorg/tensorflow/lite/Tensor;
.super Ljava/lang/Object;
.source "Tensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tensorflow/lite/Tensor$QuantizationParams;
    }
.end annotation


# instance fields
.field public final dtype:Lorg/tensorflow/lite/DataType;

.field public nativeHandle:J

.field public final quantizationParamsCopy:Lorg/tensorflow/lite/Tensor$QuantizationParams;

.field public shapeCopy:[I

.field public final shapeSignatureCopy:[I


# direct methods
.method public constructor <init>(J)V
    .registers 5

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 560
    iput-wide p1, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    .line 561
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->dtype(J)I

    move-result v0

    invoke-static {v0}, Lorg/tensorflow/lite/DataType;->fromC(I)Lorg/tensorflow/lite/DataType;

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    .line 562
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    .line 563
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->shapeSignature(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeSignatureCopy:[I

    .line 564
    new-instance v0, Lorg/tensorflow/lite/Tensor$QuantizationParams;

    .line 566
    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->quantizationScale(J)F

    move-result v1

    invoke-static {p1, p2}, Lorg/tensorflow/lite/Tensor;->quantizationZeroPoint(J)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lorg/tensorflow/lite/Tensor$QuantizationParams;-><init>(FI)V

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->quantizationParamsCopy:Lorg/tensorflow/lite/Tensor$QuantizationParams;

    return-void
.end method

.method private static native buffer(J)Ljava/nio/ByteBuffer;
.end method

.method public static computeNumDimensions(Ljava/lang/Object;)I
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_27

    .line 443
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_27

    .line 446
    :cond_e
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 449
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lorg/tensorflow/lite/Tensor;->computeNumDimensions(Ljava/lang/Object;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 447
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Array lengths cannot be 0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_27
    :goto_27
    return v0
.end method

.method public static computeNumElements([I)I
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 435
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_b

    .line 436
    aget v2, p0, v1

    mul-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return v0
.end method

.method private static native create(JI)J
.end method

.method private static native delete(J)V
.end method

.method private static native dtype(J)I
.end method

.method public static fillShape(Ljava/lang/Object;I[I)V
    .registers 8

    if-eqz p2, :cond_48

    .line 454
    array-length v0, p2

    if-ne p1, v0, :cond_6

    goto :goto_48

    .line 457
    :cond_6
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 458
    aget v1, p2, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_13

    .line 459
    aput v0, p2, p1

    goto :goto_15

    :cond_13
    if-ne v1, v0, :cond_24

    :goto_15
    if-ge v2, v0, :cond_23

    .line 465
    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v4, p1, 0x1

    invoke-static {v1, v4, p2}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_23
    return-void

    .line 461
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aget p2, p2, p1

    .line 462
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    const/4 p2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Mismatched lengths (%d and %d) in dimension %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    :goto_48
    return-void
.end method

.method public static fromIndex(JI)Lorg/tensorflow/lite/Tensor;
    .registers 4

    .line 45
    new-instance v0, Lorg/tensorflow/lite/Tensor;

    invoke-static {p0, p1, p2}, Lorg/tensorflow/lite/Tensor;->create(JI)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lorg/tensorflow/lite/Tensor;-><init>(J)V

    return-object v0
.end method

.method private static native hasDelegateBufferHandle(J)Z
.end method

.method private static native index(J)I
.end method

.method public static isBuffer(Ljava/lang/Object;)Z
    .registers 1

    .line 546
    instance-of p0, p0, Ljava/nio/Buffer;

    return p0
.end method

.method public static isByteBuffer(Ljava/lang/Object;)Z
    .registers 1

    .line 550
    instance-of p0, p0, Ljava/nio/ByteBuffer;

    return p0
.end method

.method private static native name(J)Ljava/lang/String;
.end method

.method private static native numBytes(J)I
.end method

.method private static native quantizationScale(J)F
.end method

.method private static native quantizationZeroPoint(J)I
.end method

.method private static native readMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native shape(J)[I
.end method

.method private static native shapeSignature(J)[I
.end method

.method private static native writeDirectBuffer(JLjava/nio/Buffer;)V
.end method

.method private static native writeMultiDimensionalArray(JLjava/lang/Object;)V
.end method

.method private static native writeScalar(JLjava/lang/Object;)V
.end method


# virtual methods
.method public asReadOnlyBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 204
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public final buffer()Ljava/nio/ByteBuffer;
    .registers 3

    .line 570
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->buffer(J)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .registers 3

    .line 92
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->delete(J)V

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    return-void
.end method

.method public computeShapeOf(Ljava/lang/Object;)[I
    .registers 4

    .line 413
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->computeNumDimensions(Ljava/lang/Object;)I

    move-result v0

    .line 414
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    if-ne p0, v1, :cond_29

    .line 415
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 416
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 417
    :goto_14
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 418
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_14

    .line 422
    :cond_1f
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    add-int/lit8 v0, v0, -0x1

    .line 427
    :cond_29
    new-array p0, v0, [I

    const/4 v0, 0x0

    .line 428
    invoke-static {p1, v0, p0}, Lorg/tensorflow/lite/Tensor;->fillShape(Ljava/lang/Object;I[I)V

    return-object p0
.end method

.method public copyTo(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_13

    .line 295
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->hasDelegateBufferHandle(J)Z

    move-result p0

    if-eqz p0, :cond_b

    return-object p1

    .line 298
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null outputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 301
    :cond_13
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 302
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfDstShapeIsIncompatible(Ljava/lang/Object;)V

    .line 303
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 304
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    invoke-virtual {p0, v0}, Lorg/tensorflow/lite/Tensor;->copyTo(Ljava/nio/Buffer;)V

    goto :goto_2b

    .line 306
    :cond_26
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->readMultiDimensionalArray(JLjava/lang/Object;)V

    :goto_2b
    return-object p1
.end method

.method public final copyTo(Ljava/nio/Buffer;)V
    .registers 4

    .line 313
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_e

    .line 314
    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_55

    .line 315
    :cond_e
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_20

    .line 316
    check-cast p1, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_55

    .line 317
    :cond_20
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_32

    .line 318
    check-cast p1, Ljava/nio/LongBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto :goto_55

    .line 319
    :cond_32
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_44

    .line 320
    check-cast p1, Ljava/nio/IntBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_55

    .line 321
    :cond_44
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_56

    .line 322
    check-cast p1, Ljava/nio/ShortBuffer;

    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :goto_55
    return-void

    .line 324
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected output buffer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dataType()Lorg/tensorflow/lite/DataType;
    .registers 1

    .line 98
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    return-object p0
.end method

.method public dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;
    .registers 5

    .line 358
    const-class v0, Ljava/lang/String;

    if-eqz p1, :cond_ca

    .line 359
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 363
    :goto_e
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 364
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_e

    .line 366
    :cond_19
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 367
    sget-object p0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 368
    :cond_24
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 369
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 370
    :cond_2f
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 371
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT16:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 372
    :cond_3a
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 374
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    sget-object p1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    if-ne p0, p1, :cond_49

    return-object p1

    .line 377
    :cond_49
    sget-object p0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 378
    :cond_4c
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 379
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 380
    :cond_57
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_62

    .line 381
    sget-object p0, Lorg/tensorflow/lite/DataType;->BOOL:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 382
    :cond_62
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ca

    .line 383
    sget-object p0, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 387
    :cond_6b
    const-class p0, Ljava/lang/Float;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c7

    instance-of p0, p1, Ljava/nio/FloatBuffer;

    if-eqz p0, :cond_78

    goto :goto_c7

    .line 389
    :cond_78
    const-class p0, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c4

    instance-of p0, p1, Ljava/nio/IntBuffer;

    if-eqz p0, :cond_85

    goto :goto_c4

    .line 391
    :cond_85
    const-class p0, Ljava/lang/Short;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c1

    instance-of p0, p1, Ljava/nio/ShortBuffer;

    if-eqz p0, :cond_92

    goto :goto_c1

    .line 393
    :cond_92
    const-class p0, Ljava/lang/Byte;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9d

    .line 397
    sget-object p0, Lorg/tensorflow/lite/DataType;->UINT8:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 398
    :cond_9d
    const-class p0, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_be

    instance-of p0, p1, Ljava/nio/LongBuffer;

    if-eqz p0, :cond_aa

    goto :goto_be

    .line 400
    :cond_aa
    const-class p0, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b5

    .line 401
    sget-object p0, Lorg/tensorflow/lite/DataType;->BOOL:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 402
    :cond_b5
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_ca

    .line 403
    sget-object p0, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 399
    :cond_be
    :goto_be
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT64:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 392
    :cond_c1
    :goto_c1
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT16:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 390
    :cond_c4
    :goto_c4
    sget-object p0, Lorg/tensorflow/lite/DataType;->INT32:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 388
    :cond_c7
    :goto_c7
    sget-object p0, Lorg/tensorflow/lite/DataType;->FLOAT32:Lorg/tensorflow/lite/DataType;

    return-object p0

    .line 407
    :cond_ca
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataType error: cannot resolve DataType of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getInputShapeIfDifferent(Ljava/lang/Object;)[I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 336
    :cond_4
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-object v0

    .line 339
    :cond_b
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object p1

    .line 341
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_1b

    return-object v0

    :cond_1b
    return-object p1
.end method

.method public index()I
    .registers 3

    .line 149
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->index(J)I

    move-result p0

    return p0
.end method

.method public name()Ljava/lang/String;
    .registers 3

    .line 158
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->name(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public numBytes()I
    .registers 3

    .line 113
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->numBytes(J)I

    move-result p0

    return p0
.end method

.method public numDimensions()I
    .registers 1

    .line 108
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    array-length p0, p0

    return p0
.end method

.method public numElements()I
    .registers 1

    .line 118
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p0}, Lorg/tensorflow/lite/Tensor;->computeNumElements([I)I

    move-result p0

    return p0
.end method

.method public quantizationParams()Lorg/tensorflow/lite/Tensor$QuantizationParams;
    .registers 1

    .line 168
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->quantizationParamsCopy:Lorg/tensorflow/lite/Tensor$QuantizationParams;

    return-object p0
.end method

.method public refreshShape()V
    .registers 3

    .line 353
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1}, Lorg/tensorflow/lite/Tensor;->shape(J)[I

    move-result-object v0

    iput-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    return-void
.end method

.method public setTo(Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_13

    .line 219
    iget-wide p0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {p0, p1}, Lorg/tensorflow/lite/Tensor;->hasDelegateBufferHandle(J)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 222
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null inputs are allowed only if the Tensor is bound to a buffer handle."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 225
    :cond_13
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfTypeIsIncompatible(Ljava/lang/Object;)V

    .line 226
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->throwIfSrcShapeIsIncompatible(Ljava/lang/Object;)V

    .line 227
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 228
    check-cast p1, Ljava/nio/Buffer;

    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->setTo(Ljava/nio/Buffer;)V

    goto :goto_4b

    .line 229
    :cond_25
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    sget-object v1, Lorg/tensorflow/lite/DataType;->STRING:Lorg/tensorflow/lite/DataType;

    if-ne v0, v1, :cond_36

    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    array-length v0, v0

    if-nez v0, :cond_36

    .line 231
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeScalar(JLjava/lang/Object;)V

    goto :goto_4b

    .line 232
    :cond_36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 233
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeMultiDimensionalArray(JLjava/lang/Object;)V

    goto :goto_4b

    .line 235
    :cond_46
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeScalar(JLjava/lang/Object;)V

    :goto_4b
    return-void
.end method

.method public final setTo(Ljava/nio/Buffer;)V
    .registers 5

    .line 242
    instance-of v0, p1, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_27

    .line 243
    move-object v0, p1

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 244
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_1e

    .line 245
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto/16 :goto_cc

    .line 247
    :cond_1e
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_cc

    .line 249
    :cond_27
    instance-of v0, p1, Ljava/nio/LongBuffer;

    if-eqz v0, :cond_52

    .line 250
    move-object v0, p1

    check-cast v0, Ljava/nio/LongBuffer;

    .line 251
    invoke-virtual {v0}, Ljava/nio/LongBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Ljava/nio/LongBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_45

    .line 252
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto/16 :goto_cc

    .line 254
    :cond_45
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/LongBuffer;->put(Ljava/nio/LongBuffer;)Ljava/nio/LongBuffer;

    goto/16 :goto_cc

    .line 256
    :cond_52
    instance-of v0, p1, Ljava/nio/FloatBuffer;

    if-eqz v0, :cond_7b

    .line 257
    move-object v0, p1

    check-cast v0, Ljava/nio/FloatBuffer;

    .line 258
    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_6f

    .line 259
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_cc

    .line 261
    :cond_6f
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/FloatBuffer;->put(Ljava/nio/FloatBuffer;)Ljava/nio/FloatBuffer;

    goto :goto_cc

    .line 263
    :cond_7b
    instance-of v0, p1, Ljava/nio/IntBuffer;

    if-eqz v0, :cond_a4

    .line 264
    move-object v0, p1

    check-cast v0, Ljava/nio/IntBuffer;

    .line 265
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_98

    .line 266
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_cc

    .line 268
    :cond_98
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/IntBuffer;->put(Ljava/nio/IntBuffer;)Ljava/nio/IntBuffer;

    goto :goto_cc

    .line 270
    :cond_a4
    instance-of v0, p1, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_cd

    .line 271
    move-object v0, p1

    check-cast v0, Ljava/nio/ShortBuffer;

    .line 272
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    if-ne v1, v2, :cond_c1

    .line 273
    iget-wide v0, p0, Lorg/tensorflow/lite/Tensor;->nativeHandle:J

    invoke-static {v0, v1, p1}, Lorg/tensorflow/lite/Tensor;->writeDirectBuffer(JLjava/nio/Buffer;)V

    goto :goto_cc

    .line 275
    :cond_c1
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->buffer()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    :goto_cc
    return-void

    .line 278
    :cond_cd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected input buffer type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public shape()[I
    .registers 1

    .line 128
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    return-object p0
.end method

.method public shapeSignature()[I
    .registers 1

    .line 140
    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeSignatureCopy:[I

    return-object p0
.end method

.method public final throwIfDstShapeIsIncompatible(Ljava/lang/Object;)V
    .registers 8

    .line 518
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_4a

    .line 519
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    .line 520
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->numBytes()I

    move-result v5

    .line 525
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    goto :goto_27

    :cond_1c
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v0

    mul-int/2addr p1, v0

    :goto_27
    if-gt v5, p1, :cond_2a

    return-void

    .line 527
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 531
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Cannot copy from a TensorFlowLite tensor (%s) with %d bytes to a Java Buffer with %d bytes."

    .line 528
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 535
    :cond_4a
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object p1

    .line 536
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_57

    return-void

    .line 537
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 541
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Cannot copy from a TensorFlowLite tensor (%s) with shape %s to a Java object with shape %s."

    .line 538
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final throwIfSrcShapeIsIncompatible(Ljava/lang/Object;)V
    .registers 8

    .line 491
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isBuffer(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v0, :cond_4a

    .line 492
    move-object v0, p1

    check-cast v0, Ljava/nio/Buffer;

    .line 493
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->numBytes()I

    move-result v5

    .line 497
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    goto :goto_27

    :cond_1c
    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result p1

    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->byteSize()I

    move-result v0

    mul-int/2addr p1, v0

    :goto_27
    if-ne v5, p1, :cond_2a

    return-void

    .line 499
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->name()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Cannot copy to a TensorFlowLite tensor (%s) with %d bytes from a Java Buffer with %d bytes."

    .line 500
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_4a
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->computeShapeOf(Ljava/lang/Object;)[I

    move-result-object p1

    .line 508
    iget-object v0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_57

    return-void

    .line 509
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v4, v4, [Ljava/lang/Object;

    .line 513
    invoke-virtual {p0}, Lorg/tensorflow/lite/Tensor;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->shapeCopy:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v4, v1

    const-string p0, "Cannot copy to a TensorFlowLite tensor (%s) with shape %s from a Java object with shape %s."

    .line 510
    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final throwIfTypeIsIncompatible(Ljava/lang/Object;)V
    .registers 6

    .line 471
    invoke-static {p1}, Lorg/tensorflow/lite/Tensor;->isByteBuffer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 474
    :cond_7
    invoke-virtual {p0, p1}, Lorg/tensorflow/lite/Tensor;->dataTypeOf(Ljava/lang/Object;)Lorg/tensorflow/lite/DataType;

    move-result-object v0

    .line 476
    iget-object v1, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    if-eq v0, v1, :cond_42

    .line 478
    invoke-virtual {v0}, Lorg/tensorflow/lite/DataType;->toStringName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    invoke-virtual {v2}, Lorg/tensorflow/lite/DataType;->toStringName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return-void

    .line 482
    :cond_20
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object p0, p0, Lorg/tensorflow/lite/Tensor;->dtype:Lorg/tensorflow/lite/DataType;

    aput-object p0, v2, v3

    const/4 p0, 0x1

    .line 486
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, p0

    const/4 p0, 0x2

    aput-object v0, v2, p0

    const-string p0, "Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s)."

    .line 483
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    return-void
.end method
