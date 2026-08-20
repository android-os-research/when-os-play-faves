.class final Lorg/brotli/dec/Decode;
.super Ljava/lang/Object;
.source "Decode.java"


# static fields
.field static final BLOCK_LENGTH_N_BITS:[I

.field static final BLOCK_LENGTH_OFFSET:[I

.field private static final BLOCK_START:I = 0x2

.field private static final CD_BLOCK_MAP_BITS:I = 0x8

.field private static final CLOSED:I = 0xb

.field static final CMD_LOOKUP:[S

.field private static final CODE_LENGTH_CODES:I = 0x12

.field private static final CODE_LENGTH_CODE_ORDER:[I

.field private static final CODE_LENGTH_REPEAT_CODE:I = 0x10

.field private static final COMPRESSED_BLOCK_START:I = 0x3

.field private static final COPY_FROM_COMPOUND_DICTIONARY:I = 0xe

.field static final COPY_LENGTH_N_BITS:[S

.field private static final COPY_LOOP:I = 0x8

.field private static final COPY_UNCOMPRESSED:I = 0x6

.field private static final DEFAULT_CODE_LENGTH:I = 0x8

.field private static final DISTANCE_CONTEXT_BITS:I = 0x2

.field private static final DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

.field private static final DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

.field private static final FINISHED:I = 0xa

.field private static final FIXED_TABLE:[I

.field private static final HUFFMAN_TABLE_BITS:I = 0x8

.field private static final HUFFMAN_TABLE_MASK:I = 0xff

.field private static final HUFFMAN_TABLE_SIZE_258:I = 0x278

.field private static final HUFFMAN_TABLE_SIZE_26:I = 0x18c

.field private static final INITIALIZED:I = 0x1

.field private static final INIT_WRITE:I = 0xc

.field static final INSERT_LENGTH_N_BITS:[S

.field private static final INSERT_LOOP:I = 0x7

.field private static final LITERAL_CONTEXT_BITS:I = 0x6

.field private static final MAIN_LOOP:I = 0x4

.field private static final MAX_ALLOWED_DISTANCE:I = 0x7ffffffc

.field private static final MAX_DISTANCE_BITS:I = 0x18

.field static final MAX_HUFFMAN_TABLE_SIZE:[I

.field static final MAX_LARGE_WINDOW_BITS:I = 0x1e

.field private static final MAX_LARGE_WINDOW_DISTANCE_BITS:I = 0x3e

.field static final MAX_TRANSFORMED_WORD_LENGTH:I = 0x25

.field static final MIN_LARGE_WINDOW_BITS:I = 0xa

.field private static final NUM_BLOCK_LENGTH_CODES:I = 0x1a

.field private static final NUM_COMMAND_CODES:I = 0x2c0

.field private static final NUM_DISTANCE_SHORT_CODES:I = 0x10

.field private static final NUM_LITERAL_CODES:I = 0x100

.field private static final READ_METADATA:I = 0x5

.field private static final UNINITIALIZED:I = 0x0

.field private static final USE_DICTIONARY:I = 0x9

.field private static final WRITE:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x17

    new-array v0, v0, [I

    .line 61
    fill-array-data v0, :array_54

    sput-object v0, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    const/16 v0, 0x12

    new-array v0, v0, [I

    .line 70
    fill-array-data v0, :array_86

    sput-object v0, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 75
    fill-array-data v1, :array_ae

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    new-array v1, v0, [I

    .line 79
    fill-array-data v1, :array_d2

    sput-object v1, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    new-array v0, v0, [I

    .line 86
    fill-array-data v0, :array_f6

    sput-object v0, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    const/16 v0, 0x1a

    new-array v1, v0, [I

    .line 108
    fill-array-data v1, :array_11a

    sput-object v1, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_OFFSET:[I

    new-array v0, v0, [I

    .line 113
    fill-array-data v0, :array_152

    sput-object v0, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_N_BITS:[I

    const/16 v0, 0x18

    new-array v1, v0, [S

    .line 117
    fill-array-data v1, :array_18a

    sput-object v1, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    new-array v0, v0, [S

    .line 122
    fill-array-data v0, :array_1a6

    sput-object v0, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    const/16 v0, 0xb00

    new-array v0, v0, [S

    .line 132
    sput-object v0, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    .line 135
    invoke-static {v0}, Lorg/brotli/dec/Decode;->unpackCommandLookupTable([S)V

    return-void

    nop

    :array_54
    .array-data 4
        0x100
        0x192
        0x1b4
        0x1d4
        0x1f4
        0x216
        0x236
        0x256
        0x276
        0x296
        0x2b6
        0x2d6
        0x2f6
        0x316
        0x336
        0x356
        0x376
        0x398
        0x3b8
        0x3d8
        0x3f8
        0x418
        0x438
    .end array-data

    :array_86
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x0
        0x5
        0x11
        0x6
        0x10
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    :array_ae
    .array-data 4
        0x0
        0x3
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_d2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
        -0x1
        0x1
        -0x2
        0x2
        -0x3
        0x3
    .end array-data

    :array_f6
    .array-data 4
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40001
        0x20000
        0x20004
        0x20003
        0x30002
        0x20000
        0x20004
        0x20003
        0x40005
    .end array-data

    :array_11a
    .array-data 4
        0x1
        0x5
        0x9
        0xd
        0x11
        0x19
        0x21
        0x29
        0x31
        0x41
        0x51
        0x61
        0x71
        0x91
        0xb1
        0xd1
        0xf1
        0x131
        0x171
        0x1f1
        0x2f1
        0x4f1
        0x8f1
        0x10f1
        0x20f1
        0x40f1
    .end array-data

    :array_152
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0x18
    .end array-data

    :array_18a
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0xcs
        0xes
        0x18s
    .end array-data

    :array_1a6
    .array-data 2
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x1s
        0x1s
        0x2s
        0x2s
        0x3s
        0x3s
        0x4s
        0x4s
        0x5s
        0x5s
        0x6s
        0x7s
        0x8s
        0x9s
        0xas
        0x18s
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static attachDictionaryChunk(Lorg/brotli/dec/State;[B)V
    .registers 6

    .line 270
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_34

    .line 273
    iget v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    if-nez v0, :cond_16

    const/16 v2, 0x10

    new-array v3, v2, [[B

    .line 274
    iput-object v3, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    new-array v2, v2, [I

    .line 275
    iput-object v2, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    const/4 v2, -0x1

    .line 276
    iput v2, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    :cond_16
    const/16 v2, 0xf

    if-eq v0, v2, :cond_2c

    .line 281
    iget-object v2, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    aput-object p1, v2, v0

    add-int/2addr v0, v1

    .line 282
    iput v0, p0, Lorg/brotli/dec/State;->cdNumChunks:I

    .line 283
    iget v1, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    .line 284
    iget-object p0, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    aput v1, p0, v0

    return-void

    .line 279
    :cond_2c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Too many dictionary chunks"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be freshly initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static calculateDistanceAlphabetLimit(III)I
    .registers 6

    const/4 v0, 0x2

    shl-int/2addr v0, p1

    add-int/2addr v0, p2

    if-lt p0, v0, :cond_1e

    sub-int/2addr p0, p2

    shr-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x4

    .line 162
    invoke-static {p0}, Lorg/brotli/dec/Decode;->log2floor(I)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/lit8 v2, v0, -0x1

    shl-int/2addr v2, v1

    shr-int/2addr p0, v0

    and-int/2addr p0, v1

    or-int/2addr p0, v2

    sub-int/2addr p0, v1

    shl-int/2addr p0, p1

    shl-int p1, v1, p1

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, 0x10

    return p0

    .line 159
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxDistance is too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static calculateDistanceAlphabetSize(III)I
    .registers 3

    add-int/lit8 p1, p1, 0x10

    shl-int p0, p2, p0

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    return p1
.end method

.method private static calculateDistanceLut(Lorg/brotli/dec/State;I)V
    .registers 14

    .line 790
    iget-object v0, p0, Lorg/brotli/dec/State;->distExtraBits:[B

    .line 791
    iget-object v1, p0, Lorg/brotli/dec/State;->distOffset:[I

    .line 792
    iget v2, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    .line 793
    iget p0, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/4 v3, 0x1

    shl-int v4, v3, v2

    const/4 v5, 0x0

    const/16 v6, 0x10

    move v7, v5

    :goto_f
    if-ge v7, p0, :cond_1a

    .line 803
    aput-byte v5, v0, v6

    add-int/lit8 v7, v7, 0x1

    .line 804
    aput v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    :cond_1a
    move v8, v3

    move v7, v5

    :goto_1c
    if-ge v6, p1, :cond_39

    add-int/lit8 v9, v7, 0x2

    shl-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x4

    shl-int/2addr v9, v2

    add-int/2addr v9, p0

    add-int/2addr v9, v3

    move v10, v5

    :goto_27
    if-ge v10, v4, :cond_35

    int-to-byte v11, v8

    .line 813
    aput-byte v11, v0, v6

    add-int v11, v9, v10

    .line 814
    aput v11, v1, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_27

    :cond_35
    add-int/2addr v8, v7

    xor-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_39
    return-void
.end method

.method private static calculateFence(Lorg/brotli/dec/State;)I
    .registers 4

    .line 950
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    .line 951
    iget v1, p0, Lorg/brotli/dec/State;->isEager:I

    if-eqz v1, :cond_12

    .line 952
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    iget v2, p0, Lorg/brotli/dec/State;->outputLength:I

    add-int/2addr v1, v2

    iget p0, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_12
    return v0
.end method

.method private static checkDupes([II)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_1d

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_8
    if-ge v2, p1, :cond_1b

    .line 495
    aget v3, p0, v0

    aget v4, p0, v2

    if-eq v3, v4, :cond_13

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 496
    :cond_13
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Duplicate simple Huffman code symbol"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1b
    move v0, v1

    goto :goto_1

    :cond_1d
    return-void
.end method

.method static close(Lorg/brotli/dec/State;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    if-eqz v0, :cond_16

    const/16 v1, 0xb

    if-ne v0, v1, :cond_9

    return-void

    .line 316
    :cond_9
    iput v1, p0, Lorg/brotli/dec/State;->runningState:I

    .line 317
    iget-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    if-eqz v0, :cond_15

    .line 318
    invoke-static {v0}, Lorg/brotli/dec/Utils;->closeInput(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    .line 319
    iput-object v0, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    :cond_15
    return-void

    .line 311
    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static copyFromCompoundDictionary(Lorg/brotli/dec/State;I)I
    .registers 10

    .line 1040
    iget v0, p0, Lorg/brotli/dec/State;->pos:I

    move v1, v0

    .line 1042
    :cond_3
    iget v2, p0, Lorg/brotli/dec/State;->cdBrLength:I

    iget v3, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    if-eq v2, v3, :cond_44

    sub-int v4, p1, v1

    .line 1044
    iget-object v5, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    iget v6, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    add-int/lit8 v7, v6, 0x1

    aget v7, v5, v7

    aget v5, v5, v6

    sub-int/2addr v7, v5

    .line 1045
    iget v5, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    sub-int/2addr v7, v5

    sub-int/2addr v2, v3

    if-le v2, v7, :cond_1d

    move v2, v7

    :cond_1d
    if-le v2, v4, :cond_20

    goto :goto_21

    :cond_20
    move v4, v2

    .line 1053
    :goto_21
    iget-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget-object v3, p0, Lorg/brotli/dec/State;->cdChunks:[[B

    aget-object v3, v3, v6

    add-int v6, v5, v4

    invoke-static {v2, v1, v3, v5, v6}, Lorg/brotli/dec/Utils;->copyBytes([BI[BII)V

    add-int/2addr v1, v4

    .line 1056
    iget v2, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    .line 1057
    iget v2, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    add-int/2addr v2, v4

    iput v2, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    if-ne v4, v7, :cond_42

    .line 1059
    iget v2, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    const/4 v2, 0x0

    .line 1060
    iput v2, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    :cond_42
    if-lt v1, p1, :cond_3

    :cond_44
    sub-int/2addr v1, v0

    return v1
.end method

.method private static copyUncompressedData(Lorg/brotli/dec/State;)V
    .registers 6

    .line 896
    iget-object v0, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 899
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    const/4 v2, 0x2

    if-gtz v1, :cond_d

    .line 900
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/State;)V

    .line 901
    iput v2, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 905
    :cond_d
    iget v3, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v4, p0, Lorg/brotli/dec/State;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 906
    iget v3, p0, Lorg/brotli/dec/State;->pos:I

    invoke-static {p0, v0, v3, v1}, Lorg/brotli/dec/BitReader;->copyBytes(Lorg/brotli/dec/State;[BII)V

    .line 907
    iget v0, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 908
    iget v0, p0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->pos:I

    .line 909
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-ne v0, v1, :cond_31

    const/4 v0, 0x6

    .line 910
    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    const/16 v0, 0xc

    .line 911
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 915
    :cond_31
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->reload(Lorg/brotli/dec/State;)V

    .line 916
    iput v2, p0, Lorg/brotli/dec/State;->runningState:I

    return-void
.end method

.method private static decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I
    .registers 8

    .line 668
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 v1, p1, 0x4

    .line 670
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 671
    iget-object v2, p0, Lorg/brotli/dec/State;->blockTrees:[I

    invoke-static {v2, p1, p0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v2

    .line 672
    iget-object v3, p0, Lorg/brotli/dec/State;->blockTrees:[I

    const/4 v4, 0x1

    add-int/2addr p1, v4

    invoke-static {v3, p1, p0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/State;)I

    move-result p0

    if-ne v2, v4, :cond_1f

    add-int/lit8 p1, v1, 0x1

    .line 675
    aget p1, v0, p1

    add-int/2addr p1, v4

    goto :goto_26

    :cond_1f
    if-nez v2, :cond_24

    .line 677
    aget p1, v0, v1

    goto :goto_26

    :cond_24
    add-int/lit8 p1, v2, -0x2

    :goto_26
    if-lt p1, p2, :cond_29

    sub-int/2addr p1, p2

    :cond_29
    add-int/lit8 p2, v1, 0x1

    .line 684
    aget v2, v0, p2

    aput v2, v0, v1

    .line 685
    aput p1, v0, p2

    return p0
.end method

.method private static decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V
    .registers 3

    .line 700
    iget v0, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    const/4 v1, 0x1

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 701
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->commandTreeIdx:I

    return-void
.end method

.method private static decodeContextMap(I[BLorg/brotli/dec/State;)I
    .registers 12

    .line 617
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 618
    invoke-static {p2}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_10

    .line 621
    invoke-static {p1, v2, p0}, Lorg/brotli/dec/Utils;->fillBytesWithZeroes([BII)V

    return v0

    .line 625
    :cond_10
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 626
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    if-eqz v3, :cond_20

    const/4 v3, 0x4

    .line 629
    invoke-static {p2, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_21

    :cond_20
    move v3, v2

    :goto_21
    add-int v4, v0, v3

    .line 632
    sget-object v5, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    add-int/lit8 v6, v4, 0x1f

    shr-int/lit8 v6, v6, 0x5

    aget v5, v5, v6

    add-int/2addr v5, v1

    .line 634
    new-array v6, v5, [I

    sub-int/2addr v5, v1

    .line 636
    invoke-static {v4, v4, v6, v5, p2}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move v4, v2

    :cond_33
    :goto_33
    if-ge v4, p0, :cond_6a

    .line 638
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 639
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 640
    invoke-static {v6, v5, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v7

    if-nez v7, :cond_46

    .line 642
    aput-byte v2, p1, v4

    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_46
    if-gt v7, v3, :cond_65

    .line 645
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    shl-int v8, v1, v7

    .line 646
    invoke-static {p2, v7}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v7

    add-int/2addr v8, v7

    :goto_52
    if-eqz v8, :cond_33

    if-ge v4, p0, :cond_5d

    .line 651
    aput-byte v2, p1, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_52

    .line 649
    :cond_5d
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted context map"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_65
    sub-int/2addr v7, v3

    int-to-byte v7, v7

    .line 656
    aput-byte v7, p1, v4

    goto :goto_43

    .line 660
    :cond_6a
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 661
    invoke-static {p2, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p2

    if-ne p2, v1, :cond_76

    .line 662
    invoke-static {p1, p0}, Lorg/brotli/dec/Decode;->inverseMoveToFrontTransform([BI)V

    :cond_76
    return v0
.end method

.method private static decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V
    .registers 4

    .line 705
    iget v0, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    const/4 v1, 0x2

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 706
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/16 v2, 0x9

    aget v0, v0, v2

    shl-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    return-void
.end method

.method private static decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I
    .registers 8

    .line 938
    sget-object v0, Lorg/brotli/dec/Decode;->MAX_HUFFMAN_TABLE_SIZE:[I

    add-int/lit8 v1, p1, 0x1f

    shr-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    mul-int/2addr v0, p2

    add-int/2addr v0, p2

    .line 939
    new-array v0, v0, [I

    const/4 v1, 0x0

    move v2, p2

    :goto_e
    if-ge v1, p2, :cond_1a

    .line 942
    aput v2, v0, v1

    .line 943
    invoke-static {p0, p1, v0, v1, p3}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1a
    return-object v0
.end method

.method private static decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V
    .registers 4

    .line 690
    iget v0, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->decodeBlockTypeAndLength(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 691
    iget-object v0, p0, Lorg/brotli/dec/State;->rings:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    shl-int/lit8 v1, v0, 0x6

    .line 692
    iput v1, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 693
    iget-object v2, p0, Lorg/brotli/dec/State;->contextMap:[B

    aget-byte v1, v2, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lorg/brotli/dec/State;->literalTreeIdx:I

    .line 694
    iget-object v1, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v0, v1, v0

    shl-int/lit8 v0, v0, 0x9

    .line 695
    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/lit16 v0, v0, 0x100

    .line 696
    iput v0, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    return-void
.end method

.method private static decodeMetaBlockLength(Lorg/brotli/dec/State;)V
    .registers 9

    .line 340
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    const/4 v0, 0x1

    .line 341
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    iput v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    const/4 v2, 0x0

    .line 342
    iput v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 343
    iput v2, p0, Lorg/brotli/dec/State;->isUncompressed:I

    .line 344
    iput v2, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v1, :cond_1a

    .line 345
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    const/4 v1, 0x2

    .line 348
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    const/4 v4, 0x4

    add-int/2addr v3, v4

    const/4 v5, 0x7

    const-string v6, "Exuberant nibble"

    if-ne v3, v5, :cond_62

    .line 350
    iput v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    .line 351
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    if-nez v3, :cond_5a

    .line 354
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-nez v1, :cond_35

    return-void

    :cond_35
    :goto_35
    if-ge v2, v1, :cond_85

    .line 359
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    const/16 v3, 0x8

    .line 360
    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    if-nez v3, :cond_4f

    add-int/lit8 v4, v2, 0x1

    if-ne v4, v1, :cond_4f

    if-gt v1, v0, :cond_49

    goto :goto_4f

    .line 362
    :cond_49
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_4f
    :goto_4f
    iget v4, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v5, v2, 0x8

    shl-int/2addr v3, v5

    or-int/2addr v3, v4

    iput v3, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 352
    :cond_5a
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v0, "Corrupted reserved bit"

    invoke-direct {p0, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    if-ge v2, v3, :cond_85

    .line 368
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 369
    invoke-static {p0, v4}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-nez v1, :cond_7a

    add-int/lit8 v5, v2, 0x1

    if-ne v5, v3, :cond_7a

    if-gt v3, v4, :cond_74

    goto :goto_7a

    .line 371
    :cond_74
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v6}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 373
    :cond_7a
    :goto_7a
    iget v5, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    mul-int/lit8 v7, v2, 0x4

    shl-int/2addr v1, v7

    or-int/2addr v1, v5

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_62

    .line 376
    :cond_85
    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 377
    iget v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-nez v1, :cond_94

    .line 378
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->isUncompressed:I

    :cond_94
    return-void
.end method

.method private static decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I
    .registers 3

    .line 327
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    const/4 v0, 0x1

    .line 328
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x3

    .line 329
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v1

    if-nez v1, :cond_12

    return v0

    .line 333
    :cond_12
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    shl-int/2addr v0, v1

    add-int/2addr p0, v0

    return p0

    :cond_19
    const/4 p0, 0x0

    return p0
.end method

.method private static decodeWindowBits(Lorg/brotli/dec/State;)I
    .registers 6

    .line 211
    iget v0, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    const/4 v1, 0x0

    .line 212
    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 214
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    const/4 v1, 0x1

    .line 215
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    if-nez v2, :cond_12

    const/16 p0, 0x10

    return p0

    :cond_12
    const/4 v2, 0x3

    .line 218
    invoke-static {p0, v2}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v3

    const/16 v4, 0x11

    if-eqz v3, :cond_1d

    add-int/2addr v3, v4

    return v3

    .line 222
    :cond_1d
    invoke-static {p0, v2}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v2

    if-eqz v2, :cond_45

    if-ne v2, v1, :cond_42

    const/4 v2, -0x1

    if-nez v0, :cond_29

    return v2

    .line 229
    :cond_29
    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    .line 231
    invoke-static {p0, v1}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    if-ne v0, v1, :cond_32

    return v2

    :cond_32
    const/4 v0, 0x6

    .line 234
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    const/16 v0, 0xa

    if-lt p0, v0, :cond_41

    const/16 v0, 0x1e

    if-le p0, v0, :cond_40

    goto :goto_41

    :cond_40
    return p0

    :cond_41
    :goto_41
    return v2

    :cond_42
    add-int/lit8 v2, v2, 0x8

    return v2

    :cond_45
    return v4
.end method

.method static decompress(Lorg/brotli/dec/State;)V
    .registers 18

    move-object/from16 v0, p0

    .line 1073
    iget v1, v0, Lorg/brotli/dec/State;->runningState:I

    if-eqz v1, :cond_324

    const/16 v2, 0xb

    if-eq v1, v2, :cond_31c

    const/16 v2, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_29

    .line 1080
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeWindowBits(Lorg/brotli/dec/State;)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_21

    shl-int v1, v4, v1

    .line 1084
    iput v1, v0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    sub-int/2addr v1, v2

    .line 1085
    iput v1, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    .line 1086
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_29

    .line 1082
    :cond_21
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Invalid \'windowBits\' code"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1089
    :cond_29
    :goto_29
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->calculateFence(Lorg/brotli/dec/State;)I

    move-result v1

    .line 1090
    iget v5, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    sub-int/2addr v5, v4

    .line 1091
    iget-object v6, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 1093
    :goto_32
    iget v7, v0, Lorg/brotli/dec/State;->runningState:I

    const-string v8, "Invalid metablock length"

    const/16 v9, 0xa

    if-eq v7, v9, :cond_308

    const/4 v9, 0x7

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/16 v12, 0x8

    const/4 v13, 0x4

    packed-switch v7, :pswitch_data_32c

    .line 1341
    :pswitch_44
    new-instance v1, Lorg/brotli/dec/BrotliRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lorg/brotli/dec/State;->runningState:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1293
    :pswitch_5d
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    invoke-static {v0, v1}, Lorg/brotli/dec/Decode;->copyFromCompoundDictionary(Lorg/brotli/dec/State;I)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    if-lt v7, v1, :cond_6f

    const/16 v1, 0xe

    .line 1295
    iput v1, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1296
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 1299
    :cond_6f
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    .line 1318
    :pswitch_73
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, v0, Lorg/brotli/dec/State;->ringBufferBytesReady:I

    const/16 v7, 0xd

    .line 1319
    iput v7, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1322
    :pswitch_81
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->writeRingBuffer(Lorg/brotli/dec/State;)I

    move-result v7

    if-nez v7, :cond_88

    return-void

    .line 1326
    :cond_88
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-lt v7, v8, :cond_90

    .line 1327
    iput v8, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 1330
    :cond_90
    iget v8, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-lt v7, v8, :cond_a0

    if-le v7, v8, :cond_99

    .line 1332
    invoke-static {v6, v10, v8, v7}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    .line 1334
    :cond_99
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    and-int/2addr v7, v5

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    .line 1335
    iput v10, v0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    .line 1337
    :cond_a0
    iget v7, v0, Lorg/brotli/dec/State;->nextRunningState:I

    iput v7, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    .line 1289
    :pswitch_a6
    invoke-static {v0, v1}, Lorg/brotli/dec/Decode;->doUseDictionary(Lorg/brotli/dec/State;I)V

    goto/16 :goto_2e5

    .line 1314
    :pswitch_ab
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->copyUncompressedData(Lorg/brotli/dec/State;)V

    goto/16 :goto_2e5

    .line 1303
    :goto_b0
    :pswitch_b0
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-lez v7, :cond_c3

    .line 1304
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1306
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1307
    invoke-static {v0, v12}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    .line 1308
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    goto :goto_b0

    .line 1310
    :cond_c3
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    .line 1108
    :pswitch_c7
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V

    .line 1109
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1113
    :pswitch_cc
    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v7, :cond_d4

    .line 1114
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    .line 1117
    :cond_d4
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1118
    iget v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    if-nez v7, :cond_de

    .line 1119
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeCommandBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1121
    :cond_de
    iget v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 1122
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1123
    iget-object v7, v0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    iget v8, v0, Lorg/brotli/dec/State;->commandTreeIdx:I

    invoke-static {v7, v8, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v7

    shl-int/2addr v7, v3

    .line 1124
    sget-object v8, Lorg/brotli/dec/Decode;->CMD_LOOKUP:[S

    aget-short v14, v8, v7

    add-int/lit8 v15, v7, 0x1

    .line 1125
    aget-short v15, v8, v15

    add-int/lit8 v16, v7, 0x2

    .line 1126
    aget-short v16, v8, v16

    add-int/lit8 v7, v7, 0x3

    .line 1127
    aget-short v7, v8, v7

    iput v7, v0, Lorg/brotli/dec/State;->distanceCode:I

    .line 1128
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    and-int/lit16 v7, v14, 0xff

    .line 1131
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v7

    add-int/2addr v15, v7

    iput v15, v0, Lorg/brotli/dec/State;->insertLength:I

    .line 1133
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    shr-int/lit8 v7, v14, 0x8

    .line 1136
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v7

    add-int v7, v16, v7

    iput v7, v0, Lorg/brotli/dec/State;->copyLength:I

    .line 1139
    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1140
    iput v9, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1144
    :pswitch_11e
    iget v7, v0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    if-eqz v7, :cond_158

    .line 1145
    :cond_122
    iget v7, v0, Lorg/brotli/dec/State;->j:I

    iget v8, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v7, v8, :cond_1b3

    .line 1146
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1147
    iget v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    if-nez v7, :cond_132

    .line 1148
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1150
    :cond_132
    iget v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 1151
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1152
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget-object v8, v0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    iget v14, v0, Lorg/brotli/dec/State;->literalTreeIdx:I

    invoke-static {v8, v14, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 1153
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    .line 1154
    iget v8, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v8, v4

    iput v8, v0, Lorg/brotli/dec/State;->j:I

    if-lt v7, v1, :cond_122

    .line 1156
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1157
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_1b3

    .line 1162
    :cond_158
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v8, v7, -0x1

    and-int/2addr v8, v5

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    sub-int/2addr v7, v3

    and-int/2addr v7, v5

    .line 1163
    aget-byte v7, v6, v7

    and-int/lit16 v7, v7, 0xff

    .line 1164
    :goto_167
    iget v14, v0, Lorg/brotli/dec/State;->j:I

    iget v15, v0, Lorg/brotli/dec/State;->insertLength:I

    if-ge v14, v15, :cond_1b3

    .line 1165
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1166
    iget v14, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    if-nez v14, :cond_177

    .line 1167
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeLiteralBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1169
    :cond_177
    sget-object v14, Lorg/brotli/dec/Context;->LOOKUP:[I

    iget v15, v0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v15, v8

    aget v15, v14, v15

    iget v3, v0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    add-int/2addr v3, v7

    aget v3, v14, v3

    or-int/2addr v3, v15

    .line 1171
    iget-object v7, v0, Lorg/brotli/dec/State;->contextMap:[B

    iget v14, v0, Lorg/brotli/dec/State;->contextMapSlice:I

    add-int/2addr v14, v3

    aget-byte v3, v7, v14

    and-int/lit16 v3, v3, 0xff

    .line 1172
    iget v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 1174
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1175
    iget-object v7, v0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    invoke-static {v7, v3, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v3

    .line 1176
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    int-to-byte v14, v3

    aput-byte v14, v6, v7

    add-int/2addr v7, v4

    .line 1177
    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    .line 1178
    iget v14, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v14, v4

    iput v14, v0, Lorg/brotli/dec/State;->j:I

    if-lt v7, v1, :cond_1af

    .line 1180
    iput v9, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1181
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_1b3

    :cond_1af
    move v7, v8

    move v8, v3

    const/4 v3, 0x2

    goto :goto_167

    .line 1186
    :cond_1b3
    :goto_1b3
    iget v3, v0, Lorg/brotli/dec/State;->runningState:I

    if-eq v3, v9, :cond_1b9

    goto/16 :goto_2e5

    .line 1189
    :cond_1b9
    iget v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    iget v7, v0, Lorg/brotli/dec/State;->insertLength:I

    sub-int/2addr v3, v7

    iput v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gtz v3, :cond_1c6

    .line 1191
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    .line 1194
    :cond_1c6
    iget v3, v0, Lorg/brotli/dec/State;->distanceCode:I

    if-gez v3, :cond_1d3

    .line 1197
    iget-object v7, v0, Lorg/brotli/dec/State;->rings:[I

    iget v8, v0, Lorg/brotli/dec/State;->distRbIdx:I

    aget v7, v7, v8

    iput v7, v0, Lorg/brotli/dec/State;->distance:I

    goto :goto_236

    .line 1199
    :cond_1d3
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 1200
    iget v7, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    if-nez v7, :cond_1dd

    .line 1201
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->decodeDistanceBlockSwitch(Lorg/brotli/dec/State;)V

    .line 1203
    :cond_1dd
    iget v7, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    sub-int/2addr v7, v4

    iput v7, v0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 1204
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1205
    iget-object v7, v0, Lorg/brotli/dec/State;->distContextMap:[B

    iget v8, v0, Lorg/brotli/dec/State;->distContextMapSlice:I

    add-int/2addr v8, v3

    aget-byte v3, v7, v8

    and-int/lit16 v3, v3, 0xff

    .line 1206
    iget-object v7, v0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    invoke-static {v7, v3, v0}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result v3

    if-ge v3, v2, :cond_215

    .line 1208
    iget v7, v0, Lorg/brotli/dec/State;->distRbIdx:I

    sget-object v8, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_INDEX_OFFSET:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3

    .line 1209
    iget-object v8, v0, Lorg/brotli/dec/State;->rings:[I

    aget v7, v8, v7

    sget-object v8, Lorg/brotli/dec/Decode;->DISTANCE_SHORT_CODE_VALUE_OFFSET:[I

    aget v8, v8, v3

    add-int/2addr v7, v8

    iput v7, v0, Lorg/brotli/dec/State;->distance:I

    if-ltz v7, :cond_20d

    goto :goto_236

    .line 1211
    :cond_20d
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Negative distance"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :cond_215
    iget-object v7, v0, Lorg/brotli/dec/State;->distExtraBits:[B

    aget-byte v7, v7, v3

    .line 1216
    iget v8, v0, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr v8, v7

    sget v9, Lorg/brotli/dec/BitReader;->BITNESS:I

    if-gt v8, v9, :cond_225

    .line 1217
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v7

    goto :goto_22c

    .line 1219
    :cond_225
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 1220
    invoke-static {v0, v7}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result v7

    .line 1222
    :goto_22c
    iget-object v8, v0, Lorg/brotli/dec/State;->distOffset:[I

    aget v8, v8, v3

    iget v9, v0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v7, v9

    add-int/2addr v8, v7

    iput v8, v0, Lorg/brotli/dec/State;->distance:I

    .line 1226
    :goto_236
    iget v7, v0, Lorg/brotli/dec/State;->maxDistance:I

    iget v8, v0, Lorg/brotli/dec/State;->maxBackwardDistance:I

    if-eq v7, v8, :cond_243

    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    if-ge v7, v8, :cond_243

    .line 1228
    iput v7, v0, Lorg/brotli/dec/State;->maxDistance:I

    goto :goto_245

    .line 1230
    :cond_243
    iput v8, v0, Lorg/brotli/dec/State;->maxDistance:I

    .line 1233
    :goto_245
    iget v7, v0, Lorg/brotli/dec/State;->distance:I

    iget v8, v0, Lorg/brotli/dec/State;->maxDistance:I

    if-le v7, v8, :cond_251

    const/16 v3, 0x9

    .line 1234
    iput v3, v0, Lorg/brotli/dec/State;->runningState:I

    goto/16 :goto_2e5

    :cond_251
    if-lez v3, :cond_25e

    .line 1239
    iget v3, v0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x3

    iput v3, v0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 1240
    iget-object v8, v0, Lorg/brotli/dec/State;->rings:[I

    aput v7, v8, v3

    .line 1243
    :cond_25e
    iget v3, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v7, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-gt v3, v7, :cond_2e8

    .line 1246
    iput v10, v0, Lorg/brotli/dec/State;->j:I

    .line 1247
    iput v12, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1250
    :pswitch_268
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    iget v7, v0, Lorg/brotli/dec/State;->distance:I

    sub-int v7, v3, v7

    and-int/2addr v7, v5

    .line 1252
    iget v8, v0, Lorg/brotli/dec/State;->copyLength:I

    iget v9, v0, Lorg/brotli/dec/State;->j:I

    sub-int/2addr v8, v9

    add-int v9, v7, v8

    add-int v14, v3, v8

    if-ge v9, v5, :cond_2bc

    if-ge v14, v5, :cond_2bc

    if-lt v8, v11, :cond_287

    if-le v9, v3, :cond_283

    if-le v14, v7, :cond_283

    goto :goto_287

    .line 1264
    :cond_283
    invoke-static {v6, v3, v7, v9}, Lorg/brotli/dec/Utils;->copyBytesWithin([BIII)V

    goto :goto_2ac

    :cond_287
    :goto_287
    if-ge v10, v8, :cond_2ac

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 1258
    aget-byte v7, v6, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v7, v11, 0x1

    .line 1259
    aget-byte v11, v6, v11

    aput-byte v11, v6, v9

    add-int/lit8 v9, v3, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 1260
    aget-byte v7, v6, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v9, 0x1

    add-int/lit8 v7, v11, 0x1

    .line 1261
    aget-byte v11, v6, v11

    aput-byte v11, v6, v9

    add-int/lit8 v10, v10, 0x4

    goto :goto_287

    .line 1266
    :cond_2ac
    :goto_2ac
    iget v3, v0, Lorg/brotli/dec/State;->j:I

    add-int/2addr v3, v8

    iput v3, v0, Lorg/brotli/dec/State;->j:I

    .line 1267
    iget v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v3, v8

    iput v3, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1268
    iget v3, v0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v3, v8

    iput v3, v0, Lorg/brotli/dec/State;->pos:I

    goto :goto_2df

    .line 1270
    :cond_2bc
    iget v3, v0, Lorg/brotli/dec/State;->j:I

    iget v7, v0, Lorg/brotli/dec/State;->copyLength:I

    if-ge v3, v7, :cond_2df

    .line 1271
    iget v7, v0, Lorg/brotli/dec/State;->pos:I

    iget v8, v0, Lorg/brotli/dec/State;->distance:I

    sub-int v8, v7, v8

    and-int/2addr v8, v5

    aget-byte v8, v6, v8

    aput-byte v8, v6, v7

    .line 1273
    iget v8, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v8, v4

    iput v8, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v7, v4

    .line 1274
    iput v7, v0, Lorg/brotli/dec/State;->pos:I

    add-int/lit8 v3, v3, 0x1

    .line 1275
    iput v3, v0, Lorg/brotli/dec/State;->j:I

    if-lt v7, v1, :cond_2bc

    .line 1277
    iput v12, v0, Lorg/brotli/dec/State;->nextRunningState:I

    .line 1278
    iput v11, v0, Lorg/brotli/dec/State;->runningState:I

    .line 1283
    :cond_2df
    :goto_2df
    iget v3, v0, Lorg/brotli/dec/State;->runningState:I

    if-ne v3, v12, :cond_2e5

    .line 1284
    iput v13, v0, Lorg/brotli/dec/State;->runningState:I

    :cond_2e5
    :goto_2e5
    const/4 v3, 0x2

    goto/16 :goto_32

    .line 1244
    :cond_2e8
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string v1, "Invalid backward reference"

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :pswitch_2f0
    iget v1, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v1, :cond_302

    .line 1100
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->readNextMetablockHeader(Lorg/brotli/dec/State;)V

    .line 1102
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/Decode;->calculateFence(Lorg/brotli/dec/State;)I

    move-result v1

    .line 1103
    iget v3, v0, Lorg/brotli/dec/State;->ringBufferSize:I

    add-int/lit8 v5, v3, -0x1

    .line 1104
    iget-object v6, v0, Lorg/brotli/dec/State;->ringBuffer:[B

    goto :goto_2e5

    .line 1098
    :cond_302
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v8}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_308
    if-ne v7, v9, :cond_31b

    .line 1345
    iget v1, v0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-ltz v1, :cond_315

    .line 1348
    invoke-static/range {p0 .. p0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/State;)V

    .line 1349
    invoke-static {v0, v4}, Lorg/brotli/dec/BitReader;->checkHealth(Lorg/brotli/dec/State;I)V

    goto :goto_31b

    .line 1346
    :cond_315
    new-instance v0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {v0, v8}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31b
    :goto_31b
    return-void

    .line 1077
    :cond_31c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress after close"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1074
    :cond_324
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t decompress until initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_32c
    .packed-switch 0x2
        :pswitch_2f0
        :pswitch_c7
        :pswitch_cc
        :pswitch_b0
        :pswitch_ab
        :pswitch_11e
        :pswitch_268
        :pswitch_a6
        :pswitch_44
        :pswitch_44
        :pswitch_73
        :pswitch_81
        :pswitch_5d
    .end packed-switch
.end method

.method private static doUseDictionary(Lorg/brotli/dec/State;I)V
    .registers 10

    .line 958
    iget v0, p0, Lorg/brotli/dec/State;->distance:I

    const-string v1, "Invalid backward reference"

    const v2, 0x7ffffffc

    if-gt v0, v2, :cond_78

    .line 961
    iget v2, p0, Lorg/brotli/dec/State;->maxDistance:I

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    iget v3, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    sub-int/2addr v0, v3

    if-gez v0, :cond_1f

    neg-int p1, v0

    sub-int/2addr p1, v2

    .line 963
    iget v0, p0, Lorg/brotli/dec/State;->copyLength:I

    invoke-static {p0, p1, v0}, Lorg/brotli/dec/Decode;->initializeCompoundDictionaryCopy(Lorg/brotli/dec/State;II)V

    const/16 p1, 0xe

    .line 964
    iput p1, p0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_65

    .line 967
    :cond_1f
    invoke-static {}, Lorg/brotli/dec/Dictionary;->getData()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 968
    iget v4, p0, Lorg/brotli/dec/State;->copyLength:I

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_72

    .line 972
    sget-object v5, Lorg/brotli/dec/Dictionary;->sizeBits:[I

    aget v5, v5, v4

    if-eqz v5, :cond_6c

    .line 976
    sget-object v6, Lorg/brotli/dec/Dictionary;->offsets:[I

    aget v6, v6, v4

    shl-int v7, v2, v5

    sub-int/2addr v7, v2

    and-int v2, v0, v7

    ushr-int v7, v0, v5

    mul-int/2addr v2, v4

    add-int v5, v6, v2

    .line 981
    sget-object v6, Lorg/brotli/dec/Transform;->RFC_TRANSFORMS:Lorg/brotli/dec/Transform$Transforms;

    .line 982
    iget v0, v6, Lorg/brotli/dec/Transform$Transforms;->numTransforms:I

    if-ge v7, v0, :cond_66

    .line 985
    iget-object v0, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v1, p0, Lorg/brotli/dec/State;->pos:I

    move-object v2, v3

    move v3, v5

    move-object v5, v6

    move v6, v7

    invoke-static/range {v0 .. v6}, Lorg/brotli/dec/Transform;->transformDictionaryWord([BILjava/nio/ByteBuffer;IILorg/brotli/dec/Transform$Transforms;I)I

    move-result v0

    .line 987
    iget v1, p0, Lorg/brotli/dec/State;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->pos:I

    .line 988
    iget v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v2, v0

    iput v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    const/4 v0, 0x4

    if-lt v1, p1, :cond_63

    .line 990
    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    const/16 p1, 0xc

    .line 991
    iput p1, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 994
    :cond_63
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    :goto_65
    return-void

    .line 983
    :cond_66
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 974
    :cond_6c
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 970
    :cond_72
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 959
    :cond_78
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    invoke-direct {p0, v1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static enableEagerOutput(Lorg/brotli/dec/State;)V
    .registers 3

    .line 255
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 258
    iput v1, p0, Lorg/brotli/dec/State;->isEager:I

    return-void

    .line 256
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be freshly initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static enableLargeWindow(Lorg/brotli/dec/State;)V
    .registers 3

    .line 262
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 265
    iput v1, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    return-void

    .line 263
    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be freshly initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static initState(Lorg/brotli/dec/State;Ljava/io/InputStream;)V
    .registers 5

    .line 294
    iget v0, p0, Lorg/brotli/dec/State;->runningState:I

    if-nez v0, :cond_2b

    const/16 v0, 0xc13

    new-array v0, v0, [I

    .line 298
    iput-object v0, p0, Lorg/brotli/dec/State;->blockTrees:[I

    const/4 v1, 0x0

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v0, 0x3

    .line 300
    iput v0, p0, Lorg/brotli/dec/State;->distRbIdx:I

    const v1, 0x7ffffffc

    const/16 v2, 0x78

    .line 301
    invoke-static {v1, v0, v2}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetLimit(III)I

    move-result v0

    .line 302
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/brotli/dec/State;->distExtraBits:[B

    .line 303
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/brotli/dec/State;->distOffset:[I

    .line 304
    iput-object p1, p0, Lorg/brotli/dec/State;->input:Ljava/io/InputStream;

    .line 305
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->initBitReader(Lorg/brotli/dec/State;)V

    const/4 p1, 0x1

    .line 306
    iput p1, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    .line 295
    :cond_2b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initializeCompoundDictionary(Lorg/brotli/dec/State;)V
    .registers 8

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 999
    iput-object v0, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    const/16 v0, 0x8

    .line 1002
    :goto_8
    iget v1, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    ushr-int/2addr v1, v0

    if-eqz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v0, v0, -0x8

    .line 1006
    iput v0, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    const/4 v1, 0x0

    move v3, v1

    .line 1009
    :goto_18
    iget v4, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    if-ge v1, v4, :cond_31

    .line 1010
    :goto_1c
    iget-object v4, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    add-int/lit8 v5, v3, 0x1

    aget v4, v4, v5

    if-ge v4, v1, :cond_26

    move v3, v5

    goto :goto_1c

    .line 1013
    :cond_26
    iget-object v4, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    ushr-int v5, v1, v0

    int-to-byte v6, v3

    aput-byte v6, v4, v5

    shl-int v4, v2, v0

    add-int/2addr v1, v4

    goto :goto_18

    :cond_31
    return-void
.end method

.method private static initializeCompoundDictionaryCopy(Lorg/brotli/dec/State;II)V
    .registers 8

    .line 1019
    iget v0, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 1020
    invoke-static {p0}, Lorg/brotli/dec/Decode;->initializeCompoundDictionary(Lorg/brotli/dec/State;)V

    .line 1022
    :cond_8
    iget-object v0, p0, Lorg/brotli/dec/State;->cdBlockMap:[B

    iget v1, p0, Lorg/brotli/dec/State;->cdBlockBits:I

    ushr-int v1, p1, v1

    aget-byte v0, v0, v1

    .line 1023
    :goto_10
    iget-object v1, p0, Lorg/brotli/dec/State;->cdChunkOffsets:[I

    add-int/lit8 v2, v0, 0x1

    aget v3, v1, v2

    if-lt p1, v3, :cond_1a

    move v0, v2

    goto :goto_10

    .line 1026
    :cond_1a
    iget v2, p0, Lorg/brotli/dec/State;->cdTotalSize:I

    add-int v3, p1, p2

    if-gt v2, v3, :cond_40

    .line 1030
    iget v2, p0, Lorg/brotli/dec/State;->distRbIdx:I

    add-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/brotli/dec/State;->distRbIdx:I

    .line 1031
    iget-object v3, p0, Lorg/brotli/dec/State;->rings:[I

    iget v4, p0, Lorg/brotli/dec/State;->distance:I

    aput v4, v3, v2

    .line 1032
    iget v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    .line 1033
    iput v0, p0, Lorg/brotli/dec/State;->cdBrIndex:I

    .line 1034
    aget v0, v1, v0

    sub-int/2addr p1, v0

    iput p1, p0, Lorg/brotli/dec/State;->cdBrOffset:I

    .line 1035
    iput p2, p0, Lorg/brotli/dec/State;->cdBrLength:I

    const/4 p1, 0x0

    .line 1036
    iput p1, p0, Lorg/brotli/dec/State;->cdBrCopied:I

    return-void

    .line 1027
    :cond_40
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Invalid backward reference"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static inverseMoveToFrontTransform([BI)V
    .registers 6

    const/16 v0, 0x100

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_6
    if-ge v3, v0, :cond_d

    .line 421
    aput v3, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    :goto_d
    if-ge v2, p1, :cond_20

    .line 424
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    .line 425
    aget v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    if-eqz v0, :cond_1d

    .line 427
    invoke-static {v1, v0}, Lorg/brotli/dec/Decode;->moveToFront([II)V

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_20
    return-void
.end method

.method private static log2floor(I)I
    .registers 4

    const/4 v0, -0x1

    const/16 v1, 0x10

    :goto_3
    if-lez v1, :cond_e

    ushr-int v2, p0, v1

    if-eqz v2, :cond_b

    add-int/2addr v0, v1

    move p0, v2

    :cond_b
    shr-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_e
    add-int/2addr v0, p0

    return v0
.end method

.method private static maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V
    .registers 6

    .line 710
    iget v0, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    .line 711
    iget v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    const/16 v2, 0x4000

    if-le v0, v1, :cond_19

    :goto_8
    shr-int/lit8 v3, v0, 0x1

    if-le v3, v1, :cond_e

    move v0, v3

    goto :goto_8

    .line 717
    :cond_e
    iget v1, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-nez v1, :cond_19

    if-ge v0, v2, :cond_19

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-lt v1, v2, :cond_19

    move v0, v2

    .line 721
    :cond_19
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    if-gt v0, v1, :cond_1e

    return-void

    :cond_1e
    add-int/lit8 v2, v0, 0x25

    .line 725
    new-array v2, v2, [B

    .line 726
    iget-object v3, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    array-length v4, v3

    if-eqz v4, :cond_2b

    const/4 v4, 0x0

    .line 727
    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 729
    :cond_2b
    iput-object v2, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    .line 730
    iput v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    return-void
.end method

.method private static moveToFront([II)V
    .registers 4

    .line 411
    aget v0, p0, p1

    :goto_2
    if-lez p1, :cond_d

    add-int/lit8 v1, p1, -0x1

    .line 413
    aget v1, p0, v1

    aput v1, p0, p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_d
    const/4 p1, 0x0

    .line 415
    aput v0, p0, p1

    return-void
.end method

.method private static readBlockLength([IILorg/brotli/dec/State;)I
    .registers 4

    .line 403
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 404
    invoke-static {p0, p1, p2}, Lorg/brotli/dec/Decode;->readSymbol([IILorg/brotli/dec/State;)I

    move-result p0

    .line 405
    sget-object p1, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_N_BITS:[I

    aget p1, p1, p0

    .line 406
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 407
    sget-object v0, Lorg/brotli/dec/Decode;->BLOCK_LENGTH_OFFSET:[I

    aget p0, v0, p0

    invoke-static {p2, p1}, Lorg/brotli/dec/BitReader;->readBits(Lorg/brotli/dec/State;I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static readComplexHuffmanCode(II[IILorg/brotli/dec/State;)I
    .registers 15

    .line 572
    new-array v0, p0, [I

    const/16 v1, 0x12

    new-array v2, v1, [I

    const/16 v3, 0x20

    const/4 v4, 0x0

    move v5, v3

    :goto_a
    if-ge p1, v1, :cond_36

    if-lez v5, :cond_36

    .line 577
    sget-object v6, Lorg/brotli/dec/Decode;->CODE_LENGTH_CODE_ORDER:[I

    aget v6, v6, p1

    .line 578
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 579
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    .line 581
    iget v8, p4, Lorg/brotli/dec/State;->bitOffset:I

    sget-object v9, Lorg/brotli/dec/Decode;->FIXED_TABLE:[I

    aget v7, v9, v7

    shr-int/lit8 v9, v7, 0x10

    add-int/2addr v8, v9

    iput v8, p4, Lorg/brotli/dec/State;->bitOffset:I

    const v8, 0xffff

    and-int/2addr v7, v8

    .line 583
    aput v7, v2, v6

    if-eqz v7, :cond_33

    shr-int v6, v3, v7

    sub-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    :cond_33
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_36
    if-eqz v5, :cond_44

    const/4 p1, 0x1

    if-ne v4, p1, :cond_3c

    goto :goto_44

    .line 590
    :cond_3c
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Corrupted Huffman code histogram"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 593
    :cond_44
    :goto_44
    invoke-static {v2, p0, v0, p4}, Lorg/brotli/dec/Decode;->readHuffmanCodeLengths([II[ILorg/brotli/dec/State;)V

    const/16 p1, 0x8

    .line 595
    invoke-static {p2, p3, p1, v0, p0}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    move-result p0

    return p0
.end method

.method private static readHuffmanCode(II[IILorg/brotli/dec/State;)I
    .registers 7

    .line 606
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 607
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    const/4 v0, 0x2

    .line 608
    invoke-static {p4, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 610
    invoke-static {p0, p1, p2, p3, p4}, Lorg/brotli/dec/Decode;->readSimpleHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result p0

    return p0

    .line 612
    :cond_13
    invoke-static {p1, v0, p2, p3, p4}, Lorg/brotli/dec/Decode;->readComplexHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result p0

    return p0
.end method

.method private static readHuffmanCodeLengths([II[ILorg/brotli/dec/State;)V
    .registers 14

    const/16 v0, 0x21

    new-array v0, v0, [I

    const/16 v1, 0x20

    const/4 v2, 0x5

    const/16 v3, 0x12

    .line 441
    invoke-static {v0, v1, v2, p0, v3}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    const p0, 0x8000

    const/4 v1, 0x0

    const/16 v2, 0x8

    move v4, p0

    move v3, v1

    move v5, v3

    move v6, v5

    :goto_16
    if-ge v3, p1, :cond_83

    if-lez v4, :cond_83

    .line 444
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 445
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 446
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v7

    and-int/lit8 v7, v7, 0x1f

    .line 447
    iget v8, p3, Lorg/brotli/dec/State;->bitOffset:I

    aget v7, v0, v7

    shr-int/lit8 v9, v7, 0x10

    add-int/2addr v8, v9

    iput v8, p3, Lorg/brotli/dec/State;->bitOffset:I

    const v8, 0xffff

    and-int/2addr v7, v8

    const/16 v8, 0x10

    if-ge v7, v8, :cond_46

    add-int/lit8 v6, v3, 0x1

    .line 451
    aput v7, p2, v3

    if-eqz v7, :cond_43

    shr-int v2, p0, v7

    sub-int/2addr v4, v2

    move v3, v6

    move v2, v7

    goto :goto_44

    :cond_43
    move v3, v6

    :goto_44
    move v6, v1

    goto :goto_16

    :cond_46
    add-int/lit8 v9, v7, -0xe

    if-ne v7, v8, :cond_4c

    move v7, v2

    goto :goto_4d

    :cond_4c
    move v7, v1

    :goto_4d
    if-eq v5, v7, :cond_51

    move v6, v1

    move v5, v7

    :cond_51
    if-lez v6, :cond_57

    add-int/lit8 v7, v6, -0x2

    shl-int/2addr v7, v9

    goto :goto_58

    :cond_57
    move v7, v6

    .line 471
    :goto_58
    invoke-static {p3}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 472
    invoke-static {p3, v9}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v8

    add-int/lit8 v8, v8, 0x3

    add-int/2addr v7, v8

    sub-int v6, v7, v6

    add-int v8, v3, v6

    if-gt v8, p1, :cond_7b

    move v8, v1

    :goto_69
    if-ge v8, v6, :cond_73

    add-int/lit8 v9, v3, 0x1

    .line 478
    aput v5, p2, v3

    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_69

    :cond_73
    if-eqz v5, :cond_79

    rsub-int/lit8 v8, v5, 0xf

    shl-int/2addr v6, v8

    sub-int/2addr v4, v6

    :cond_79
    move v6, v7

    goto :goto_16

    .line 475
    :cond_7b
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "symbol + repeatDelta > numSymbols"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_83
    if-nez v4, :cond_89

    .line 489
    invoke-static {p2, v3, p1}, Lorg/brotli/dec/Utils;->fillIntsWithZeroes([III)V

    return-void

    .line 486
    :cond_89
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Unused space"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static readMetablockHuffmanCodesAndContextMaps(Lorg/brotli/dec/State;)V
    .registers 11

    .line 823
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    const/4 v2, 0x0

    .line 824
    invoke-static {p0, v2, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->literalBlockLength:I

    .line 825
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    .line 826
    invoke-static {p0, v1, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->commandBlockLength:I

    .line 827
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeVarLenUnsignedByte(Lorg/brotli/dec/State;)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    const/4 v3, 0x2

    .line 828
    invoke-static {p0, v3, v0}, Lorg/brotli/dec/Decode;->readMetablockPartition(Lorg/brotli/dec/State;II)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distanceBlockLength:I

    .line 830
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 831
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 832
    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    const/4 v0, 0x4

    .line 833
    invoke-static {p0, v0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v4

    iget v5, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    shl-int/2addr v4, v5

    iput v4, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    .line 835
    iget v4, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/brotli/dec/State;->contextModes:[B

    move v4, v2

    .line 836
    :goto_47
    iget v5, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    if-ge v4, v5, :cond_66

    add-int/lit8 v6, v4, 0x60

    .line 838
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_51
    if-ge v4, v5, :cond_62

    .line 840
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 841
    iget-object v6, p0, Lorg/brotli/dec/State;->contextModes:[B

    invoke-static {p0, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 843
    :cond_62
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    goto :goto_47

    :cond_66
    shl-int/lit8 v4, v5, 0x6

    .line 847
    new-array v4, v4, [B

    iput-object v4, p0, Lorg/brotli/dec/State;->contextMap:[B

    const/4 v6, 0x6

    shl-int/2addr v5, v6

    .line 848
    invoke-static {v5, v4, p0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/State;)I

    move-result v4

    .line 850
    iput v1, p0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    move v5, v2

    .line 851
    :goto_75
    iget v7, p0, Lorg/brotli/dec/State;->numLiteralBlockTypes:I

    shl-int/2addr v7, v6

    if-ge v5, v7, :cond_88

    .line 852
    iget-object v7, p0, Lorg/brotli/dec/State;->contextMap:[B

    aget-byte v7, v7, v5

    shr-int/lit8 v8, v5, 0x6

    if-eq v7, v8, :cond_85

    .line 853
    iput v2, p0, Lorg/brotli/dec/State;->trivialLiteralContext:I

    goto :goto_88

    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 859
    :cond_88
    :goto_88
    iget v5, p0, Lorg/brotli/dec/State;->numDistanceBlockTypes:I

    shl-int/lit8 v7, v5, 0x2

    new-array v7, v7, [B

    iput-object v7, p0, Lorg/brotli/dec/State;->distContextMap:[B

    shl-int/lit8 v3, v5, 0x2

    .line 860
    invoke-static {v3, v7, p0}, Lorg/brotli/dec/Decode;->decodeContextMap(I[BLorg/brotli/dec/State;)I

    move-result v3

    const/16 v5, 0x100

    .line 863
    invoke-static {v5, v5, v4, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v4

    iput-object v4, p0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    .line 865
    iget v4, p0, Lorg/brotli/dec/State;->numCommandBlockTypes:I

    const/16 v7, 0x2c0

    invoke-static {v7, v7, v4, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v4

    iput-object v4, p0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    .line 867
    iget v4, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v7, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v8, 0x18

    invoke-static {v4, v7, v8}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetSize(III)I

    move-result v4

    .line 870
    iget v7, p0, Lorg/brotli/dec/State;->isLargeWindow:I

    if-ne v7, v1, :cond_cc

    .line 871
    iget v4, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v7, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    const/16 v8, 0x3e

    invoke-static {v4, v7, v8}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetSize(III)I

    move-result v4

    const v7, 0x7ffffffc

    .line 873
    iget v8, p0, Lorg/brotli/dec/State;->distancePostfixBits:I

    iget v9, p0, Lorg/brotli/dec/State;->numDirectDistanceCodes:I

    invoke-static {v7, v8, v9}, Lorg/brotli/dec/Decode;->calculateDistanceAlphabetLimit(III)I

    move-result v7

    goto :goto_cd

    :cond_cc
    move v7, v4

    .line 876
    :goto_cd
    invoke-static {v4, v7, v3, p0}, Lorg/brotli/dec/Decode;->decodeHuffmanTreeGroup(IIILorg/brotli/dec/State;)[I

    move-result-object v3

    iput-object v3, p0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    .line 878
    invoke-static {p0, v7}, Lorg/brotli/dec/Decode;->calculateDistanceLut(Lorg/brotli/dec/State;I)V

    .line 880
    iput v2, p0, Lorg/brotli/dec/State;->contextMapSlice:I

    .line 881
    iput v2, p0, Lorg/brotli/dec/State;->distContextMapSlice:I

    .line 882
    iget-object v3, p0, Lorg/brotli/dec/State;->contextModes:[B

    aget-byte v3, v3, v2

    mul-int/lit16 v3, v3, 0x200

    iput v3, p0, Lorg/brotli/dec/State;->contextLookupOffset1:I

    add-int/2addr v3, v5

    .line 883
    iput v3, p0, Lorg/brotli/dec/State;->contextLookupOffset2:I

    .line 884
    iput v2, p0, Lorg/brotli/dec/State;->literalTreeIdx:I

    .line 885
    iput v2, p0, Lorg/brotli/dec/State;->commandTreeIdx:I

    .line 887
    iget-object p0, p0, Lorg/brotli/dec/State;->rings:[I

    aput v1, p0, v0

    const/4 v0, 0x5

    .line 888
    aput v2, p0, v0

    .line 889
    aput v1, p0, v6

    const/4 v0, 0x7

    .line 890
    aput v2, p0, v0

    const/16 v0, 0x8

    .line 891
    aput v1, p0, v0

    const/16 v0, 0x9

    .line 892
    aput v2, p0, v0

    return-void
.end method

.method private static readMetablockPartition(Lorg/brotli/dec/State;II)I
    .registers 6

    .line 769
    iget-object v0, p0, Lorg/brotli/dec/State;->blockTrees:[I

    mul-int/lit8 p1, p1, 0x2

    aget v1, v0, p1

    const/4 v2, 0x1

    if-gt p2, v2, :cond_14

    add-int/lit8 p0, p1, 0x1

    .line 771
    aput v1, v0, p0

    add-int/lit8 p1, p1, 0x2

    .line 772
    aput v1, v0, p1

    const/high16 p0, 0x10000000

    return p0

    :cond_14
    add-int/lit8 p2, p2, 0x2

    .line 777
    invoke-static {p2, p2, v0, p1, p0}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result p2

    add-int/2addr v1, p2

    .line 779
    iget-object p2, p0, Lorg/brotli/dec/State;->blockTrees:[I

    add-int/lit8 v0, p1, 0x1

    aput v1, p2, v0

    const/16 v2, 0x1a

    .line 782
    invoke-static {v2, v2, p2, v0, p0}, Lorg/brotli/dec/Decode;->readHuffmanCode(II[IILorg/brotli/dec/State;)I

    move-result p2

    add-int/2addr v1, p2

    .line 784
    iget-object p2, p0, Lorg/brotli/dec/State;->blockTrees:[I

    add-int/lit8 p1, p1, 0x2

    aput v1, p2, p1

    .line 786
    invoke-static {p2, v0, p0}, Lorg/brotli/dec/Decode;->readBlockLength([IILorg/brotli/dec/State;)I

    move-result p0

    return p0
.end method

.method private static readNextMetablockHeader(Lorg/brotli/dec/State;)V
    .registers 3

    .line 734
    iget v0, p0, Lorg/brotli/dec/State;->inputEnd:I

    if-eqz v0, :cond_d

    const/16 v0, 0xa

    .line 735
    iput v0, p0, Lorg/brotli/dec/State;->nextRunningState:I

    const/16 v0, 0xc

    .line 736
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    return-void

    :cond_d
    const/4 v0, 0x0

    new-array v1, v0, [I

    .line 740
    iput-object v1, p0, Lorg/brotli/dec/State;->literalTreeGroup:[I

    new-array v1, v0, [I

    .line 741
    iput-object v1, p0, Lorg/brotli/dec/State;->commandTreeGroup:[I

    new-array v0, v0, [I

    .line 742
    iput-object v0, p0, Lorg/brotli/dec/State;->distanceTreeGroup:[I

    .line 744
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->readMoreInput(Lorg/brotli/dec/State;)V

    .line 745
    invoke-static {p0}, Lorg/brotli/dec/Decode;->decodeMetaBlockLength(Lorg/brotli/dec/State;)V

    .line 746
    iget v0, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    if-nez v0, :cond_29

    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-nez v0, :cond_29

    return-void

    .line 749
    :cond_29
    iget v0, p0, Lorg/brotli/dec/State;->isUncompressed:I

    if-nez v0, :cond_36

    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_32

    goto :goto_36

    :cond_32
    const/4 v0, 0x3

    .line 753
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    goto :goto_42

    .line 750
    :cond_36
    :goto_36
    invoke-static {p0}, Lorg/brotli/dec/BitReader;->jumpToByteBoundary(Lorg/brotli/dec/State;)V

    .line 751
    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_3f

    const/4 v0, 0x5

    goto :goto_40

    :cond_3f
    const/4 v0, 0x6

    :goto_40
    iput v0, p0, Lorg/brotli/dec/State;->runningState:I

    .line 756
    :goto_42
    iget v0, p0, Lorg/brotli/dec/State;->isMetadata:I

    if-eqz v0, :cond_47

    return-void

    .line 759
    :cond_47
    iget v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    iget v1, p0, Lorg/brotli/dec/State;->metaBlockLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    const/high16 v1, 0x40000000    # 2.0f

    if-le v0, v1, :cond_54

    .line 761
    iput v1, p0, Lorg/brotli/dec/State;->expectedTotalSize:I

    .line 763
    :cond_54
    iget v0, p0, Lorg/brotli/dec/State;->ringBufferSize:I

    iget v1, p0, Lorg/brotli/dec/State;->maxRingBufferSize:I

    if-ge v0, v1, :cond_5d

    .line 764
    invoke-static {p0}, Lorg/brotli/dec/Decode;->maybeReallocateRingBuffer(Lorg/brotli/dec/State;)V

    :cond_5d
    return-void
.end method

.method private static readSimpleHuffmanCode(II[IILorg/brotli/dec/State;)I
    .registers 14

    .line 508
    new-array v0, p1, [I

    const/4 v1, 0x4

    new-array v2, v1, [I

    const/4 v3, 0x1

    sub-int/2addr p0, v3

    .line 511
    invoke-static {p0}, Lorg/brotli/dec/Decode;->log2floor(I)I

    move-result p0

    add-int/2addr p0, v3

    const/4 v4, 0x2

    .line 513
    invoke-static {p4, v4}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v5

    add-int/2addr v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_14
    if-ge v7, v5, :cond_2c

    .line 515
    invoke-static {p4}, Lorg/brotli/dec/BitReader;->fillBitWindow(Lorg/brotli/dec/State;)V

    .line 516
    invoke-static {p4, p0}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result v8

    if-ge v8, p1, :cond_24

    .line 520
    aput v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_14

    .line 518
    :cond_24
    new-instance p0, Lorg/brotli/dec/BrotliRuntimeException;

    const-string p1, "Can\'t readHuffmanCode"

    invoke-direct {p0, p1}, Lorg/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 522
    :cond_2c
    invoke-static {v2, v5}, Lorg/brotli/dec/Decode;->checkDupes([II)V

    if-ne v5, v1, :cond_36

    .line 526
    invoke-static {p4, v3}, Lorg/brotli/dec/BitReader;->readFewBits(Lorg/brotli/dec/State;I)I

    move-result p0

    add-int/2addr v5, p0

    :cond_36
    if-eq v5, v3, :cond_7b

    if-eq v5, v4, :cond_72

    const/4 p0, 0x3

    if-eq v5, p0, :cond_65

    if-eq v5, v1, :cond_54

    const/4 p4, 0x5

    if-eq v5, p4, :cond_43

    goto :goto_7f

    :cond_43
    aget p4, v2, v6

    .line 553
    aput v3, v0, p4

    aget p4, v2, v3

    .line 554
    aput v4, v0, p4

    aget p4, v2, v4

    .line 555
    aput p0, v0, p4

    aget p4, v2, p0

    .line 556
    aput p0, v0, p4

    goto :goto_7f

    :cond_54
    aget p4, v2, v6

    .line 546
    aput v4, v0, p4

    aget p4, v2, v3

    .line 547
    aput v4, v0, p4

    aget p4, v2, v4

    .line 548
    aput v4, v0, p4

    aget p0, v2, p0

    .line 549
    aput v4, v0, p0

    goto :goto_7f

    :cond_65
    aget p0, v2, v6

    .line 540
    aput v3, v0, p0

    aget p0, v2, v3

    .line 541
    aput v4, v0, p0

    aget p0, v2, v4

    .line 542
    aput v4, v0, p0

    goto :goto_7f

    :cond_72
    aget p0, v2, v6

    .line 535
    aput v3, v0, p0

    aget p0, v2, v3

    .line 536
    aput v3, v0, p0

    goto :goto_7f

    :cond_7b
    aget p0, v2, v6

    .line 531
    aput v3, v0, p0

    :goto_7f
    const/16 p0, 0x8

    .line 564
    invoke-static {p2, p3, p0, v0, p1}, Lorg/brotli/dec/Huffman;->buildHuffmanTable([III[II)I

    move-result p0

    return p0
.end method

.method private static readSymbol([IILorg/brotli/dec/State;)I
    .registers 8

    .line 386
    aget p1, p0, p1

    .line 387
    invoke-static {p2}, Lorg/brotli/dec/BitReader;->peekBits(Lorg/brotli/dec/State;)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    add-int/2addr p1, v1

    .line 389
    aget v1, p0, p1

    shr-int/lit8 v2, v1, 0x10

    const v3, 0xffff

    and-int/2addr v1, v3

    const/16 v4, 0x8

    if-gt v2, v4, :cond_1b

    .line 392
    iget p0, p2, Lorg/brotli/dec/State;->bitOffset:I

    add-int/2addr p0, v2

    iput p0, p2, Lorg/brotli/dec/State;->bitOffset:I

    return v1

    :cond_1b
    add-int/2addr p1, v1

    const/4 v1, 0x1

    shl-int v2, v1, v2

    sub-int/2addr v2, v1

    and-int/2addr v0, v2

    ushr-int/2addr v0, v4

    add-int/2addr p1, v0

    .line 398
    iget v0, p2, Lorg/brotli/dec/State;->bitOffset:I

    aget p0, p0, p1

    shr-int/lit8 p1, p0, 0x10

    add-int/2addr p1, v4

    add-int/2addr v0, p1

    iput v0, p2, Lorg/brotli/dec/State;->bitOffset:I

    and-int/2addr p0, v3

    return p0
.end method

.method private static unpackCommandLookupTable([S)V
    .registers 14

    const/16 v0, 0x18

    new-array v1, v0, [S

    new-array v0, v0, [S

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput-short v3, v0, v2

    move v4, v2

    :goto_b
    const/16 v5, 0x17

    if-ge v4, v5, :cond_2c

    add-int/lit8 v5, v4, 0x1

    .line 172
    aget-short v6, v1, v4

    sget-object v7, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    aget-short v7, v7, v4

    const/4 v8, 0x1

    shl-int v7, v8, v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 174
    aget-short v6, v0, v4

    sget-object v7, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    aget-short v4, v7, v4

    shl-int v4, v8, v4

    add-int/2addr v6, v4

    int-to-short v4, v6

    aput-short v4, v0, v5

    move v4, v5

    goto :goto_b

    :cond_2c
    move v4, v2

    :goto_2d
    const/16 v5, 0x2c0

    if-ge v4, v5, :cond_7f

    ushr-int/lit8 v5, v4, 0x6

    const/4 v6, -0x4

    if-lt v5, v3, :cond_39

    add-int/lit8 v5, v5, -0x2

    move v6, v2

    :cond_39
    const v7, 0x29850

    mul-int/2addr v5, v3

    ushr-int/2addr v7, v5

    const/4 v8, 0x3

    and-int/2addr v7, v8

    shl-int/2addr v7, v8

    ushr-int/lit8 v9, v4, 0x3

    and-int/lit8 v9, v9, 0x7

    or-int/2addr v7, v9

    const v9, 0x26244

    ushr-int v5, v9, v5

    and-int/2addr v5, v8

    shl-int/2addr v5, v8

    and-int/lit8 v9, v4, 0x7

    or-int/2addr v5, v9

    .line 188
    aget-short v9, v0, v5

    const/4 v10, 0x4

    if-le v9, v10, :cond_57

    move v9, v8

    goto :goto_59

    :cond_57
    add-int/lit8 v9, v9, -0x2

    :goto_59
    add-int/2addr v6, v9

    mul-int/lit8 v9, v4, 0x4

    add-int/lit8 v10, v9, 0x0

    .line 192
    sget-object v11, Lorg/brotli/dec/Decode;->INSERT_LENGTH_N_BITS:[S

    aget-short v11, v11, v7

    sget-object v12, Lorg/brotli/dec/Decode;->COPY_LENGTH_N_BITS:[S

    aget-short v12, v12, v5

    shl-int/lit8 v12, v12, 0x8

    or-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p0, v10

    add-int/lit8 v10, v9, 0x1

    .line 194
    aget-short v7, v1, v7

    aput-short v7, p0, v10

    add-int/lit8 v7, v9, 0x2

    .line 195
    aget-short v5, v0, v5

    aput-short v5, p0, v7

    add-int/2addr v9, v8

    int-to-short v5, v6

    .line 196
    aput-short v5, p0, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    :cond_7f
    return-void
.end method

.method private static writeRingBuffer(Lorg/brotli/dec/State;)I
    .registers 7

    .line 920
    iget v0, p0, Lorg/brotli/dec/State;->outputLength:I

    iget v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesReady:I

    iget v2, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz v0, :cond_28

    .line 923
    iget-object v1, p0, Lorg/brotli/dec/State;->ringBuffer:[B

    iget v2, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    iget-object v3, p0, Lorg/brotli/dec/State;->output:[B

    iget v4, p0, Lorg/brotli/dec/State;->outputOffset:I

    iget v5, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 925
    iget v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->outputUsed:I

    .line 926
    iget v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/brotli/dec/State;->ringBufferBytesWritten:I

    .line 929
    :cond_28
    iget v0, p0, Lorg/brotli/dec/State;->outputUsed:I

    iget p0, p0, Lorg/brotli/dec/State;->outputLength:I

    if-ge v0, p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method
