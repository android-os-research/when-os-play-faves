.class public Lorg/tukaani/xz/LZMAInputStream;
.super Ljava/io/InputStream;
.source "LZMAInputStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final DICT_SIZE_MAX:I = 0x7ffffff0


# instance fields
.field private arrayCache:Lorg/tukaani/xz/ArrayCache;

.field private endReached:Z

.field private exception:Ljava/io/IOException;

.field private in:Ljava/io/InputStream;

.field private lz:Lorg/tukaani/xz/lz/LZDecoder;

.field private lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

.field private rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

.field private remainingSize:J

.field private final tempBuf:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 37
    const-class v0, Lorg/tukaani/xz/LZMAInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 183
    invoke-direct {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 57
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 296
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 299
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    move v2, v0

    move v7, v2

    :goto_19
    const/4 v3, 0x4

    if-ge v2, v3, :cond_27

    .line 304
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    mul-int/lit8 v4, v2, 0x8

    shl-int/2addr v3, v4

    or-int/2addr v7, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_27
    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_2a
    const/16 v2, 0x8

    if-ge v0, v2, :cond_3a

    .line 312
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    int-to-long v2, v2

    mul-int/lit8 v8, v0, 0x8

    shl-long/2addr v2, v8

    or-long/2addr v4, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 315
    :cond_3a
    invoke-static {v7, v6}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(IB)I

    move-result v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4a

    if-gt v0, p2, :cond_44

    goto :goto_4a

    .line 317
    :cond_44
    new-instance p0, Lorg/tukaani/xz/MemoryLimitException;

    invoke-direct {p0, v0, p2}, Lorg/tukaani/xz/MemoryLimitException;-><init>(II)V

    throw p0

    :cond_4a
    :goto_4a
    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v9, p3

    .line 319
    invoke-direct/range {v2 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 57
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 371
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    .line 370
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[B)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 57
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 410
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 409
    invoke-direct/range {v1 .. v8}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 456
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 57
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 457
    invoke-direct/range {p0 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[B)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    .line 496
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v1, 0x0

    .line 55
    iput-boolean v1, v0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v1, 0x1

    new-array v1, v1, [B

    .line 57
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x0

    .line 65
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 498
    invoke-static {}, Lorg/tukaani/xz/ArrayCache;->getDefaultCache()Lorg/tukaani/xz/ArrayCache;

    move-result-object v9

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 497
    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 57
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 546
    invoke-direct/range {p0 .. p9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/tukaani/xz/ArrayCache;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 219
    invoke-direct {p0, p1, v0, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;ILorg/tukaani/xz/ArrayCache;)V

    return-void
.end method

.method private static getDictSize(I)I
    .registers 2

    if-ltz p0, :cond_11

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_11

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_c

    move p0, v0

    :cond_c
    add-int/lit8 p0, p0, 0xf

    and-int/lit8 p0, p0, -0x10

    return p0

    .line 138
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "LZMA dictionary is too big for this implementation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMemoryUsage(IB)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/tukaani/xz/UnsupportedOptionsException;,
            Lorg/tukaani/xz/CorruptedInputException;
        }
    .end annotation

    if-ltz p0, :cond_21

    const v0, 0x7ffffff0

    if-gt p0, v0, :cond_21

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xe0

    if-gt p1, v0, :cond_19

    .line 98
    rem-int/lit8 p1, p1, 0x2d

    .line 99
    div-int/lit8 v0, p1, 0x9

    mul-int/lit8 v1, v0, 0x9

    sub-int/2addr p1, v1

    .line 102
    invoke-static {p0, p1, v0}, Lorg/tukaani/xz/LZMAInputStream;->getMemoryUsage(III)I

    move-result p0

    return p0

    .line 96
    :cond_19
    new-instance p0, Lorg/tukaani/xz/CorruptedInputException;

    const-string p1, "Invalid LZMA properties byte"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_21
    new-instance p0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string p1, "LZMA dictionary is too big for this implementation"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMemoryUsage(III)I
    .registers 4

    if-ltz p1, :cond_1c

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1c

    if-ltz p2, :cond_1c

    const/4 v0, 0x4

    if-gt p2, v0, :cond_1c

    .line 132
    invoke-static {p0}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result p0

    div-int/lit16 p0, p0, 0x400

    add-int/lit8 p0, p0, 0xa

    const/16 v0, 0x600

    add-int/2addr p1, p2

    shl-int p1, v0, p1

    div-int/lit16 p1, p1, 0x400

    add-int/2addr p0, p1

    return p0

    .line 123
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid lc or lp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initialize(Ljava/io/InputStream;JBI[BLorg/tukaani/xz/ArrayCache;)V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v7, p5

    const-wide/16 v0, -0x1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_3e

    move v0, p4

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xe0

    if-gt v0, v1, :cond_36

    .line 566
    div-int/lit8 v6, v0, 0x2d

    mul-int/lit8 v1, v6, 0x9

    mul-int/lit8 v1, v1, 0x5

    sub-int/2addr v0, v1

    .line 568
    div-int/lit8 v5, v0, 0x9

    mul-int/lit8 v1, v5, 0x9

    sub-int v4, v0, v1

    if-ltz v7, :cond_2e

    const v0, 0x7ffffff0

    if-gt v7, v0, :cond_2e

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 577
    invoke-direct/range {v0 .. v9}, Lorg/tukaani/xz/LZMAInputStream;->initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V

    return-void

    .line 574
    :cond_2e
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "LZMA dictionary is too big for this implementation"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :cond_36
    new-instance v0, Lorg/tukaani/xz/CorruptedInputException;

    const-string v1, "Invalid LZMA properties byte"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/CorruptedInputException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 557
    :cond_3e
    new-instance v0, Lorg/tukaani/xz/UnsupportedOptionsException;

    const-string v1, "Uncompressed size is too big"

    invoke-direct {v0, v1}, Lorg/tukaani/xz/UnsupportedOptionsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initialize(Ljava/io/InputStream;JIIII[BLorg/tukaani/xz/ArrayCache;)V
    .registers 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v4, p9

    const-wide/16 v5, -0x1

    cmp-long v5, v2, v5

    if-ltz v5, :cond_5f

    if-ltz v7, :cond_5f

    const/16 v5, 0x8

    if-gt v7, v5, :cond_5f

    if-ltz v8, :cond_5f

    const/4 v5, 0x4

    if-gt v8, v5, :cond_5f

    if-ltz v9, :cond_5f

    if-gt v9, v5, :cond_5f

    .line 592
    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 593
    iput-object v4, v0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    .line 597
    invoke-static/range {p7 .. p7}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    const-wide/16 v10, 0x0

    cmp-long v6, v2, v10

    if-ltz v6, :cond_38

    int-to-long v10, v5

    cmp-long v6, v10, v2

    if-lez v6, :cond_38

    long-to-int v5, v2

    .line 599
    invoke-static {v5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    .line 601
    :cond_38
    new-instance v6, Lorg/tukaani/xz/lz/LZDecoder;

    invoke-static {v5}, Lorg/tukaani/xz/LZMAInputStream;->getDictSize(I)I

    move-result v5

    move-object/from16 v10, p8

    invoke-direct {v6, v5, v10, v4}, Lorg/tukaani/xz/lz/LZDecoder;-><init>(I[BLorg/tukaani/xz/ArrayCache;)V

    iput-object v6, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    .line 602
    new-instance v6, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-direct {v6, p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, v0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    .line 603
    new-instance v1, Lorg/tukaani/xz/lzma/LZMADecoder;

    iget-object v5, v0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    move-object v4, v1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v9}, Lorg/tukaani/xz/lzma/LZMADecoder;-><init>(Lorg/tukaani/xz/lz/LZDecoder;Lorg/tukaani/xz/rangecoder/RangeDecoder;III)V

    iput-object v1, v0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    .line 605
    iput-wide v2, v0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    return-void

    .line 590
    :cond_5f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private putArraysToCache()V
    .registers 3

    .line 740
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    if-eqz v0, :cond_c

    .line 741
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->arrayCache:Lorg/tukaani/xz/ArrayCache;

    invoke-virtual {v0, v1}, Lorg/tukaani/xz/lz/LZDecoder;->putArraysToCache(Lorg/tukaani/xz/ArrayCache;)V

    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    :cond_c
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 753
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_14

    .line 754
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    const/4 v0, 0x0

    .line 757
    :try_start_8
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    .line 759
    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    goto :goto_14

    :catchall_10
    move-exception v1

    iput-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    .line 760
    throw v1

    :cond_14
    :goto_14
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/tukaani/xz/LZMAInputStream;->read([BII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_c

    goto :goto_12

    :cond_c
    iget-object p0, p0, Lorg/tukaani/xz/LZMAInputStream;->tempBuf:[B

    aget-byte p0, p0, v1

    and-int/lit16 v2, p0, 0xff

    :goto_12
    return v2
.end method

.method public read([BII)I
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_9d

    if-ltz p3, :cond_9d

    add-int v0, p2, p3

    if-ltz v0, :cond_9d

    .line 655
    array-length v1, p1

    if-gt v0, v1, :cond_9d

    const/4 v0, 0x0

    if-nez p3, :cond_f

    return v0

    .line 661
    :cond_f
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_95

    .line 664
    iget-object v1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    if-nez v1, :cond_94

    .line 667
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    return v2

    :cond_1d
    if-lez p3, :cond_93

    .line 678
    :try_start_1f
    iget-wide v3, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_2e

    int-to-long v7, p3

    cmp-long v1, v3, v7

    if-gez v1, :cond_2e

    long-to-int v1, v3

    goto :goto_2f

    :cond_2e
    move v1, p3

    .line 681
    :goto_2f
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, v1}, Lorg/tukaani/xz/lz/LZDecoder;->setLimit(I)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_34} :catch_8f

    const/4 v1, 0x1

    .line 685
    :try_start_35
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v3}, Lorg/tukaani/xz/lzma/LZMADecoder;->decode()V
    :try_end_3a
    .catch Lorg/tukaani/xz/CorruptedInputException; {:try_start_35 .. :try_end_3a} :catch_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_8f

    goto :goto_53

    :catch_3b
    move-exception v3

    .line 691
    :try_start_3c
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    const-wide/16 v9, -0x1

    cmp-long v4, v7, v9

    if-nez v4, :cond_8e

    iget-object v4, p0, Lorg/tukaani/xz/LZMAInputStream;->lzma:Lorg/tukaani/xz/lzma/LZMADecoder;

    invoke-virtual {v4}, Lorg/tukaani/xz/lzma/LZMADecoder;->endMarkerDetected()Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 694
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 700
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {v3}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->normalize()V

    .line 704
    :goto_53
    iget-object v3, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {v3, p1, p2}, Lorg/tukaani/xz/lz/LZDecoder;->flush([BI)I

    move-result v3

    add-int/2addr p2, v3

    sub-int/2addr p3, v3

    add-int/2addr v0, v3

    .line 709
    iget-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v4, v7, v5

    if-ltz v4, :cond_6c

    int-to-long v3, v3

    sub-long/2addr v7, v3

    .line 711
    iput-wide v7, p0, Lorg/tukaani/xz/LZMAInputStream;->remainingSize:J

    cmp-long v3, v7, v5

    if-nez v3, :cond_6c

    .line 715
    iput-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    .line 718
    :cond_6c
    iget-boolean v1, p0, Lorg/tukaani/xz/LZMAInputStream;->endReached:Z

    if-eqz v1, :cond_1d

    .line 723
    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->rc:Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;

    invoke-virtual {p1}, Lorg/tukaani/xz/rangecoder/RangeDecoderFromStream;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_88

    iget-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->lz:Lorg/tukaani/xz/lz/LZDecoder;

    invoke-virtual {p1}, Lorg/tukaani/xz/lz/LZDecoder;->hasPending()Z

    move-result p1

    if-nez p1, :cond_88

    .line 726
    invoke-direct {p0}, Lorg/tukaani/xz/LZMAInputStream;->putArraysToCache()V

    if-nez v0, :cond_86

    goto :goto_87

    :cond_86
    move v2, v0

    :goto_87
    return v2

    .line 724
    :cond_88
    new-instance p1, Lorg/tukaani/xz/CorruptedInputException;

    invoke-direct {p1}, Lorg/tukaani/xz/CorruptedInputException;-><init>()V

    throw p1

    .line 692
    :cond_8e
    throw v3
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_8f} :catch_8f

    :catch_8f
    move-exception p1

    .line 734
    iput-object p1, p0, Lorg/tukaani/xz/LZMAInputStream;->exception:Ljava/io/IOException;

    .line 735
    throw p1

    :cond_93
    return v0

    .line 665
    :cond_94
    throw v1

    .line 662
    :cond_95
    new-instance p0, Lorg/tukaani/xz/XZIOException;

    const-string p1, "Stream closed"

    invoke-direct {p0, p1}, Lorg/tukaani/xz/XZIOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 656
    :cond_9d
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
