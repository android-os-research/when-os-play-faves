.class public abstract Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "LZWInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field protected static final DEFAULT_CODE_SIZE:I = 0x9

.field protected static final UNUSED_PREFIX:I = -0x1


# instance fields
.field private characters:[B

.field private clearCode:I

.field private codeSize:I

.field protected final in:Lorg/apache/commons/compress/utils/BitInputStream;

.field private final oneByte:[B

.field private outputStack:[B

.field private outputStackLocation:I

.field private prefixes:[I

.field private previousCode:I

.field private previousCodeFirstChar:B

.field private tableSize:I


# direct methods
.method protected constructor <init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V
    .registers 5

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 42
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    const/16 v1, 0x9

    .line 46
    iput v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    .line 48
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 56
    new-instance v0, Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/utils/BitInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    return-void
.end method

.method private readFromStack([BII)I
    .registers 6

    .line 229
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    sub-int/2addr v0, v1

    if-lez v0, :cond_19

    .line 231
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 232
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    iget p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    return p3

    :cond_19
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract addEntry(IB)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected addEntry(IBI)I
    .registers 5

    .line 186
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    if-ge v0, p3, :cond_11

    .line 187
    iget-object p3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p1, p3, v0

    .line 188
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aput-byte p2, p1, v0

    add-int/lit8 p1, v0, 0x1

    .line 189
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return v0

    :cond_11
    const/4 p0, -0x1

    return p0
.end method

.method protected addRepeatOfPreviousCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 204
    iget-byte v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    move-result p0

    return p0

    .line 202
    :cond_c
    new-instance p0, Ljava/io/IOException;

    const-string v0, "The first code can\'t be a reference to its preceding code"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->close()V

    return-void
.end method

.method protected abstract decompressNextSymbol()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected expandCodeToOutputStack(IZ)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p1

    :goto_1
    if-ltz v0, :cond_16

    .line 218
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    iget-object v3, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    aget-byte v3, v3, v0

    aput-byte v3, v1, v2

    .line 217
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget v0, v1, v0

    goto :goto_1

    .line 220
    :cond_16
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    if-nez p2, :cond_26

    .line 221
    iget-object p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget v1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte p2, p2, v1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IB)I

    .line 223
    :cond_26
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    .line 224
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    iget p2, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    aget-byte p1, p1, p2

    iput-byte p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCodeFirstChar:B

    return p2
.end method

.method protected getClearCode()I
    .registers 1

    .line 272
    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return p0
.end method

.method protected getCodeSize()I
    .registers 1

    .line 240
    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return p0
.end method

.method public getCompressedCount()J
    .registers 3

    .line 96
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/BitInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getPrefix(I)I
    .registers 2

    .line 260
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aget p0, p0, p1

    return p0
.end method

.method protected getPrefixesLength()I
    .registers 1

    .line 268
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    array-length p0, p0

    return p0
.end method

.method protected getTableSize()I
    .registers 1

    .line 276
    iget p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return p0
.end method

.method protected incrementCodeSize()V
    .registers 2

    .line 252
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return-void
.end method

.method protected initializeTables(I)V
    .registers 4

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 154
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    .line 155
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    .line 156
    new-array v0, p1, [B

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStack:[B

    .line 157
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->outputStackLocation:I

    const/4 p1, 0x0

    :goto_12
    const/16 v0, 0x100

    if-ge p1, v0, :cond_23

    .line 160
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    const/4 v1, -0x1

    aput v1, v0, p1

    .line 161
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->characters:[B

    int-to-byte v1, p1

    aput-byte v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_12

    :cond_23
    return-void
.end method

.method protected initializeTables(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/compress/MemoryLimitException;
        }
    .end annotation

    const/4 v0, -0x1

    if-le p2, v0, :cond_18

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x6

    mul-long/2addr v0, v2

    const/16 v2, 0xa

    shr-long/2addr v0, v2

    int-to-long v2, p2

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    goto :goto_18

    .line 142
    :cond_12
    new-instance p0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw p0

    .line 145
    :cond_18
    :goto_18
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(I)V

    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-gez v0, :cond_9

    return v0

    .line 70
    :cond_9
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->oneByte:[B

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v0

    :goto_4
    sub-int v1, p3, v0

    if-lez v1, :cond_1d

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->decompressNextSymbol()I

    move-result v2

    if-gez v2, :cond_15

    if-lez v0, :cond_14

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0

    :cond_14
    return v2

    :cond_15
    add-int v2, p2, v0

    .line 85
    invoke-direct {p0, p1, v2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readFromStack([BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_4

    .line 87
    :cond_1d
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method protected readNextCode()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_e

    .line 174
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->in:Lorg/apache/commons/compress/utils/BitInputStream;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/utils/BitInputStream;->readBits(I)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    .line 172
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "code size must not be bigger than 31"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected resetCodeSize()V
    .registers 2

    const/16 v0, 0x9

    .line 244
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setCodeSize(I)V

    return-void
.end method

.method protected resetPreviousCode()V
    .registers 2

    const/4 v0, -0x1

    .line 256
    iput v0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->previousCode:I

    return-void
.end method

.method protected setClearCode(I)V
    .registers 3

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    shl-int p1, v0, p1

    .line 121
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->clearCode:I

    return-void
.end method

.method protected setCodeSize(I)V
    .registers 2

    .line 248
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->codeSize:I

    return-void
.end method

.method protected setPrefix(II)V
    .registers 3

    .line 264
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->prefixes:[I

    aput p2, p0, p1

    return-void
.end method

.method protected setTableSize(I)V
    .registers 2

    .line 280
    iput p1, p0, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->tableSize:I

    return-void
.end method
