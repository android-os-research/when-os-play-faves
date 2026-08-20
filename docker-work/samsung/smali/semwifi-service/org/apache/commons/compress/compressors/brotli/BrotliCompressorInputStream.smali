.class public Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;
.super Lorg/apache/commons/compress/compressors/CompressorInputStream;
.source "BrotliCompressorInputStream.java"

# interfaces
.implements Lorg/apache/commons/compress/utils/InputStreamStatistics;


# instance fields
.field private final countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

.field private final decIS:Lorg/brotli/dec/BrotliInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorInputStream;-><init>()V

    .line 42
    new-instance v0, Lorg/brotli/dec/BrotliInputStream;

    new-instance v1, Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v1, p1}, Lorg/apache/commons/compress/utils/CountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-direct {v0, v1}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

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

    .line 47
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

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

    .line 52
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Lorg/brotli/dec/BrotliInputStream;->close()V

    return-void
.end method

.method public getCompressedCount()J
    .registers 3

    .line 104
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->countingStream:Lorg/apache/commons/compress/utils/CountingInputStream;

    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/CountingInputStream;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public mark(I)V
    .registers 2

    .line 67
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 1

    .line 72
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result p0

    return p0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0}, Lorg/brotli/dec/BrotliInputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v1, 0x0

    goto :goto_c

    :cond_b
    const/4 v1, 0x1

    .line 78
    :goto_c
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return v0
.end method

.method public read([B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {v0, p1, p2, p3}, Lorg/brotli/dec/BrotliInputStream;->read([BII)I

    move-result p1

    .line 85
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/compressors/CompressorInputStream;->count(I)V

    return p1
.end method

.method public reset()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-static {p0, p1, p2}, Lorg/apache/commons/compress/utils/IOUtils;->skip(Ljava/io/InputStream;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 91
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/brotli/BrotliCompressorInputStream;->decIS:Lorg/brotli/dec/BrotliInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
