.class public final Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
.super Ljava/lang/Object;
.source "CodedOutputByteBufferNano.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;
    }
.end annotation


# instance fields
.field private final blacklist buffer:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 65
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor blacklist <init>([BII)V
    .registers 4

    .line 60
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static blacklist computeInt32Size(II)I
    .registers 2

    .line 594
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeInt32SizeNoTag(I)I
    .registers 1

    if-ltz p0, :cond_7

    .line 775
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0

    :cond_7
    const/16 p0, 0xa

    return p0
.end method

.method public static blacklist computeMessageSize(ILcom/android/phone/ecc/nano/MessageNano;)I
    .registers 2

    .line 648
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeMessageSizeNoTag(Lcom/android/phone/ecc/nano/MessageNano;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeMessageSizeNoTag(Lcom/android/phone/ecc/nano/MessageNano;)I
    .registers 2

    .line 828
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/MessageNano;->getSerializedSize()I

    move-result p0

    .line 829
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeRawVarint32Size(I)I
    .registers 2

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_c

    const/4 p0, 0x2

    return p0

    :cond_c
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_13

    const/4 p0, 0x3

    return p0

    :cond_13
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_1a

    const/4 p0, 0x4

    return p0

    :cond_1a
    const/4 p0, 0x5

    return p0
.end method

.method public static blacklist computeStringSize(ILjava/lang/String;)I
    .registers 2

    .line 630
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeTagSize(I)I

    move-result p0

    invoke-static {p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static blacklist computeStringSizeNoTag(Ljava/lang/String;)I
    .registers 2

    .line 811
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result p0

    .line 812
    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static blacklist computeTagSize(I)I
    .registers 2

    const/4 v0, 0x0

    .line 982
    invoke-static {p0, v0}, Lcom/android/phone/ecc/nano/WireFormatNano;->makeTag(II)I

    move-result p0

    invoke-static {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result p0

    return p0
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;[BII)I
    .registers 10

    .line 457
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_6
    const/16 v2, 0x80

    if-ge v1, v0, :cond_1a

    add-int v3, v1, p2

    if-ge v3, p3, :cond_1a

    .line 463
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_1a

    int-to-byte v2, v4

    .line 464
    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    if-ne v1, v0, :cond_1e

    add-int/2addr p2, v0

    return p2

    :cond_1e
    add-int/2addr p2, v1

    :goto_1f
    if-ge v1, v0, :cond_f2

    .line 471
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_31

    if-ge p2, p3, :cond_31

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    .line 473
    aput-byte v3, p1, p2

    :goto_2e
    move p2, v4

    goto/16 :goto_b5

    :cond_31
    const/16 v4, 0x800

    if-ge v3, v4, :cond_4b

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_4b

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0x6

    or-int/lit16 v5, v5, 0x3c0

    int-to-byte v5, v5

    .line 475
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 476
    aput-byte v3, p1, v4

    goto :goto_b5

    :cond_4b
    const v4, 0xd800

    if-lt v3, v4, :cond_55

    const v4, 0xdfff

    if-ge v4, v3, :cond_75

    :cond_55
    add-int/lit8 v4, p3, -0x3

    if-gt p2, v4, :cond_75

    add-int/lit8 v4, p2, 0x1

    ushr-int/lit8 v5, v3, 0xc

    or-int/lit16 v5, v5, 0x1e0

    int-to-byte v5, v5

    .line 479
    aput-byte v5, p1, p2

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v5, v3, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 480
    aput-byte v5, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v2

    int-to-byte v3, v3

    .line 481
    aput-byte v3, p1, p2

    goto :goto_2e

    :cond_75
    add-int/lit8 v4, p3, -0x4

    if-gt p2, v4, :cond_d3

    add-int/lit8 v4, v1, 0x1

    .line 485
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_ba

    .line 486
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 489
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x12

    or-int/lit16 v5, v5, 0xf0

    int-to-byte v5, v5

    .line 490
    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 491
    aput-byte v5, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/2addr v5, v2

    int-to-byte v5, v5

    .line 492
    aput-byte v5, p1, p2

    add-int/lit8 p2, v3, 0x1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    .line 493
    aput-byte v1, p1, v3

    move v1, v4

    :goto_b5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1f

    :cond_b9
    move v1, v4

    .line 487
    :cond_ba
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unpaired surrogate at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 495
    :cond_d3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f2
    return p2
.end method

.method private static blacklist encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 408
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_38

    .line 410
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 413
    :try_start_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 414
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    .line 415
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 412
    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;[BII)I

    move-result p0

    .line 416
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_29
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_29} :catch_2a

    goto :goto_37

    :catch_2a
    move-exception p0

    .line 418
    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    .line 419
    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw p1

    .line 423
    :cond_34
    invoke-static {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    :goto_37
    return-void

    .line 409
    :cond_38
    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0
.end method

.method private static blacklist encodeDirect(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .registers 8

    .line 428
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_a4

    .line 430
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_15

    int-to-byte v2, v2

    .line 432
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_15
    const/16 v4, 0x800

    if-ge v2, v4, :cond_2a

    ushr-int/lit8 v4, v2, 0x6

    or-int/lit16 v4, v4, 0x3c0

    int-to-byte v4, v4

    .line 434
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 435
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_2a
    const v4, 0xd800

    if-lt v2, v4, :cond_88

    const v4, 0xdfff

    if-ge v4, v2, :cond_35

    goto :goto_88

    :cond_35
    add-int/lit8 v4, v1, 0x1

    .line 443
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eq v4, v5, :cond_6f

    .line 444
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 447
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    ushr-int/lit8 v2, v1, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    .line 448
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0xc

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 449
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0x6

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 450
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    .line 451
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_a0

    :cond_6e
    move v1, v4

    .line 445
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_88
    :goto_88
    ushr-int/lit8 v4, v2, 0xc

    or-int/lit16 v4, v4, 0x1e0

    int-to-byte v4, v4

    .line 438
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x3f

    or-int/2addr v4, v3

    int-to-byte v4, v4

    .line 439
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 440
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    :goto_a0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_5

    :cond_a4
    return-void
.end method

.method private static blacklist encodedLength(Ljava/lang/CharSequence;)I
    .registers 6

    .line 340
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_12

    .line 345
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_12

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_12
    move v2, v0

    :goto_13
    if-ge v1, v0, :cond_2a

    .line 351
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_25

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 355
    :cond_25
    invoke-static {p0, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encodedLengthGeneral(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2a
    if-lt v2, v0, :cond_2d

    return v2

    .line 362
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist encodedLengthGeneral(Ljava/lang/CharSequence;I)I
    .registers 6

    .line 369
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge p1, v0, :cond_46

    .line 372
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_15

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_43

    :cond_15
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_43

    const v3, 0xdfff

    if-gt v2, v3, :cond_43

    .line 380
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-lt v2, v3, :cond_2c

    add-int/lit8 p1, p1, 0x1

    goto :goto_43

    .line 382
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    :cond_46
    return v1
.end method

.method public static blacklist newInstance([B)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
    .registers 3

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->newInstance([BII)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist newInstance([BII)Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;
    .registers 4

    .line 87
    new-instance v0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;-><init>([BII)V

    return-object v0
.end method


# virtual methods
.method public blacklist checkNoSpaceLeft()V
    .registers 2

    .line 906
    invoke-virtual {p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->spaceLeft()I

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 907
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist spaceLeft()I
    .registers 1

    .line 895
    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    return p0
.end method

.method public blacklist writeInt32(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    return-void
.end method

.method public blacklist writeInt32NoTag(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_6

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    goto :goto_a

    :cond_6
    int-to-long v0, p1

    .line 276
    invoke-virtual {p0, v0, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint64(J)V

    :goto_a
    return-void
.end method

.method public blacklist writeMessage(ILcom/android/phone/ecc/nano/MessageNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 167
    invoke-virtual {p0, p2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/phone/ecc/nano/MessageNano;)V

    return-void
.end method

.method public blacklist writeMessageNoTag(Lcom/android/phone/ecc/nano/MessageNano;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 511
    invoke-virtual {p1}, Lcom/android/phone/ecc/nano/MessageNano;->getCachedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 512
    invoke-virtual {p1, p0}, Lcom/android/phone/ecc/nano/MessageNano;->writeTo(Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;)V

    return-void
.end method

.method public blacklist writeRawByte(B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 945
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 950
    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 947
    :cond_e
    new-instance p1, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawByte(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    .line 955
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(B)V

    return-void
.end method

.method public blacklist writeRawBytes([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 960
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawBytes([BII)V

    return-void
.end method

.method public blacklist writeRawBytes([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 966
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_e

    .line 967
    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    .line 970
    :cond_e
    new-instance p1, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object p2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1
.end method

.method public blacklist writeRawVarint32(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_8

    .line 992
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_8
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public blacklist writeRawVarint64(J)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_e

    long-to-int p1, p1

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    return-void

    :cond_e
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 1021
    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawByte(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public blacklist writeString(ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 151
    invoke-virtual {p0, p1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 152
    invoke-virtual {p0, p2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeStringNoTag(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v0

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    if-ne v0, v1, :cond_52

    .line 304
    iget-object v1, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v2, v0, :cond_45

    .line 311
    iget-object v2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget-object v2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 313
    iget-object p1, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    .line 314
    iget-object v2, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    .line 315
    invoke-virtual {p0, v1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 316
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_5e

    .line 309
    :cond_45
    new-instance p1, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    throw p1

    .line 318
    :cond_52
    invoke-static {p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encodedLength(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 319
    iget-object v0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->encode(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_5e
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_5e} :catch_5f

    :goto_5e
    return-void

    :catch_5f
    move-exception p1

    .line 322
    new-instance v0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;

    iget-object v1, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p0, p0, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->buffer:Ljava/nio/ByteBuffer;

    .line 323
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano$OutOfSpaceException;-><init>(II)V

    .line 324
    invoke-virtual {v0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 325
    throw v0
.end method

.method public blacklist writeTag(II)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 977
    invoke-static {p1, p2}, Lcom/android/phone/ecc/nano/WireFormatNano;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/phone/ecc/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    return-void
.end method
