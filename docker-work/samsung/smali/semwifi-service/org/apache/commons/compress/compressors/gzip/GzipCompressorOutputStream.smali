.class public Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;
.super Lorg/apache/commons/compress/compressors/CompressorOutputStream;
.source "GzipCompressorOutputStream.java"


# static fields
.field private static final FCOMMENT:I = 0x10

.field private static final FNAME:I = 0x8


# instance fields
.field private closed:Z

.field private final crc:Ljava/util/zip/CRC32;

.field private final deflateBuffer:[B

.field private final deflater:Ljava/util/zip/Deflater;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/CompressorOutputStream;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 56
    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    .line 62
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    .line 83
    new-instance p1, Ljava/util/zip/Deflater;

    invoke-virtual {p2}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getCompressionLevel()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    .line 85
    invoke-direct {p0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->writeHeader(Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    return-void
.end method

.method private deflate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    if-lez v0, :cond_13

    .line 172
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflateBuffer:[B

    invoke-virtual {v1, p0, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_13
    return-void
.end method

.method private writeHeader(Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getFilename()Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getComment()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 92
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 93
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, -0x74e1

    .line 94
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    .line 95
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    if-eqz v0, :cond_21

    goto :goto_22

    :cond_21
    move v3, v4

    :goto_22
    if-eqz v1, :cond_27

    const/16 v5, 0x10

    goto :goto_28

    :cond_27
    move v5, v4

    :goto_28
    or-int/2addr v3, v5

    int-to-byte v3, v3

    .line 96
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 97
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getModificationTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v3, v5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 100
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getCompressionLevel()I

    move-result v3

    const/16 v5, 0x9

    if-ne v3, v5, :cond_45

    const/4 v3, 0x2

    .line 102
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_50

    :cond_45
    const/4 v5, 0x1

    if-ne v3, v5, :cond_4d

    const/4 v3, 0x4

    .line 104
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_50

    .line 106
    :cond_4d
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    :goto_50
    invoke-virtual {p1}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->getOperatingSystem()I

    move-result p1

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    iget-object p1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string p1, "ISO-8859-1"

    if-eqz v0, :cond_73

    .line 114
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 115
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    :cond_73
    if-eqz v1, :cond_83

    .line 119
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 120
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0, v4}, Ljava/io/OutputStream;->write(I)V

    :cond_83
    return-void
.end method

.method private writeTrailer()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 125
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 126
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 127
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 128
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 206
    iget-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    if-nez v0, :cond_23

    const/4 v0, 0x1

    .line 208
    :try_start_5
    invoke-virtual {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_15

    .line 210
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v1}, Ljava/util/zip/Deflater;->end()V

    .line 211
    iget-object v1, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 212
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    goto :goto_23

    :catchall_15
    move-exception v1

    .line 210
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->end()V

    .line 211
    iget-object v2, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 212
    iput-boolean v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->closed:Z

    .line 213
    throw v1

    :cond_23
    :goto_23
    return-void
.end method

.method public finish()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 184
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    .line 186
    :goto_d
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_19

    .line 187
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflate()V

    goto :goto_d

    .line 190
    :cond_19
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->writeTrailer()V

    :cond_1c
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 135
    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v0

    if-nez v0, :cond_21

    if-lez p3, :cond_20

    .line 159
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 161
    :goto_f
    iget-object v0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 162
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->deflate()V

    goto :goto_f

    .line 165
    :cond_1b
    iget-object p0, p0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {p0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    :cond_20
    return-void

    .line 156
    :cond_21
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot write more data, the end of the compressed data stream has been reached"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
