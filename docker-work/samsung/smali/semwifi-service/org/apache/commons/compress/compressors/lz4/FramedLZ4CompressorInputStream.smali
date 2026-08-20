.class public Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "FramedLZ4CompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field static final BLOCK_CHECKSUM_MASK:I = 0x10

.field static final BLOCK_INDEPENDENCE_MASK:I = 0x20

.field static final BLOCK_MAX_SIZE_MASK:I = 0x70

.field static final CONTENT_CHECKSUM_MASK:I = 0x4

.field static final CONTENT_SIZE_MASK:I = 0x8

.field static final LZ4_SIGNATURE:[B

.field private static final SKIPPABLE_FRAME_PREFIX_BYTE_MASK:B = 0x50t

.field private static final SKIPPABLE_FRAME_TRAILER:[B

.field static final SUPPORTED_VERSION:I = 0x40

.field static final UNCOMPRESSED_FLAG_MASK:I = -0x80000000

.field static final VERSION_MASK:I = 0xc0


# instance fields
.field private blockDependencyBuffer:[B

.field private final blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private final contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

.field private currentBlock:Ljava/io/InputStream;

.field private final decompressConcatenated:Z

.field private endReached:Z

.field private expectBlockChecksum:Z

.field private expectBlockDependency:Z

.field private expectContentChecksum:Z

.field private expectContentSize:Z

.field private final in:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private inUncompressed:Z

.field private final oneByte:[B

.field private final supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;


# direct methods
.method static bridge synthetic -$$Nest$mreadOneByte(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)I
    .registers 1

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 46
    fill-array-data v0, :array_12

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 49
    fill-array-data v0, :array_18

    sput-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->SKIPPABLE_FRAME_TRAILER:[B

    return-void

    nop

    :array_12
    .array-data 1
        0x4t
        0x22t
        0x4dt
        0x18t
    .end array-data

    :array_18
    .array-data 1
        0x2at
        0x4dt
        0x18t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 64
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    .line 66
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream$1;

    invoke-direct {v1, p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream$1;-><init>(Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    .line 85
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 88
    new-instance v1, Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    .line 115
    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    .line 116
    iput-boolean p2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->decompressConcatenated:Z

    .line 117
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->init(Z)V

    return-void
.end method

.method private appendToBlockDependencyBuffer([BII)V
    .registers 7

    .line 369
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    array-length v0, v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_18

    .line 371
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    array-length v1, v0

    sub-int/2addr v1, p3

    if-lez v1, :cond_13

    const/4 v2, 0x0

    .line 374
    invoke-static {v0, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    :cond_13
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    invoke-static {p1, p2, p0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_18
    return-void
.end method

.method private init(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    invoke-direct {p0, p1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readSignature(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 173
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readFrameDescriptor()V

    .line 174
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->nextBlock()V

    :cond_c
    return-void
.end method

.method private static isSkippableFrameSignature([B)Z
    .registers 7

    const/4 v0, 0x0

    .line 334
    aget-byte v1, p0, v0

    const/16 v2, 0x50

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_9

    return v0

    :cond_9
    const/4 v1, 0x1

    move v2, v1

    :goto_b
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1c

    .line 338
    aget-byte v3, p0, v2

    sget-object v4, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->SKIPPABLE_FRAME_TRAILER:[B

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_19

    return v0

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1c
    return v1
.end method

.method public static matches([BI)Z
    .registers 5

    .line 392
    sget-object v0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->LZ4_SIGNATURE:[B

    array-length v1, v0

    const/4 v2, 0x0

    if-ge p1, v1, :cond_7

    return v2

    .line 397
    :cond_7
    array-length p1, p0

    array-length v1, v0

    if-le p1, v1, :cond_13

    .line 398
    array-length p1, v0

    new-array p1, p1, [B

    .line 399
    array-length v1, v0

    invoke-static {p0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, p1

    .line 402
    :cond_13
    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private maybeFinishCurrentBlock()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    .line 282
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    .line 284
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    if-eqz v0, :cond_1a

    .line 285
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    const-string v1, "block"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    :cond_1a
    return-void
.end method

.method private nextBlock()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->maybeFinishCurrentBlock()V

    .line 251
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v0

    const-wide/32 v2, -0x80000000

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_18

    move v2, v3

    goto :goto_19

    :cond_18
    move v2, v4

    :goto_19
    const-wide/32 v5, 0x7fffffff

    and-long/2addr v0, v5

    long-to-int v0, v0

    if-nez v0, :cond_2e

    .line 255
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyContentChecksum()V

    .line 256
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->decompressConcatenated:Z

    if-nez v0, :cond_2a

    .line 257
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    goto :goto_2d

    .line 259
    :cond_2a
    invoke-direct {p0, v4}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->init(Z)V

    :goto_2d
    return-void

    .line 263
    :cond_2e
    new-instance v1, Lorg/apache/commons/compress/utils/BoundedInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    int-to-long v6, v0

    invoke-direct {v1, v5, v6, v7}, Lorg/apache/commons/compress/utils/BoundedInputStream;-><init>(Ljava/io/InputStream;J)V

    .line 264
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    if-eqz v0, :cond_42

    .line 265
    new-instance v0, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;

    iget-object v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/compress/utils/ChecksumCalculatingInputStream;-><init>(Ljava/util/zip/Checksum;Ljava/io/InputStream;)V

    move-object v1, v0

    :cond_42
    if-eqz v2, :cond_49

    .line 268
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    .line 269
    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    goto :goto_5b

    .line 271
    :cond_49
    iput-boolean v4, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    .line 272
    new-instance v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;-><init>(Ljava/io/InputStream;)V

    .line 273
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz v1, :cond_59

    .line 274
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/compressors/lz77support/AbstractLZ77CompressorInputStream;->prefill([B)V

    .line 276
    :cond_59
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    :goto_5b
    return-void
.end method

.method private readFrameDescriptor()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_be

    .line 209
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    and-int/lit16 v2, v0, 0xc0

    const/16 v3, 0x40

    if-ne v2, v3, :cond_a5

    and-int/lit8 v2, v0, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v4

    .line 213
    :goto_1b
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz v2, :cond_2a

    .line 215
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    if-nez v2, :cond_2d

    const/high16 v2, 0x10000

    new-array v2, v2, [B

    .line 216
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    goto :goto_2d

    :cond_2a
    const/4 v2, 0x0

    .line 219
    iput-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->blockDependencyBuffer:[B

    :cond_2d
    :goto_2d
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_33

    move v2, v3

    goto :goto_34

    :cond_33
    move v2, v4

    .line 221
    :goto_34
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockChecksum:Z

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3c

    move v2, v3

    goto :goto_3d

    :cond_3c
    move v2, v4

    .line 222
    :goto_3d
    iput-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentSize:Z

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_44

    goto :goto_45

    :cond_44
    move v3, v4

    .line 223
    :goto_45
    iput-boolean v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    .line 224
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    if-eq v0, v1, :cond_9d

    .line 228
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update(I)V

    .line 229
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentSize:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_73

    new-array v0, v2, [B

    .line 231
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-static {v3, v0}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    .line 232
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    if-ne v2, v3, :cond_6b

    .line 236
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v3, v0, v4, v2}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    goto :goto_73

    .line 234
    :cond_6b
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while reading content size"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 238
    :cond_73
    :goto_73
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOneByte()I

    move-result v0

    if-eq v0, v1, :cond_95

    .line 242
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {v1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide v3

    shr-long v1, v3, v2

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    long-to-int v1, v1

    .line 243
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    if-ne v0, v1, :cond_8d

    return-void

    .line 245
    :cond_8d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "frame header checksum mismatch."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 240
    :cond_95
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while reading frame header checksum"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 226
    :cond_9d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while reading frame BD byte"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 211
    :cond_a5
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shr-int/lit8 v0, v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 207
    :cond_be
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Premature end of stream while reading frame flags"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readOnce([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->inUncompressed:Z

    if-eqz v0, :cond_e

    .line 322
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 323
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return p1

    .line 326
    :cond_e
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    check-cast v0, Lorg/apache/commons/compress/compressors/lz4/BlockLZ4CompressorInputStream;

    .line 327
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    move-result-wide v1

    .line 328
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 329
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->getBytesRead()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    return p1
.end method

.method private readOneByte()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {v0}, Lorg/apache/commons/compress/utils/CountingInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x1

    .line 314
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    and-int/lit16 p0, v0, 0xff

    return p0

    :cond_10
    return v1
.end method

.method private readSignature(Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_5

    const-string v0, "Not a LZ4 frame stream"

    goto :goto_7

    :cond_5
    const-string v0, "LZ4 frame stream followed by garbage"

    :goto_7
    const/4 v1, 0x4

    new-array v2, v1, [B

    .line 181
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-static {v3, v2}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v3

    .line 182
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1c

    if-nez p1, :cond_1c

    .line 185
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    return v4

    :cond_1c
    if-ne v1, v3, :cond_38

    .line 192
    invoke-direct {p0, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->skipSkippableFrame([B)I

    move-result v3

    if-nez v3, :cond_29

    if-nez p1, :cond_29

    .line 195
    iput-boolean v5, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    return v4

    :cond_29
    if-ne v1, v3, :cond_32

    .line 198
    invoke-static {v2, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->matches([BI)Z

    move-result p0

    if-eqz p0, :cond_32

    return v5

    .line 199
    :cond_32
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    :cond_38
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private skipSkippableFrame([B)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    move v1, v0

    :goto_2
    if-ne v1, v0, :cond_2f

    .line 355
    invoke-static {p1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->isSkippableFrameSignature([B)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 356
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->supplier:Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;

    invoke-static {v1, v0}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian(Lorg/apache/commons/compress/utils/ByteUtils$ByteSupplier;I)J

    move-result-wide v1

    .line 357
    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-static {v3, v1, v2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide v3

    .line 358
    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(J)V

    cmp-long v1, v1, v3

    if-nez v1, :cond_27

    .line 362
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-static {v1, p1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    .line 363
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    goto :goto_2

    .line 360
    :cond_27
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Premature end of stream while skipping frame"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    return v1
.end method

.method private verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 300
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-static {v2, v1}, Lorg/apache/commons/compress/utils/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    move-result v2

    .line 301
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    if-ne v0, v2, :cond_32

    .line 305
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->getValue()J

    move-result-wide p0

    .line 306
    invoke-static {v1}, Lorg/apache/commons/compress/utils/ByteUtils;->fromLittleEndian([B)J

    move-result-wide v0

    cmp-long p0, p0, v0

    if-nez p0, :cond_1b

    return-void

    .line 307
    :cond_1b
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " checksum mismatch."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 303
    :cond_32
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Premature end of stream while reading "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " checksum"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private verifyContentChecksum()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    if-eqz v0, :cond_b

    .line 293
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    const-string v1, "content"

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->verifyChecksum(Lorg/apache/commons/compress/compressors/lz4/XXHash32;Ljava/lang/String;)V

    .line 295
    :cond_b
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->reset()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    .line 131
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->currentBlock:Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_10

    .line 135
    :cond_a
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->close()V

    return-void

    :catchall_10
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Ljava/io/FilterInputStream;->close()V

    .line 136
    throw v0
.end method

.method public getCompressedCount()J
    .registers 3

    .line 168
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->in:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->oneByte:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 145
    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOnce([BII)I

    move-result v0

    if-ne v0, v1, :cond_17

    .line 147
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->nextBlock()V

    .line 148
    iget-boolean v2, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->endReached:Z

    if-nez v2, :cond_17

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->readOnce([BII)I

    move-result v0

    :cond_17
    if-eq v0, v1, :cond_29

    .line 153
    iget-boolean p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectBlockDependency:Z

    if-eqz p3, :cond_20

    .line 154
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->appendToBlockDependencyBuffer([BII)V

    .line 156
    :cond_20
    iget-boolean p3, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->expectContentChecksum:Z

    if-eqz p3, :cond_29

    .line 157
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lz4/FramedLZ4CompressorInputStream;->contentHash:Lorg/apache/commons/compress/compressors/lz4/XXHash32;

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lz4/XXHash32;->update([BII)V

    :cond_29
    return v0
.end method
