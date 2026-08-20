.class public Lorg/tukaani/xz/SeekableXZInputStream;
.super Lorg/tukaani/xz/SeekableInputStream;
.source "SeekableXZInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private blockCount:I

.field private blockDecoder:Lorg/tukaani/xz/BlockInputStream;

.field private check:Lorg/tukaani/xz/check/Check;

.field private checkTypes:I

.field private final curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private curPos:J

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Lorg/tukaani/xz/SeekableInputStream;

.field private indexMemoryUsage:I

.field private largestBlockSize:J

.field private final memoryLimit:I

.field private final queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

.field private seekNeeded:Z

.field private seekPos:J

.field private final streams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/tukaani/xz/index/IndexDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private final tempBuf:[B

.field private uncompressedSize:J

.field private final verifyCheck:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 76
    const-class v0, Lorg/tukaani/xz/SeekableXZInputStream;

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 215
    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;I)V

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 290
    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 337
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 398
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;IZLorg/tukaani/xz/ArrayCache;)V
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 449
    invoke-direct/range {p0 .. p0}, Lorg/tukaani/xz/SeekableInputStream;-><init>()V

    const/4 v2, 0x0

    .line 98
    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    .line 111
    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    const-wide/16 v8, 0x0

    .line 116
    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    .line 121
    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 126
    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    const/4 v3, 0x0

    .line 154
    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 159
    iput-wide v8, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 170
    iput-boolean v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 176
    iput-boolean v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 181
    iput-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    const/4 v10, 0x1

    new-array v2, v10, [B

    .line 187
    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    move-object/from16 v2, p4

    .line 450
    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    move/from16 v2, p3

    .line 451
    iput-boolean v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    .line 452
    iput-object v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 453
    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 457
    invoke-virtual {v0, v8, v9}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 458
    sget-object v2, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v3, v2

    new-array v3, v3, [B

    .line 459
    invoke-virtual {v11, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 460
    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1a8

    .line 465
    invoke-virtual/range {p1 .. p1}, Lorg/tukaani/xz/SeekableInputStream;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x3

    and-long/2addr v4, v2

    cmp-long v4, v4, v8

    if-nez v4, :cond_1a0

    const/16 v4, 0xc

    new-array v12, v4, [B

    move/from16 v13, p2

    :goto_5c
    move-wide v5, v8

    :goto_5d
    cmp-long v4, v2, v8

    if-lez v4, :cond_15a

    const-wide/16 v14, 0xc

    cmp-long v4, v2, v14

    if-ltz v4, :cond_154

    sub-long v8, v2, v14

    .line 479
    invoke-virtual {v0, v8, v9}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 480
    invoke-virtual {v11, v12}, Ljava/io/DataInputStream;->readFully([B)V

    const/16 v4, 0x8

    aget-byte v4, v12, v4

    if-nez v4, :cond_8e

    const/16 v4, 0x9

    aget-byte v4, v12, v4

    if-nez v4, :cond_8e

    const/16 v4, 0xa

    aget-byte v4, v12, v4

    if-nez v4, :cond_8e

    const/16 v4, 0xb

    aget-byte v4, v12, v4

    if-nez v4, :cond_8e

    const-wide/16 v7, 0x4

    add-long/2addr v5, v7

    sub-long/2addr v2, v7

    const-wide/16 v8, 0x0

    goto :goto_5d

    .line 497
    :cond_8e
    invoke-static {v12}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamFooter([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v7

    .line 498
    iget-wide v2, v7, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    cmp-long v2, v2, v8

    if-gez v2, :cond_14c

    .line 504
    iget v2, v7, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    invoke-static {v2}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v2

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 507
    iget v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    iget v3, v7, Lorg/tukaani/xz/common/StreamFlags;->checkType:I

    shl-int v3, v10, v3

    or-int/2addr v2, v3

    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    .line 510
    iget-wide v2, v7, Lorg/tukaani/xz/common/StreamFlags;->backwardSize:J

    sub-long v2, v8, v2

    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 515
    :try_start_b0
    new-instance v4, Lorg/tukaani/xz/index/IndexDecoder;

    move-object v2, v4

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    move-object v4, v7

    move-object v10, v7

    move v7, v13

    invoke-direct/range {v2 .. v7}, Lorg/tukaani/xz/index/IndexDecoder;-><init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/common/StreamFlags;JI)V
    :try_end_bd
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_b0 .. :try_end_bd} :catch_13d

    .line 527
    iget v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    if-ltz v13, :cond_cd

    .line 529
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getMemoryUsage()I

    move-result v2

    sub-int/2addr v13, v2

    .line 534
    :cond_cd
    iget-wide v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_dd

    .line 535
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getLargestBlockSize()J

    move-result-wide v2

    iput-wide v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    .line 539
    :cond_dd
    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getStreamSize()J

    move-result-wide v2

    sub-long/2addr v2, v14

    cmp-long v4, v8, v2

    if-ltz v4, :cond_135

    sub-long v2, v8, v2

    .line 546
    invoke-virtual {v0, v2, v3}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 549
    invoke-virtual {v11, v12}, Ljava/io/DataInputStream;->readFully([B)V

    .line 550
    invoke-static {v12}, Lorg/tukaani/xz/common/DecoderUtil;->decodeStreamHeader([B)Lorg/tukaani/xz/common/StreamFlags;

    move-result-object v4

    .line 553
    invoke-static {v4, v10}, Lorg/tukaani/xz/common/DecoderUtil;->areStreamFlagsEqual(Lorg/tukaani/xz/common/StreamFlags;Lorg/tukaani/xz/common/StreamFlags;)Z

    move-result v4

    if-eqz v4, :cond_12d

    .line 559
    iget-wide v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getUncompressedSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_125

    .line 564
    iget v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    invoke-virtual/range {p2 .. p2}, Lorg/tukaani/xz/index/IndexDecoder;->getRecordCount()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ltz v4, :cond_11d

    .line 570
    iget-object v4, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v8, v6

    const/4 v10, 0x1

    goto/16 :goto_5c

    .line 566
    :cond_11d
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "XZ file has over 2147483647 Blocks"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 561
    :cond_125
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "XZ file is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_12d
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Stream Footer does not match Stream Header"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 541
    :cond_135
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ Index indicates too big compressed size for the XZ Stream"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_13d
    move-exception v0

    .line 521
    new-instance v2, Lorg/tukaani/xz/MemoryLimitException;

    .line 522
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    iget v1, v1, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v0, v1

    add-int/2addr v13, v1

    invoke-direct {v2, v0, v13}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v2

    .line 499
    :cond_14c
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "Backward Size in XZ Stream Footer is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_154
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {v0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw v0

    .line 579
    :cond_15a
    iput v13, v1, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    .line 584
    iget-object v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/index/IndexDecoder;

    .line 585
    iget-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    :goto_172
    if-ltz v2, :cond_183

    .line 586
    iget-object v3, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/tukaani/xz/index/IndexDecoder;

    .line 587
    invoke-virtual {v3, v0}, Lorg/tukaani/xz/index/IndexDecoder;->setOffsets(Lorg/tukaani/xz/index/IndexDecoder;)V

    add-int/lit8 v2, v2, -0x1

    move-object v0, v3

    goto :goto_172

    .line 595
    :cond_183
    iget-object v0, v1, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/tukaani/xz/index/IndexDecoder;

    .line 596
    new-instance v2, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v2, v0}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    .line 600
    new-instance v2, Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {v2, v0}, Lorg/tukaani/xz/index/BlockInfo;-><init>(Lorg/tukaani/xz/index/IndexDecoder;)V

    iput-object v2, v1, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    return-void

    .line 467
    :cond_1a0
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "XZ file size is not a multiple of 4 bytes"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_1a8
    new-instance v0, Lorg/tukaani/xz/XZFormatException;

    invoke-direct {v0}, Lorg/tukaani/xz/XZFormatException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/tukaani/xz/SeekableInputStream;Lorg/tukaani/xz/ArrayCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 252
    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/SeekableXZInputStream;-><init>(Lorg/tukaani/xz/SeekableInputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private initBlockDecoder()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    :try_start_0
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_a

    .line 1132
    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    const/4 v0, 0x0

    .line 1133
    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    .line 1136
    :cond_a
    new-instance v0, Lorg/tukaani/xz/BlockInputStream;

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-object v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    iget-boolean v4, p0, Lorg/tukaani/xz/SeekableXZInputStream;->verifyCheck:Z

    iget v5, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v6, v1, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    iget-wide v8, v1, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    iget-object v10, p0, Lorg/tukaani/xz/SeekableXZInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lorg/tukaani/xz/BlockInputStream;-><init>(Ljava/io/InputStream;Lorg/tukaani/xz/check/Check;ZIJJLorg/tukaani/xz/ArrayCache;)V

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_22
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_22} :catch_29
    .catch Lorg/tukaani/xz/IndexIndicatorException; {:try_start_0 .. :try_end_22} :catch_23

    return-void

    .line 1149
    :catch_23
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :catch_29
    move-exception v0

    .line 1144
    new-instance v1, Lorg/tukaani/xz/MemoryLimitException;

    .line 1145
    invoke-virtual {v0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v0

    iget v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    add-int/2addr v0, v2

    iget p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->memoryLimit:I

    add-int/2addr p0, v2

    invoke-direct {v1, v0, p0}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw v1
.end method

.method private locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V
    .registers 6

    if-ltz p2, :cond_21

    .line 1104
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p2, v0, :cond_21

    .line 1109
    iget v0, p1, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    if-ne v0, p2, :cond_b

    return-void

    :cond_b
    const/4 v0, 0x0

    .line 1115
    :goto_c
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1116
    invoke-virtual {v1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->hasRecord(I)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1117
    invoke-virtual {v1, p1, p2}, Lorg/tukaani/xz/index/IndexDecoder;->setBlockInfo(Lorg/tukaani/xz/index/BlockInfo;I)V

    return-void

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 1105
    :cond_21
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid XZ Block number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_22

    .line 1077
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_22

    const/4 v0, 0x0

    .line 1084
    :goto_d
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/tukaani/xz/index/IndexDecoder;

    .line 1085
    invoke-virtual {v1, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->hasUncompressedOffset(J)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1090
    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/index/IndexDecoder;->locateBlock(Lorg/tukaani/xz/index/BlockInfo;J)V

    return-void

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 1078
    :cond_22
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid uncompressed position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private seek()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_19

    .line 1007
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1008
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->setNext()V

    .line 1009
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    return-void

    .line 1013
    :cond_15
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    :cond_19
    const/4 v0, 0x0

    .line 1016
    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    .line 1019
    iget-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    cmp-long v3, v1, v3

    if-ltz v3, :cond_34

    .line 1020
    iput-wide v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1022
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-eqz v0, :cond_30

    .line 1023
    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    const/4 v0, 0x0

    .line 1024
    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    :cond_30
    const/4 v0, 0x1

    .line 1027
    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    return-void

    .line 1031
    :cond_34
    iput-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    .line 1034
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, v1, v2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 1046
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v3, v2, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_4b

    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_67

    .line 1048
    :cond_4b
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    iget-wide v1, v2, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    invoke-virtual {v0, v1, v2}, Lorg/tukaani/xz/SeekableInputStream;->seek(J)V

    .line 1052
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {v0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result v0

    invoke-static {v0}, Lorg/tukaani/xz/check/Check;->getInstance(I)Lorg/tukaani/xz/check/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->check:Lorg/tukaani/xz/check/Check;

    .line 1055
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->initBlockDecoder()V

    .line 1056
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide v0, v0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    .line 1061
    :cond_67
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iget-wide v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_85

    sub-long/2addr v0, v2

    .line 1066
    iget-object v2, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v2, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-nez v0, :cond_7f

    .line 1069
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    goto :goto_85

    .line 1067
    :cond_7f
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p0}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p0

    :cond_85
    :goto_85
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1d

    .line 867
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v0, :cond_1c

    .line 870
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-nez v0, :cond_1a

    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez p0, :cond_15

    goto :goto_1a

    .line 873
    :cond_15
    invoke-virtual {p0}, Lorg/tukaani/xz/BlockInputStream;->available()I

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0

    .line 868
    :cond_1c
    throw v0

    .line 865
    :cond_1d
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 885
    invoke-virtual {p0, v0}, Lorg/tukaani/xz/SeekableXZInputStream;->close(Z)V

    return-void
.end method

.method public close(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 912
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_1c

    .line 913
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 914
    invoke-virtual {v0}, Lorg/tukaani/xz/BlockInputStream;->close()V

    .line 915
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    :cond_e
    if-eqz p1, :cond_1a

    .line 920
    :try_start_10
    iget-object p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    .line 922
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    .line 923
    throw p1

    .line 922
    :cond_1a
    :goto_1a
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    :cond_1c
    return-void
.end method

.method public getBlockCheckType(I)I
    .registers 3

    .line 729
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 730
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-virtual {p0}, Lorg/tukaani/xz/index/BlockInfo;->getCheckType()I

    move-result p0

    return p0
.end method

.method public getBlockCompPos(I)J
    .registers 3

    .line 697
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 698
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide p0, p0, Lorg/tukaani/xz/index/BlockInfo;->compressedOffset:J

    return-wide p0
.end method

.method public getBlockCompSize(I)J
    .registers 4

    .line 713
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 714
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide p0, p0, Lorg/tukaani/xz/index/BlockInfo;->unpaddedSize:J

    const-wide/16 v0, 0x3

    add-long/2addr p0, v0

    const-wide/16 v0, -0x4

    and-long/2addr p0, v0

    return-wide p0
.end method

.method public getBlockCount()I
    .registers 1

    .line 654
    iget p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    return p0
.end method

.method public getBlockNumber(J)I
    .registers 4

    .line 744
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1, p2}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByPos(Lorg/tukaani/xz/index/BlockInfo;J)V

    .line 745
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget p0, p0, Lorg/tukaani/xz/index/BlockInfo;->blockNumber:I

    return p0
.end method

.method public getBlockPos(I)J
    .registers 3

    .line 667
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 668
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide p0, p0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedOffset:J

    return-wide p0
.end method

.method public getBlockSize(I)J
    .registers 3

    .line 681
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    invoke-direct {p0, v0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->locateBlockByNumber(Lorg/tukaani/xz/index/BlockInfo;I)V

    .line 682
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->queriedBlockInfo:Lorg/tukaani/xz/index/BlockInfo;

    iget-wide p0, p0, Lorg/tukaani/xz/index/BlockInfo;->uncompressedSize:J

    return-wide p0
.end method

.method public getCheckTypes()I
    .registers 1

    .line 614
    iget p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->checkTypes:I

    return p0
.end method

.method public getIndexMemoryUsage()I
    .registers 1

    .line 624
    iget p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->indexMemoryUsage:I

    return p0
.end method

.method public getLargestBlockSize()J
    .registers 3

    .line 636
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->largestBlockSize:J

    return-wide v0
.end method

.method public getStreamCount()I
    .registers 1

    .line 645
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->streams:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public length()J
    .registers 3

    .line 932
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->uncompressedSize:J

    return-wide v0
.end method

.method public position()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 941
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_e

    .line 944
    iget-boolean v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    :goto_d
    return-wide v0

    .line 942
    :cond_e
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string v0, "Stream closed"

    invoke-direct {p0, v0}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 763
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/tukaani/xz/SeekableXZInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->tempBuf:[B

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

    if-ltz p2, :cond_63

    if-ltz p3, :cond_63

    add-int v0, p2, p3

    if-ltz v0, :cond_63

    .line 798
    array-length v1, p1

    if-gt v0, v1, :cond_63

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 804
    :cond_f
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v1, :cond_5b

    .line 807
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_5a

    .line 813
    :try_start_17
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    if-eqz v1, :cond_1e

    .line 814
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    .line 816
    :cond_1e
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_24

    return v2

    :cond_24
    :goto_24
    if-lez p3, :cond_58

    .line 820
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    if-nez v1, :cond_32

    .line 821
    invoke-direct {p0}, Lorg/tukaani/xz/SeekableXZInputStream;->seek()V

    .line 822
    iget-boolean v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->endReached:Z

    if-eqz v1, :cond_32

    goto :goto_58

    .line 826
    :cond_32
    iget-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;

    invoke-virtual {v1, p1, p2, p3}, Lorg/tukaani/xz/BlockInputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_44

    .line 829
    iget-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/tukaani/xz/SeekableXZInputStream;->curPos:J

    add-int/2addr v0, v1

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_24

    :cond_44
    if-ne v1, v2, :cond_24

    const/4 v1, 0x0

    .line 834
    iput-object v1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockDecoder:Lorg/tukaani/xz/BlockInputStream;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_49} :catch_4a

    goto :goto_24

    :catch_4a
    move-exception p1

    .line 841
    instance-of p2, p1, Ljava/io/EOFException;

    if-eqz p2, :cond_54

    .line 842
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    .line 844
    :cond_54
    iput-object p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->exception:Ljava/io/IOException;

    if-eqz v0, :cond_59

    :cond_58
    :goto_58
    return v0

    .line 846
    :cond_59
    throw p1

    .line 808
    :cond_5a
    throw v1

    .line 805
    :cond_5b
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 799
    :cond_63
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public seek(J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_27

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_10

    .line 970
    iput-wide p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    const/4 p1, 0x1

    .line 971
    iput-boolean p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    return-void

    .line 968
    :cond_10
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Negative seek position: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 965
    :cond_27
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public seekToBlock(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 985
    iget-object v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->in:Lorg/tukaani/xz/SeekableInputStream;

    if-eqz v0, :cond_2b

    if-ltz p1, :cond_14

    .line 988
    iget v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->blockCount:I

    if-ge p1, v0, :cond_14

    .line 994
    invoke-virtual {p0, p1}, Lorg/tukaani/xz/SeekableXZInputStream;->getBlockPos(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekPos:J

    const/4 p1, 0x1

    .line 995
    iput-boolean p1, p0, Lorg/tukaani/xz/SeekableXZInputStream;->seekNeeded:Z

    return-void

    .line 989
    :cond_14
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid XZ Block number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 986
    :cond_2b
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
