.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "LZMACompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 56
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    const/4 p1, -0x1

    invoke-direct {v0, v1, p1}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 79
    :try_start_3
    new-instance v0, Lorg/tukaani/xz/LZMAInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, v1, p2}, Lorg/tukaani/xz/LZMAInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;
    :try_end_11
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_3 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception p0

    .line 82
    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result p2

    invoke-direct {p1, v0, v1, p2, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p1
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_17

    const/4 v2, 0x3

    if-lt p1, v2, :cond_17

    .line 140
    aget-byte p1, p0, v1

    const/16 v2, 0x5d

    if-ne p1, v2, :cond_17

    aget-byte p1, p0, v0

    if-nez p1, :cond_17

    const/4 p1, 0x2

    aget-byte p0, p0, p1

    if-nez p0, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 125
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    .line 90
    :goto_c
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return p1
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0

    return-wide p0
.end method
