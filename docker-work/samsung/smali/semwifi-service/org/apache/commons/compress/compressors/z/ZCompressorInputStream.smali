.class public Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "ZCompressorInputStream.java"


# static fields
.field private static final BLOCK_MODE_MASK:I = 0x80

.field private static final MAGIC_1:I = 0x1f

.field private static final MAGIC_2:I = 0x9d

.field private static final MAX_CODE_SIZE_MASK:I = 0x1f


# instance fields
.field private final blockMode:Z

.field private final maxCodeSize:I

.field private totalCodesRead:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 60
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const-wide/16 v0, 0x0

    .line 39
    iput-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    .line 44
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int p1, v1

    .line 45
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v1, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v1

    long-to-int v1, v1

    .line 46
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {v2, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v2

    long-to-int v0, v2

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_44

    const/16 p1, 0x9d

    if-ne v1, p1, :cond_44

    if-ltz v0, :cond_44

    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_30

    const/4 p1, 0x1

    goto :goto_31

    :cond_30
    const/4 p1, 0x0

    .line 50
    :goto_31
    iput-boolean p1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    and-int/2addr v0, v2

    .line 51
    iput v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-eqz p1, :cond_3d

    const/16 p1, 0x9

    .line 53
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setClearCode(I)V

    .line 55
    :cond_3d
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(II)V

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    return-void

    .line 48
    :cond_44
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Input is not in .Z format"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private clearEntries()V
    .registers 2

    .line 64
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    add-int/lit16 v0, v0, 0x100

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    return-void
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-le p1, v2, :cond_12

    .line 168
    aget-byte p1, p0, v1

    const/16 v2, 0x1f

    if-ne p1, v2, :cond_12

    aget-byte p0, p0, v0

    const/16 p1, -0x63

    if-ne p0, p1, :cond_12

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    return v0
.end method

.method private reAlignReading()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-wide v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v2, 0x8

    rem-long/2addr v0, v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_e

    move-wide v0, v3

    :cond_e
    :goto_e
    cmp-long v2, v3, v0

    if-gez v2, :cond_19

    .line 92
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_e

    .line 94
    :cond_19
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->clearBitCache()V

    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCodeSize()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    .line 106
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IBI)I

    move-result p1

    .line 107
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getTableSize()I

    move-result p2

    if-ne p2, v0, :cond_1f

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCodeSize()I

    move-result p2

    iget v0, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->maxCodeSize:I

    if-ge p2, v0, :cond_1f

    .line 108
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->incrementCodeSize()V

    :cond_1f
    return p1
.end method

.method protected decompressNextSymbol()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 137
    :cond_8
    iget-boolean v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->blockMode:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result v1

    if-ne v0, v1, :cond_20

    .line 138
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->clearEntries()V

    .line 139
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->reAlignReading()V

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->resetCodeSize()V

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->resetPreviousCode()V

    return v2

    .line 145
    :cond_20
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getTableSize()I

    move-result v1

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2c

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addRepeatOfPreviousCode()I

    move v2, v3

    goto :goto_32

    .line 148
    :cond_2c
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getTableSize()I

    move-result v1

    if-gt v0, v1, :cond_37

    .line 151
    :goto_32
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->expandCodeToOutputStack(IZ)I

    move-result p0

    return p0

    .line 149
    :cond_37
    new-instance v1, Ljava/io/IOException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCodeSize()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v3

    const-string p0, "Invalid %d bit code 0x%x"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected readNextCode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-super {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    if-ltz v0, :cond_d

    .line 77
    iget-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/compressors/z/ZCompressorInputStream;->totalCodesRead:J

    :cond_d
    return v0
.end method
