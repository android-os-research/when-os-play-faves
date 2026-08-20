.class public Lorg/brotli/wrapper/enc/BrotliOutputStream;
.super Ljava/io/OutputStream;
.source "BrotliOutputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final encoder:Lorg/brotli/wrapper/enc/Encoder;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;-><init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;-><init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 31
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    invoke-direct {v0, p1, p2, p3}, Lorg/brotli/wrapper/enc/Encoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    iput-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

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

    .line 45
    iget-object p0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/Encoder;->close()V

    return-void
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    iget-object p0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_a

    .line 53
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/Encoder;->flush()V

    return-void

    .line 51
    :cond_a
    new-instance p0, Ljava/io/IOException;

    const-string v0, "write after close"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_1a

    .line 61
    :goto_6
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    sget-object v1, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v1}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_6

    .line 64
    :cond_11
    iget-object p0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object p0, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void

    .line 59
    :cond_1a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "write after close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/brotli/wrapper/enc/BrotliOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-boolean v0, v0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v0, :cond_2a

    :goto_6
    if-lez p3, :cond_29

    .line 78
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    sget-object v1, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v1}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_6

    .line 81
    :cond_13
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object v0, v0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 82
    iget-object v1, p0, Lorg/brotli/wrapper/enc/BrotliOutputStream;->encoder:Lorg/brotli/wrapper/enc/Encoder;

    iget-object v1, v1, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_6

    :cond_29
    return-void

    .line 75
    :cond_2a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "write after close"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
