.class final Lorg/brotli/dec/BitReader;
.super Ljava/lang/Object;
.source "BitReader.java"


# static fields
.field static final BITNESS:I

.field private static final BUFFER_SIZE:I = 0x1040

.field private static final BYTENESS:I

.field private static final CAPACITY:I = 0x1000

.field private static final DEBUG:I

.field private static final HALF_BITNESS:I

.field private static final HALF_BUFFER_SIZE:I

.field private static final HALF_SIZE:I

.field private static final HALF_WATERLINE:I

.field private static final HALVES_CAPACITY:I

.field private static final LOG_BITNESS:I

.field private static final LOG_HALF_SIZE:I

.field private static final SAFEGUARD:I = 0x24

.field private static final SLACK:I = 0x40

.field private static final WATERLINE:I = 0xfdc


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 16
    invoke-static {}, Lorg/brotli/dec/Utils;->getLogBintness()I

    move-result v0

    sput v0, Lorg/brotli/dec/BitReader;->LOG_BITNESS:I

    .line 20
    invoke-static {}, Lorg/brotli/dec/Utils;->isDebugMode()I

    move-result v1

    sput v1, Lorg/brotli/dec/BitReader;->DEBUG:I

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    .line 22
    sput v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    .line 24
    div-int/lit8 v2, v1, 0x8

    sput v2, Lorg/brotli/dec/BitReader;->BYTENESS:I

    .line 35
    div-int/lit8 v1, v1, 0x2

    sput v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    .line 36
    div-int/lit8 v2, v2, 0x2

    sput v2, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    const/16 v1, 0x1000

    .line 37
    div-int/2addr v1, v2

    sput v1, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    const/16 v1, 0x1040

    .line 38
    div-int/2addr v1, v2

    sput v1, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    const/16 v1, 0xfdc

    .line 39
    div-int/2addr v1, v2

    sput v1, Lorg/brotli/dec/BitReader;->HALF_WATERLINE:I

    add-int/lit8 v0, v0, -0x4

    .line 41
    sput v0, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static assertAccumulatorHealthy(Lorg/brotli/dec/State;)V
    .registers 4

    .line 98
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-gt v0, v1, :cond_7

    return-void

    .line 99
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Accumulator underloaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lorg/brotli/dec/State;->bitOffset:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static bytesToNibbles(Lorg/brotli/dec/State;I)V
    .registers 7

    .line 271
    iget-object v0, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    .line 272
    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int/2addr p1, v1

    .line 273
    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/4 v2, 0x0

    const/16 v3, 0x40

    if-ne v1, v3, :cond_36

    .line 274
    iget-object p0, p0, Lorg/brotli/dec/State;->intBuffer:[I

    :goto_e
    if-ge v2, p1, :cond_4f

    mul-int/lit8 v1, v2, 0x4

    .line 276
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v1, v3

    aput v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 282
    :cond_36
    iget-object p0, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    :goto_38
    if-ge v2, p1, :cond_4f

    mul-int/lit8 v1, v2, 0x2

    .line 284
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_38

    :cond_4f
    return-void
.end method

.method static checkHealth(Lorg/brotli/dec/State;I)V
    .registers 4

    .line 85
    iget v0, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-nez v0, :cond_5

    return-void

    .line 88
    :cond_5
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->BYTENESS:I

    sub-int/2addr v0, v1

    .line 89
    iget p0, p0, Lorg/brotli/dec/State;->tailBytes:I

    if-gt v0, p0, :cond_26

    if-eqz p1, :cond_25

    if-ne v0, p0, :cond_1d

    goto :goto_25

    .line 93
    :cond_1d
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused bytes after end"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    :goto_25
    return-void

    .line 90
    :cond_26
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Read after end"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static copyBytes(Lorg/brotli/dec/State;[BII)V
    .registers 8

    .line 215
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_80

    .line 220
    :goto_6
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-eq v0, v1, :cond_21

    if-eqz p3, :cond_21

    add-int/lit8 v0, p2, 0x1

    .line 221
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 222
    iget p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_6

    :cond_21
    if-nez p3, :cond_24

    return-void

    .line 230
    :cond_24
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result v0

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int v2, p3, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lez v0, :cond_43

    .line 232
    iget v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    shl-int/2addr v2, v1

    shl-int v1, v0, v1

    .line 234
    iget-object v3, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    invoke-static {v3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    .line 237
    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    :cond_43
    if-nez p3, :cond_46

    return-void

    .line 244
    :cond_46
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result v0

    if-lez v0, :cond_69

    .line 246
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    :goto_4f
    if-eqz p3, :cond_64

    add-int/lit8 v0, p2, 0x1

    .line 248
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 249
    iget p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p2, p2, 0x8

    iput p2, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/lit8 p3, p3, -0x1

    move p2, v0

    goto :goto_4f

    :cond_64
    const/4 p1, 0x0

    .line 252
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    return-void

    :cond_69
    :goto_69
    if-lez p3, :cond_7f

    .line 258
    iget-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    invoke-static {v0, p1, p2, p3}, Lorg/brotli/dec/Utils;->readInput(Ljava/io/InputStream;[BII)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_77

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_69

    .line 260
    :cond_77
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unexpected end of input"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7f
    return-void

    .line 216
    :cond_80
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unaligned copyBytes"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static doFillBitWindow(Lorg/brotli/dec/State;)V
    .registers 6

    .line 121
    sget v0, Lorg/brotli/dec/BitReader;->DEBUG:I

    if-eqz v0, :cond_7

    .line 122
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->assertAccumulatorHealthy(Lorg/brotli/dec/State;)V

    .line 124
    :cond_7
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_23

    .line 125
    iget-object v0, p0, Lorg/brotli/dec/State;->intBuffer:[I

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget v0, v0, v1

    int-to-long v0, v0

    sget v2, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-long/2addr v0, v2

    iget-wide v3, p0, Lorg/brotli/dec/State;->accumulator64:J

    ushr-long v2, v3, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    goto :goto_37

    .line 128
    :cond_23
    iget-object v0, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    iget v1, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget-short v0, v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    shl-int/2addr v0, v1

    iget v2, p0, Lorg/brotli/dec/State;->accumulator32:I

    ushr-int v1, v2, v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->accumulator32:I

    .line 131
    :goto_37
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    return-void
.end method

.method static doReadMoreInput(Lorg/brotli/dec/State;)V
    .registers 6

    .line 58
    iget v0, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-eqz v0, :cond_14

    .line 59
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->halfAvailable(Lorg/brotli/dec/State;)I

    move-result p0

    const/4 v0, -0x2

    if-lt p0, v0, :cond_c

    return-void

    .line 62
    :cond_c
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "No more input"

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 64
    :cond_14
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shl-int/2addr v0, v1

    rsub-int v1, v0, 0x1000

    .line 67
    iget-object v2, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    const/4 v3, 0x0

    const/16 v4, 0x1000

    invoke-static {v2, v3, v0, v4}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    .line 68
    iput v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    :goto_25
    if-ge v1, v4, :cond_3f

    rsub-int v0, v1, 0x1000

    .line 71
    iget-object v2, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    invoke-static {v2, v3, v1, v0}, Lorg/brotli/dec/Utils;->readInput(Ljava/io/InputStream;[BII)I

    move-result v0

    if-gtz v0, :cond_3d

    const/4 v0, 0x1

    .line 74
    iput v0, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    .line 75
    iput v1, p0, Lorg/brotli/dec/State;->tailBytes:I

    .line 76
    sget v2, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    sub-int/2addr v2, v0

    add-int/2addr v1, v2

    goto :goto_3f

    :cond_3d
    add-int/2addr v1, v0

    goto :goto_25

    .line 81
    :cond_3f
    :goto_3f
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->bytesToNibbles(Lorg/brotli/dec/State;I)V

    return-void
.end method

.method static fillBitWindow(Lorg/brotli/dec/State;)V
    .registers 7

    .line 104
    sget v0, Lorg/brotli/dec/BitReader;->DEBUG:I

    if-eqz v0, :cond_7

    .line 105
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->assertAccumulatorHealthy(Lorg/brotli/dec/State;)V

    .line 107
    :cond_7
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    if-lt v0, v1, :cond_3a

    .line 109
    sget v2, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v3, 0x40

    if-ne v2, v3, :cond_26

    .line 110
    iget-object v2, p0, Lorg/brotli/dec/State;->intBuffer:[I

    iget v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget v2, v2, v3

    int-to-long v2, v2

    shl-long/2addr v2, v1

    iget-wide v4, p0, Lorg/brotli/dec/State;->accumulator64:J

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    iput-wide v2, p0, Lorg/brotli/dec/State;->accumulator64:J

    goto :goto_37

    .line 113
    :cond_26
    iget-object v2, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    iget v3, p0, Lorg/brotli/dec/State;->halfOffset:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/brotli/dec/State;->halfOffset:I

    aget-short v2, v2, v3

    shl-int/2addr v2, v1

    iget v3, p0, Lorg/brotli/dec/State;->accumulator32:I

    ushr-int/2addr v3, v1

    or-int/2addr v2, v3

    iput v2, p0, Lorg/brotli/dec/State;->accumulator32:I

    :goto_37
    sub-int/2addr v0, v1

    .line 116
    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    :cond_3a
    return-void
.end method

.method static halfAvailable(Lorg/brotli/dec/State;)I
    .registers 3

    .line 207
    sget v0, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    .line 208
    iget v1, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    if-eqz v1, :cond_10

    .line 209
    iget v0, p0, Lorg/brotli/dec/State;->tailBytes:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_SIZE:I

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, v1

    sget v1, Lorg/brotli/dec/BitReader;->LOG_HALF_SIZE:I

    shr-int/2addr v0, v1

    .line 211
    :cond_10
    iget p0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method static initBitReader(Lorg/brotli/dec/State;)V
    .registers 5

    const/16 v0, 0x1040

    new-array v0, v0, [B

    .line 169
    iput-object v0, p0, Lorg/brotli/dec/State;->byteBuffer:[B

    .line 170
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-ne v0, v2, :cond_18

    const-wide/16 v2, 0x0

    .line 171
    iput-wide v2, p0, Lorg/brotli/dec/State;->accumulator64:J

    .line 172
    sget v2, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/brotli/dec/State;->intBuffer:[I

    goto :goto_20

    .line 174
    :cond_18
    iput v1, p0, Lorg/brotli/dec/State;->accumulator32:I

    .line 175
    sget v2, Lorg/brotli/dec/BitReader;->HALF_BUFFER_SIZE:I

    new-array v2, v2, [S

    iput-object v2, p0, Lorg/brotli/dec/State;->shortBuffer:[S

    .line 177
    :goto_20
    iput v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    .line 178
    sget v0, Lorg/brotli/dec/BitReader;->HALVES_CAPACITY:I

    iput v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    .line 179
    iput v1, p0, Lorg/brotli/dec/State;->endOfStreamReached:I

    .line 180
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->prepare(Lorg/brotli/dec/State;)V

    return-void
.end method

.method static jumpToByteBoundary(Lorg/brotli/dec/State;)V
    .registers 3

    .line 197
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    sub-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_18

    .line 199
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    if-nez p0, :cond_10

    goto :goto_18

    .line 201
    :cond_10
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "Corrupted padding bits"

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    return-void
.end method

.method static peekBits(Lorg/brotli/dec/State;)I
    .registers 3

    .line 135
    sget v0, Lorg/brotli/dec/BitReader;->BITNESS:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_d

    .line 136
    iget-wide v0, p0, Lorg/brotli/dec/State;->accumulator64:J

    iget p0, p0, Lorg/brotli/dec/State;->bitOffset:I

    ushr-long/2addr v0, p0

    long-to-int p0, v0

    return p0

    .line 138
    :cond_d
    iget v0, p0, Lorg/brotli/dec/State;->accumulator32:I

    iget p0, p0, Lorg/brotli/dec/State;->bitOffset:I

    ushr-int p0, v0, p0

    return p0
.end method

.method private static prepare(Lorg/brotli/dec/State;)V
    .registers 2

    .line 184
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    const/4 v0, 0x0

    .line 185
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    .line 186
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    .line 187
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    return-void
.end method

.method static readBits(Lorg/brotli/dec/State;I)I
    .registers 4

    .line 155
    sget v0, Lorg/brotli/dec/BitReader;->HALF_BITNESS:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 156
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    return p0

    :cond_b
    const/16 v0, 0x10

    if-gt p1, v0, :cond_14

    .line 158
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    goto :goto_18

    :cond_14
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readManyBits(Lorg/brotli/dec/State;I)I

    move-result p0

    :goto_18
    return p0
.end method

.method static readFewBits(Lorg/brotli/dec/State;I)I
    .registers 5

    .line 149
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    shl-int v2, v1, p1

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    .line 150
    iget v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/brotli/dec/State;->bitOffset:I

    return v0
.end method

.method private static readManyBits(Lorg/brotli/dec/State;I)I
    .registers 4

    const/16 v0, 0x10

    .line 163
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    .line 164
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doFillBitWindow(Lorg/brotli/dec/State;)V

    sub-int/2addr p1, v0

    .line 165
    invoke-static {p0, p1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    shl-int/2addr p0, v0

    or-int/2addr p0, v1

    return p0
.end method

.method static readMoreInput(Lorg/brotli/dec/State;)V
    .registers 3

    .line 52
    iget v0, p0, Lorg/brotli/dec/State;->halfOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->HALF_WATERLINE:I

    if-le v0, v1, :cond_9

    .line 53
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->doReadMoreInput(Lorg/brotli/dec/State;)V

    :cond_9
    return-void
.end method

.method static reload(Lorg/brotli/dec/State;)V
    .registers 3

    .line 191
    iget v0, p0, Lorg/brotli/dec/State;->bitOffset:I

    sget v1, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-ne v0, v1, :cond_9

    .line 192
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->prepare(Lorg/brotli/dec/State;)V

    :cond_9
    return-void
.end method
