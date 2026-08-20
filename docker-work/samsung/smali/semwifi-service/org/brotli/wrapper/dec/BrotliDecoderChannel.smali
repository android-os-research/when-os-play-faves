.class public Lorg/brotli/wrapper/dec/BrotliDecoderChannel;
.super Lorg/brotli/wrapper/dec/Decoder;
.source "BrotliDecoderChannel.java"

# interfaces
.implements Ljava/nio/channels/ReadableByteChannel;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    .line 35
    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1, p2}, Lorg/brotli/wrapper/dec/Decoder;-><init>(Ljava/nio/channels/ReadableByteChannel;I)V

    .line 21
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    invoke-super {p0}, Lorg/brotli/wrapper/dec/Decoder;->close()V

    .line 49
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public isOpen()Z
    .registers 2

    .line 40
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 41
    :try_start_3
    iget-boolean p0, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    monitor-exit v0

    return p0

    :catchall_c
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public read(Ljava/nio/ByteBuffer;)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lorg/brotli/wrapper/dec/BrotliDecoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    iget-boolean v1, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-nez v1, :cond_21

    const/4 v1, 0x0

    .line 59
    :goto_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 60
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->decode()I

    move-result v2

    if-gtz v2, :cond_19

    if-nez v1, :cond_17

    move v1, v2

    .line 62
    :cond_17
    monitor-exit v0

    return v1

    .line 64
    :cond_19
    invoke-virtual {p0, p1}, Lorg/brotli/wrapper/dec/Decoder;->consume(Ljava/nio/ByteBuffer;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8

    .line 66
    :cond_1f
    monitor-exit v0

    return v1

    .line 56
    :cond_21
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0

    :catchall_27
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method
