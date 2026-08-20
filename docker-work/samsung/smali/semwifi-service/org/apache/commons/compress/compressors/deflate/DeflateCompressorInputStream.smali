.class public Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "DeflateCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# static fields
.field private static final MAGIC_1:I = 0x78

.field private static final MAGIC_2a:I = 0x1

.field private static final MAGIC_2b:I = 0x5e

.field private static final MAGIC_2c:I = 0x9c

.field private static final MAGIC_2d:I = 0xda


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final in:Ljava/io/InputStream;

.field private final inflater:Ljava/util/zip/Inflater;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 56
    new-instance v0, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;-><init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;)V
    .registers 5

    .line 67
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 68
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/deflate/DeflateParameters;->withZlibHeader()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {v0, p2}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    .line 69
    new-instance p2, Ljava/util/zip/InflaterInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {p2, v1, v0}, Ljava/util/zip/InflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;)V

    iput-object p2, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method public static matches([BI)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-le p1, v2, :cond_1c

    .line 132
    aget-byte p1, p0, v0

    const/16 v2, 0x78

    if-ne p1, v2, :cond_1c

    aget-byte p0, p0, v1

    if-eq p0, v1, :cond_1b

    const/16 p1, 0x5e

    if-eq p0, p1, :cond_1b

    const/16 p1, -0x64

    if-eq p0, p1, :cond_1b

    const/16 p1, -0x26

    if-ne p0, p1, :cond_1c

    :cond_1b
    move v0, v1

    :cond_1c
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

    .line 97
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 106
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    return-void

    :catchall_b
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->inflater:Ljava/util/zip/Inflater;

    invoke-virtual {p0}, Ljava/util/zip/Inflater;->end()V

    .line 107
    throw v0
.end method

.method public getCompressedCount()J
    .registers 3

    .line 115
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

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

    .line 75
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    .line 76
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

    .line 83
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 84
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

    .line 91
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/deflate/DeflateCompressorInputStream;->in:Ljava/io/InputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0

    return-wide p0
.end method
