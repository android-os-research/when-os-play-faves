.class public Lorg/apache/commons/compress/archivers/tar/TarUtils;
.super Ljava/lang/Object;
.source "TarUtils.java"


# static fields
.field private static final BYTE_MASK:I = 0xff

.field static final DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

.field static final FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 47
    new-instance v0, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils$1;-><init>()V

    sput-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeCheckSum([B)J
    .registers 7

    .line 566
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_f

    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    return-wide v1
.end method

.method private static exceptionMessage([BIIIB)Ljava/lang/String;
    .registers 7

    .line 245
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    const-string p0, "\u0000"

    const-string v1, "{NUL}"

    .line 247
    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid byte "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " at offset "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr p3, p1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' len="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static formatBigIntegerBinary(J[BIIZ)V
    .registers 9

    .line 517
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 518
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 519
    array-length v1, v0

    add-int/lit8 v2, p4, -0x1

    if-gt v1, v2, :cond_20

    add-int/2addr p4, p3

    sub-int/2addr p4, v1

    const/4 p0, 0x0

    .line 525
    invoke-static {v0, p0, p2, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz p5, :cond_17

    const/16 p0, 0xff

    :cond_17
    int-to-byte p0, p0

    :goto_18
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_1f

    .line 528
    aput-byte p0, p2, p3

    goto :goto_18

    :cond_1f
    return-void

    .line 521
    :cond_20
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Value "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is too large for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte field."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static formatCheckSumOctalBytes(J[BII)I
    .registers 6

    add-int/lit8 v0, p4, -0x2

    .line 549
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/4 p1, 0x0

    .line 551
    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/16 p1, 0x20

    .line 552
    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method private static formatLongBinary(J[BIIZ)V
    .registers 16

    add-int/lit8 v0, p4, -0x1

    const/16 v1, 0x8

    mul-int/2addr v0, v1

    const-wide/16 v2, 0x1

    shl-long v4, v2, v0

    .line 497
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-ltz v8, :cond_30

    cmp-long v8, v6, v4

    if-gez v8, :cond_30

    if-eqz p5, :cond_22

    sub-long/2addr v4, v2

    xor-long p0, v6, v4

    add-long/2addr p0, v2

    const-wide/16 v2, 0xff

    shl-long/2addr v2, v0

    or-long v6, p0, v2

    :cond_22
    add-int/2addr p4, p3

    add-int/lit8 p4, p4, -0x1

    :goto_25
    if-lt p4, p3, :cond_2f

    long-to-int p0, v6

    int-to-byte p0, p0

    .line 508
    aput-byte p0, p2, p4

    shr-long/2addr v6, v1

    add-int/lit8 p4, p4, -0x1

    goto :goto_25

    :cond_2f
    return-void

    .line 499
    :cond_30
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Value "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " is too large for "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " byte field."

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static formatLongOctalBytes(J[BII)I
    .registers 6

    add-int/lit8 v0, p4, -0x1

    .line 448
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/2addr v0, p3

    const/16 p0, 0x20

    .line 449
    aput-byte p0, p2, v0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatLongOctalOrBinaryBytes(J[BII)I
    .registers 14

    const/16 v0, 0x8

    if-ne p4, v0, :cond_8

    const-wide/32 v0, 0x1fffff

    goto :goto_d

    :cond_8
    const-wide v0, 0x1ffffffffL

    :goto_d
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    if-nez v2, :cond_21

    cmp-long v0, p0, v0

    if-gtz v0, :cond_21

    .line 479
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongOctalBytes(J[BII)I

    move-result p0

    return p0

    :cond_21
    const/16 v0, 0x9

    if-ge p4, v0, :cond_2e

    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    .line 483
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatLongBinary(J[BIIZ)V

    goto :goto_36

    :cond_2e
    move-wide v3, p0

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, v2

    .line 485
    invoke-static/range {v3 .. v8}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatBigIntegerBinary(J[BIIZ)V

    :goto_36
    if-eqz v2, :cond_3b

    const/16 p0, 0xff

    goto :goto_3d

    :cond_3b
    const/16 p0, 0x80

    :goto_3d
    int-to-byte p0, p0

    .line 488
    aput-byte p0, p2, p3

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatNameBytes(Ljava/lang/String;[BII)I
    .registers 5

    .line 321
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return p0

    .line 324
    :catch_7
    :try_start_7
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I

    move-result p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    return p0

    :catch_e
    move-exception p0

    .line 328
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static formatNameBytes(Ljava/lang/String;[BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 356
    invoke-interface {p4, p0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 357
    :goto_8
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, p3, :cond_1c

    if-lez v0, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 358
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p4, v1}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    goto :goto_8

    .line 360
    :cond_1c
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p4

    sub-int/2addr p0, p4

    .line 361
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    invoke-static {p4, v0, p1, p2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_30
    if-ge p0, p3, :cond_39

    add-int p4, p2, p0

    .line 365
    aput-byte v3, p1, p4

    add-int/lit8 p0, p0, 0x1

    goto :goto_30

    :cond_39
    add-int/2addr p2, p3

    return p2
.end method

.method public static formatOctalBytes(J[BII)I
    .registers 6

    add-int/lit8 v0, p4, -0x2

    .line 422
    invoke-static {p0, p1, p2, p3, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->formatUnsignedOctalString(J[BII)V

    add-int/lit8 p0, v0, 0x1

    add-int/2addr v0, p3

    const/16 p1, 0x20

    .line 424
    aput-byte p1, p2, v0

    add-int/2addr p0, p3

    const/4 p1, 0x0

    .line 425
    aput-byte p1, p2, p0

    add-int/2addr p3, p4

    return p3
.end method

.method public static formatUnsignedOctalString(J[BII)V
    .registers 14

    add-int/lit8 v0, p4, -0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    const/16 v4, 0x30

    if-nez v3, :cond_10

    add-int/lit8 p0, v0, -0x1

    add-int/2addr v0, p3

    .line 385
    aput-byte v4, p2, v0

    goto :goto_2c

    :cond_10
    move-wide v5, p0

    :goto_11
    if-ltz v0, :cond_27

    cmp-long v3, v5, v1

    if-eqz v3, :cond_27

    add-int v3, p3, v0

    const-wide/16 v7, 0x7

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    add-int/2addr v7, v4

    int-to-byte v7, v7

    .line 390
    aput-byte v7, p2, v3

    const/4 v3, 0x3

    ushr-long/2addr v5, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_27
    cmp-long v1, v5, v1

    if-nez v1, :cond_36

    move p0, v0

    :goto_2c
    if-ltz p0, :cond_35

    add-int p1, p3, p0

    .line 401
    aput-byte v4, p2, p1

    add-int/lit8 p0, p0, -0x1

    goto :goto_2c

    :cond_35
    return-void

    .line 395
    :cond_36
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    invoke-static {p0, p1}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " will not fit in octal number buffer of length "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static parseBinaryBigInteger([BIIZ)J
    .registers 8

    add-int/lit8 v0, p2, -0x1

    .line 205
    new-array v1, v0, [B

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    .line 206
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1}, Ljava/math/BigInteger;-><init>([B)V

    if-eqz p3, :cond_1f

    const-wide/16 v0, -0x1

    .line 210
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    .line 212
    :cond_1f
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x3f

    if-gt v0, v1, :cond_2f

    .line 218
    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    if-eqz p3, :cond_2e

    neg-long p0, p0

    :cond_2e
    return-wide p0

    .line 213
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseBinaryLong([BIIZ)J
    .registers 13

    const/16 v0, 0x9

    if-ge p2, v0, :cond_2f

    const-wide/16 v0, 0x0

    const/4 v2, 0x1

    move v3, v2

    :goto_8
    if-ge v3, p2, :cond_18

    const/16 v4, 0x8

    shl-long/2addr v0, v4

    add-int v4, p1, v3

    .line 191
    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_18
    if-eqz p3, :cond_2b

    const-wide/16 p0, 0x1

    sub-long/2addr v0, p0

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-int/2addr p2, v2

    int-to-double v5, p2

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    mul-double/2addr v5, v7

    .line 196
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    sub-long/2addr v2, p0

    xor-long/2addr v0, v2

    :cond_2b
    if-eqz p3, :cond_2e

    neg-long v0, v0

    :cond_2e
    return-wide v0

    .line 184
    :cond_2f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "At offset "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " byte binary number exceeds maximum signed long value"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseBoolean([BI)Z
    .registers 2

    .line 232
    aget-byte p0, p0, p1

    const/4 p1, 0x1

    if-ne p0, p1, :cond_6

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public static parseName([BII)Ljava/lang/String;
    .registers 4

    .line 263
    :try_start_0
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->DEFAULT_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 266
    :catch_7
    :try_start_7
    sget-object v0, Lorg/apache/commons/compress/archivers/tar/TarUtils;->FALLBACK_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 269
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static parseName([BIILorg/apache/commons/compress/archivers/zip/ZipEncoding;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v2, p1

    move v1, v0

    :goto_3
    if-ge v1, p2, :cond_e

    .line 293
    aget-byte v3, p0, v2

    if-eqz v3, :cond_e

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    if-lez v1, :cond_1a

    .line 297
    new-array p2, v1, [B

    .line 298
    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    invoke-interface {p3, p2}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->decode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, ""

    return-object p0
.end method

.method public static parseOctal([BII)J
    .registers 9

    add-int v0, p1, p2

    const/4 v1, 0x2

    if-lt p2, v1, :cond_49

    .line 113
    aget-byte v1, p0, p1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_c

    return-wide v2

    :cond_c
    move v1, p1

    :goto_d
    const/16 v4, 0x20

    if-ge v1, v0, :cond_18

    .line 119
    aget-byte v5, p0, v1

    if-ne v5, v4, :cond_18

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_18
    add-int/lit8 v5, v0, -0x1

    .line 130
    aget-byte v5, p0, v5

    :goto_1c
    if-ge v1, v0, :cond_29

    if-eqz v5, :cond_22

    if-ne v5, v4, :cond_29

    :cond_22
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v5, v0, -0x1

    .line 133
    aget-byte v5, p0, v5

    goto :goto_1c

    :cond_29
    :goto_29
    if-ge v1, v0, :cond_48

    .line 137
    aget-byte v4, p0, v1

    const/16 v5, 0x30

    if-lt v4, v5, :cond_3e

    const/16 v5, 0x37

    if-gt v4, v5, :cond_3e

    const/4 v5, 0x3

    shl-long/2addr v2, v5

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 140
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 141
    invoke-static {p0, p1, p2, v1, v4}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->exceptionMessage([BIIIB)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_48
    return-wide v2

    .line 110
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Length "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " must be at least 2"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseOctalOrBinary([BII)J
    .registers 5

    .line 170
    aget-byte v0, p0, p1

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_b

    .line 171
    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide p0

    return-wide p0

    :cond_b
    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    const/16 v1, 0x9

    if-ge p2, v1, :cond_1a

    .line 175
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryLong([BIIZ)J

    move-result-wide p0

    return-wide p0

    .line 177
    :cond_1a
    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBinaryBigInteger([BIIZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static verifyCheckSum([B)Z
    .registers 13

    const/16 v0, 0x94

    const/16 v1, 0x8

    .line 599
    invoke-static {p0, v0, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseOctal([BII)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move v8, v3

    move-wide v6, v4

    .line 603
    :goto_d
    array-length v9, p0

    if-ge v8, v9, :cond_23

    .line 604
    aget-byte v9, p0, v8

    if-gt v0, v8, :cond_1a

    const/16 v10, 0x9c

    if-ge v8, v10, :cond_1a

    const/16 v9, 0x20

    :cond_1a
    and-int/lit16 v10, v9, 0xff

    int-to-long v10, v10

    add-long/2addr v4, v10

    int-to-long v9, v9

    add-long/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_23
    cmp-long p0, v1, v4

    if-eqz p0, :cond_2b

    cmp-long p0, v1, v6

    if-nez p0, :cond_2c

    :cond_2b
    const/4 v3, 0x1

    :cond_2c
    return v3
.end method
