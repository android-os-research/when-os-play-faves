.class Lorg/tukaani/xz/BlockInputStream;
.super Ljava/io/InputStream;
.source "BlockInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final check:Lorg/tukaani/xz/check/Check;

.field private compressedSizeInHeader:J

.field private compressedSizeLimit:J

.field private endReached:Z

.field private filterChain:Ljava/io/InputStream;

.field private final headerSize:I

.field private final inCounted:Lorg/tukaani/xz/CountingInputStream;

.field private final inData:Ljava/io/DataInputStream;

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private uncompressedSizeInHeader:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-class v0, Lorg/tukaani/xz/BlockInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V
    .registers 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/tukaani/xz/IndexIndicatorException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-wide/from16 v3, p7

    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/io/InputStream;-><init>()V

    const-wide/16 v5, -0x1

    .line 27
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    .line 28
    iput-wide v5, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v7, 0x0

    .line 31
    iput-wide v7, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    const/4 v9, 0x0

    .line 32
    iput-boolean v9, v0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v10, 0x1

    new-array v11, v10, [B

    .line 34
    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    move-object/from16 v11, p2

    .line 43
    iput-object v11, v0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    move/from16 v12, p3

    .line 44
    iput-boolean v12, v0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    .line 45
    new-instance v12, Ljava/io/DataInputStream;

    invoke-direct {v12, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v12, v0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    const/16 v13, 0x400

    new-array v13, v13, [B

    .line 50
    invoke-virtual {v12, v13, v9, v10}, Ljava/io/DataInputStream;->readFully([BII)V

    aget-byte v14, v13, v9

    if-eqz v14, :cond_1d6

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v14, v10

    mul-int/lit8 v14, v14, 0x4

    .line 57
    iput v14, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    add-int/lit8 v15, v14, -0x1

    .line 58
    invoke-virtual {v12, v13, v10, v15}, Ljava/io/DataInputStream;->readFully([BII)V

    add-int/lit8 v12, v14, -0x4

    add-int/lit8 v15, v14, -0x4

    .line 61
    invoke-static {v13, v9, v12, v15}, Lorg/tukaani/xz/common/DecoderUtil;->isCRC32Valid([BIII)Z

    move-result v12

    const-string v15, "XZ Block Header is corrupt"

    if-eqz v12, :cond_1cf

    aget-byte v12, v13, v10

    and-int/lit8 v16, v12, 0x3c

    const-string v9, "Unsupported options in XZ Block Header"

    if-nez v16, :cond_1c9

    and-int/lit8 v12, v12, 0x3

    add-int/2addr v12, v10

    .line 71
    new-array v5, v12, [J

    .line 72
    new-array v6, v12, [[B

    .line 76
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const/4 v8, 0x2

    add-int/lit8 v10, v14, -0x6

    invoke-direct {v7, v13, v8, v10}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const-wide v21, 0x7ffffffffffffffcL

    int-to-long v10, v14

    sub-long v21, v21, v10

    .line 83
    :try_start_6e
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v8

    int-to-long v10, v8

    sub-long v10, v21, v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    const/4 v8, 0x1

    aget-byte v10, v13, v8

    and-int/lit8 v8, v10, 0x40

    if-eqz v8, :cond_9b

    .line 88
    invoke-static {v7}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J
    :try_end_84
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_84} :catch_1bf

    const-wide/16 v19, 0x0

    cmp-long v8, v10, v19

    move-object/from16 p3, v15

    if-eqz v8, :cond_95

    .line 90
    :try_start_8c
    iget-wide v14, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v8, v10, v14

    if-gtz v8, :cond_95

    .line 94
    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    goto :goto_9d

    .line 92
    :cond_95
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    :cond_9b
    move-object/from16 p3, v15

    :goto_9d
    const/4 v8, 0x1

    aget-byte v10, v13, v8

    and-int/lit16 v8, v10, 0x80

    if-eqz v8, :cond_aa

    .line 100
    invoke-static {v7}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    :cond_aa
    const/4 v8, 0x0

    :goto_ab
    if-ge v8, v12, :cond_d1

    .line 104
    invoke-static {v7}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    aput-wide v10, v5, v8

    .line 106
    invoke-static {v7}, Lorg/tukaani/xz/common/DecoderUtil;->decodeVLI(Ljava/io/InputStream;)J

    move-result-wide v10

    .line 107
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v13

    int-to-long v13, v13

    cmp-long v13, v10, v13

    if-gtz v13, :cond_cb

    long-to-int v10, v10

    .line 110
    new-array v10, v10, [B

    aput-object v10, v6, v8

    .line 111
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayInputStream;->read([B)I

    add-int/lit8 v8, v8, 0x1

    goto :goto_ab

    .line 108
    :cond_cb
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_d1} :catch_1c1

    .line 119
    :cond_d1
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    :goto_d5
    if-lez v8, :cond_e6

    .line 120
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v10

    if-nez v10, :cond_e0

    add-int/lit8 v8, v8, -0x1

    goto :goto_d5

    .line 121
    :cond_e0
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e6
    const-wide/16 v7, -0x1

    cmp-long v9, p5, v7

    if-eqz v9, :cond_132

    .line 130
    iget v7, v0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v7, v7

    cmp-long v9, v7, p5

    const-string v10, "XZ Index does not match a Block Header"

    if-gez v9, :cond_12c

    sub-long v7, p5, v7

    .line 140
    iget-wide v13, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long v9, v7, v13

    if-gtz v9, :cond_126

    iget-wide v13, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v17, -0x1

    cmp-long v9, v13, v17

    if-eqz v9, :cond_10e

    cmp-long v9, v13, v7

    if-nez v9, :cond_126

    .line 149
    :cond_10e
    iget-wide v13, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v9, v13, v17

    if-eqz v9, :cond_11f

    cmp-long v9, v13, v3

    if-nez v9, :cond_119

    goto :goto_11f

    .line 151
    :cond_119
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_11f
    :goto_11f
    iput-wide v7, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    .line 157
    iput-wide v7, v0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    .line 158
    iput-wide v3, v0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    goto :goto_132

    .line 143
    :cond_126
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_12c
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v10}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_132
    :goto_132
    new-array v3, v12, [Lorg/tukaani/xz/FilterDecoder;

    const/4 v4, 0x0

    :goto_135
    if-ge v4, v12, :cond_186

    .line 167
    aget-wide v7, v5, v4

    const-wide/16 v9, 0x21

    cmp-long v9, v7, v9

    if-nez v9, :cond_149

    .line 168
    new-instance v7, Lorg/tukaani/xz/LZMA2Decoder;

    aget-object v8, v6, v4

    invoke-direct {v7, v8}, Lorg/tukaani/xz/LZMA2Decoder;-><init>([B)V

    aput-object v7, v3, v4

    goto :goto_16a

    :cond_149
    const-wide/16 v9, 0x3

    cmp-long v9, v7, v9

    if-nez v9, :cond_159

    .line 171
    new-instance v7, Lorg/tukaani/xz/DeltaDecoder;

    aget-object v8, v6, v4

    invoke-direct {v7, v8}, Lorg/tukaani/xz/DeltaDecoder;-><init>([B)V

    aput-object v7, v3, v4

    goto :goto_16a

    .line 173
    :cond_159
    invoke-static {v7, v8}, Lorg/tukaani/xz/BCJCoder;->isBCJFilterID(J)Z

    move-result v7

    if-eqz v7, :cond_16d

    .line 174
    new-instance v7, Lorg/tukaani/xz/BCJDecoder;

    aget-wide v8, v5, v4

    aget-object v10, v6, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/tukaani/xz/BCJDecoder;-><init>(J[B)V

    aput-object v7, v3, v4

    :goto_16a
    add-int/lit8 v4, v4, 0x1

    goto :goto_135

    .line 177
    :cond_16d
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Filter ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v2, v5, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_186
    invoke-static {v3}, Lorg/tukaani/xz/RawCoder;->validate([Lorg/tukaani/xz/FilterCoder;)V

    if-ltz v2, :cond_1a2

    const/4 v4, 0x0

    const/4 v9, 0x0

    :goto_18d
    if-ge v9, v12, :cond_199

    .line 187
    aget-object v5, v3, v9

    invoke-interface {v5}, Lorg/tukaani/xz/FilterDecoder;->getMemoryUsage()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_18d

    :cond_199
    if-gt v4, v2, :cond_19c

    goto :goto_1a2

    .line 190
    :cond_19c
    new-instance v0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {v0, v4, v2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v0

    .line 195
    :cond_1a2
    :goto_1a2
    new-instance v2, Lorg/tukaani/xz/CountingInputStream;

    invoke-direct {v2, v1}, Lorg/tukaani/xz/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    .line 198
    iput-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    const/4 v1, 0x1

    sub-int/2addr v12, v1

    :goto_1ad
    if-ltz v12, :cond_1be

    .line 200
    aget-object v1, v3, v12

    iget-object v2, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    move-object/from16 v4, p9

    invoke-interface {v1, v2, v4}, Lorg/tukaani/xz/FilterDecoder;->getInputStream(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, v0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    add-int/lit8 v12, v12, -0x1

    goto :goto_1ad

    :cond_1be
    return-void

    :catch_1bf
    move-object/from16 p3, v15

    .line 115
    :catch_1c1
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1c9
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    invoke-direct {v0, v9}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1cf
    move-object v1, v15

    .line 62
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1d6
    new-instance v0, Lorg/tukaani/xz/IndexIndicatorException;

    invoke-direct {v0}, Lorg/tukaani/xz/IndexIndicatorException;-><init>()V

    throw v0
.end method

.method private validate()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v0}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v0

    .line 255
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeInHeader:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_12

    cmp-long v2, v2, v0

    if-nez v2, :cond_1f

    :cond_12
    iget-wide v2, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    iget-wide v4, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    goto :goto_25

    .line 259
    :cond_1f
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_25
    :goto_25
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    const-wide/16 v4, 0x3

    and-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-eqz v0, :cond_41

    .line 263
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    if-nez v0, :cond_3b

    move-wide v0, v2

    goto :goto_25

    .line 264
    :cond_3b
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 267
    :cond_41
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result v0

    new-array v0, v0, [B

    .line 268
    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->inData:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 269
    iget-boolean v1, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v1, :cond_81

    iget-object v1, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v1}, Lorg/tukaani/xz/check/Check;->finish()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_81

    .line 270
    :cond_5f
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Integrity check ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 271
    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") does not match"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_81
    :goto_81
    return-void
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 2

    .line 285
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_5

    :catch_5
    const/4 v0, 0x0

    .line 295
    iput-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    return-void
.end method

.method public getUncompressedSize()J
    .registers 3

    .line 303
    iget-wide v0, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public getUnpaddedSize()J
    .registers 5

    .line 299
    iget v0, p0, Lorg/tukaani/xz/BlockInputStream;->headerSize:I

    int-to-long v0, v0

    iget-object v2, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {v2}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {p0}, Lorg/tukaani/xz/check/Check;->getSize()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/BlockInputStream;->tempBuf:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    iget-boolean v0, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    return v1

    .line 211
    :cond_6
    iget-object v0, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_62

    .line 214
    iget-boolean v3, p0, Lorg/tukaani/xz/BlockInputStream;->verifyCheck:Z

    if-eqz v3, :cond_18

    .line 215
    iget-object v3, p0, Lorg/tukaani/xz/BlockInputStream;->check:Lorg/tukaani/xz/check/Check;

    invoke-virtual {v3, p1, p2, v0}, Lorg/tukaani/xz/check/Check;->update([BII)V

    .line 217
    :cond_18
    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    int-to-long v3, v0

    add-long/2addr p1, v3

    iput-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    .line 220
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->inCounted:Lorg/tukaani/xz/CountingInputStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/CountingInputStream;->getSize()J

    move-result-wide p1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-ltz v5, :cond_5c

    .line 221
    iget-wide v5, p0, Lorg/tukaani/xz/BlockInputStream;->compressedSizeLimit:J

    cmp-long p1, p1, v5

    if-gtz p1, :cond_5c

    iget-wide p1, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSize:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_5c

    iget-wide v3, p0, Lorg/tukaani/xz/BlockInputStream;->uncompressedSizeInHeader:J

    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_42

    cmp-long v5, p1, v3

    if-gtz v5, :cond_5c

    :cond_42
    if-lt v0, p3, :cond_48

    cmp-long p1, p1, v3

    if-nez p1, :cond_69

    .line 236
    :cond_48
    iget-object p1, p0, Lorg/tukaani/xz/BlockInputStream;->filterChain:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result p1

    if-ne p1, v1, :cond_56

    .line 239
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 240
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    goto :goto_69

    .line 237
    :cond_56
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    .line 226
    :cond_5c
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_62
    if-ne v0, v1, :cond_69

    .line 243
    invoke-direct {p0}, Lorg/tukaani/xz/BlockInputStream;->validate()V

    .line 244
    iput-boolean v2, p0, Lorg/tukaani/xz/BlockInputStream;->endReached:Z

    :cond_69
    :goto_69
    return v0
.end method
