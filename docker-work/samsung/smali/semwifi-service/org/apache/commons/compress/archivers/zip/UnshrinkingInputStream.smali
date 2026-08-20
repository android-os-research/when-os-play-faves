.class Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;
.super Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;
.source "UnshrinkingInputStream.java"


# static fields
.field private static final MAX_CODE_SIZE:I = 0xd

.field private static final MAX_TABLE_SIZE:I = 0x2000


# instance fields
.field private final isUsed:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;-><init>(Ljava/io/InputStream;Ljava/nio/ByteOrder;)V

    const/16 p1, 0x9

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setClearCode(I)V

    const/16 p1, 0xd

    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->initializeTables(I)V

    .line 47
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefixesLength()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 p1, 0x0

    :goto_18
    const/16 v0, 0x100

    const/4 v1, 0x1

    if-ge p1, v0, :cond_24

    .line 49
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 51
    :cond_24
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    return-void
.end method

.method private partialClear()V
    .registers 9

    const/16 v0, 0x2000

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    .line 70
    :goto_6
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    array-length v5, v4

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v3, v5, :cond_20

    .line 71
    aget-boolean v4, v4, v3

    if-eqz v4, :cond_1d

    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefix(I)I

    move-result v4

    if-eq v4, v6, :cond_1d

    .line 72
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getPrefix(I)I

    move-result v4

    aput-boolean v7, v1, v4

    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 75
    :cond_20
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result v3

    add-int/2addr v3, v7

    :goto_25
    if-ge v3, v0, :cond_35

    .line 76
    aget-boolean v4, v1, v3

    if-nez v4, :cond_32

    .line 77
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aput-boolean v2, v4, v3

    .line 78
    invoke-virtual {p0, v3, v6}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setPrefix(II)V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :cond_35
    return-void
.end method


# virtual methods
.method protected addEntry(IB)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getTableSize()I

    move-result v0

    :goto_4
    const/16 v1, 0x2000

    if-ge v0, v1, :cond_11

    .line 57
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_11

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 60
    :cond_11
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    .line 61
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addEntry(IBI)I

    move-result p1

    if-ltz p1, :cond_1f

    .line 63
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    const/4 p2, 0x1

    aput-boolean p2, p0, p1

    :cond_1f
    return p1
.end method

.method protected decompressNextSymbol()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    if-gez v0, :cond_8

    const/4 p0, -0x1

    return p0

    .line 100
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_5a

    .line 101
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->readNextCode()I

    move-result v0

    if-ltz v0, :cond_52

    if-ne v0, v3, :cond_2c

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getCodeSize()I

    move-result v0

    const/16 v1, 0xd

    if-ge v0, v1, :cond_24

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->incrementCodeSize()V

    goto :goto_3a

    .line 108
    :cond_24
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Attempt to increase code size beyond maximum"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3b

    .line 111
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->partialClear()V

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->getClearCode()I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->setTableSize(I)V

    :goto_3a
    return v2

    .line 114
    :cond_3b
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid clear code subcode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_52
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Unexpected EOF;"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 120
    :cond_5a
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/UnshrinkingInputStream;->isUsed:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_65

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->addRepeatOfPreviousCode()I

    move-result v0

    move v2, v3

    .line 124
    :cond_65
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/compress/compressors/lzw/LZWInputStream;->expandCodeToOutputStack(IZ)I

    move-result p0

    return p0
.end method
