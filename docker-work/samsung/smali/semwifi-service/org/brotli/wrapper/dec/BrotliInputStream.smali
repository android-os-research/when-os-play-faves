.class public Lorg/brotli/wrapper/dec/BrotliInputStream;
.super Ljava/io/InputStream;
.source "BrotliInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final decoder:Lorg/brotli/wrapper/dec/Decoder;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    .line 34
    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 30
    new-instance v0, Lorg/brotli/wrapper/dec/Decoder;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lorg/brotli/wrapper/dec/Decoder;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    iput-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 1

    .line 48
    iget-object p0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object p0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->close()V

    return-void
.end method

.method public enableEagerOutput()V
    .registers 1

    .line 38
    iget-object p0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->enableEagerOutput()V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v0, :cond_1d

    .line 59
    :cond_6
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    return v1

    .line 68
    :cond_12
    iget-object p0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object p0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 54
    :cond_1d
    new-instance p0, Ljava/io/IOException;

    const-string v0, "read after close"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/brotli/wrapper/dec/BrotliInputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v1, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v1, :cond_30

    .line 81
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x0

    :cond_f
    if-lez p3, :cond_2f

    .line 86
    iget-object v2, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v2, v2, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 87
    iget-object v3, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v3, v3, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v2

    sub-int/2addr p3, v2

    add-int/2addr v0, v2

    .line 91
    iget-object v2, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v2}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v2

    if-ne v2, v1, :cond_f

    :cond_2f
    return v0

    .line 79
    :cond_30
    new-instance p0, Ljava/io/IOException;

    const-string p1, "read after close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public skip(J)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v0, :cond_2f

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_9
    cmp-long v4, p1, v0

    if-lez v4, :cond_2e

    .line 105
    iget-object v4, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v4}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_17

    goto :goto_2e

    .line 108
    :cond_17
    iget-object v4, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    iget-object v4, v4, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 109
    iget-object v5, p0, Lorg/brotli/wrapper/dec/BrotliInputStream;->decoder:Lorg/brotli/wrapper/dec/Decoder;

    invoke-virtual {v5, v4}, Lorg/brotli/wrapper/dec/Decoder;->discard(I)V

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr p1, v4

    goto :goto_9

    :cond_2e
    :goto_2e
    return-wide v2

    .line 101
    :cond_2f
    new-instance p0, Ljava/io/IOException;

    const-string p1, "read after close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
