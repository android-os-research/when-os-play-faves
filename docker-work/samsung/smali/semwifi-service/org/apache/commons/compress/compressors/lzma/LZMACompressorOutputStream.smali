.class public Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "LZMACompressorOutputStream.java"


# instance fields
.field private final out:Lorg/tukaani/xz/LZMAOutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    .line 43
    new-instance v0, Lorg/tukaani/xz/LZMAOutputStream;

    new-instance v1, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v1}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    const/4 v2, -0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/tukaani/xz/LZMAOutputStream;-><init>(Ljava/io/OutputStream;Lorg/tukaani/xz/LZMA2Options;I)V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public finish()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {p0}, Lorg/tukaani/xz/LZMAOutputStream;->finish()V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public write(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {p0, p1}, Lorg/tukaani/xz/LZMAOutputStream;->write(I)V

    return-void
.end method

.method public write([BII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/lzma/LZMACompressorOutputStream;->out:Lorg/tukaani/xz/LZMAOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method
