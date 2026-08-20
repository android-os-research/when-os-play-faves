.class public Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "XZCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final in:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 103
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;-><init>(Ljava/io/InputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 131
    new-instance v0, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    if-eqz p2, :cond_14

    .line 133
    new-instance p1, Lorg/tukaani/xz/XZInputStream;

    invoke-direct {p1, v0, p3}, Lorg/tukaani/xz/XZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    goto :goto_1b

    .line 135
    :cond_14
    new-instance p1, Lorg/tukaani/xz/SingleXZInputStream;

    invoke-direct {p1, v0, p3}, Lorg/tukaani/xz/SingleXZInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    :goto_1b
    return-void
.end method

.method public static matches([BI)Z
    .registers 5

    .line 52
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v0, v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_7

    return v1

    :cond_7
    move p1, v1

    .line 56
    :goto_8
    sget-object v0, Lorg/tukaani/xz/XZ;->HEADER_MAGIC:[B

    array-length v2, v0

    if-ge p1, v2, :cond_17

    .line 57
    aget-byte v2, p0, p1

    aget-byte v0, v0, p1

    if-eq v2, v0, :cond_14

    return v1

    :cond_14
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_17
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public available()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

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

    .line 179
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 187
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x1

    .line 143
    :goto_b
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_e
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_e} :catch_f

    return v0

    :catch_f
    move-exception p0

    .line 146
    new-instance v0, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw v0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V
    :try_end_9
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_9} :catch_a

    return p1

    :catch_a
    move-exception p0

    .line 158
    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result v0

    invoke-direct {p1, p2, p3, v0, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p1
.end method

.method public skip(J)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/xz/XZCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0
    :try_end_6
    .catch Lorg/tukaani/xz/MemoryLimitException; {:try_start_0 .. :try_end_6} :catch_7

    return-wide p0

    :catch_7
    move-exception p0

    .line 168
    new-instance p1, Lorg/apache/commons/compress/MemoryLimitException;

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryNeeded()I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p0}, Lorg/tukaani/xz/MemoryLimitException;->getMemoryLimit()I

    move-result p2

    invoke-direct {p1, v0, v1, p2, p0}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JILjava/lang/Exception;)V

    throw p1
.end method
