.class public Lorg/brotli/wrapper/enc/BrotliEncoderChannel;
.super Lorg/brotli/wrapper/enc/Encoder;
.source "BrotliEncoderChannel.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private final mutex:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x4000

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/brotli/wrapper/enc/Encoder;-><init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V

    .line 22
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

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

    .line 54
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 55
    :try_start_3
    invoke-super {p0}, Lorg/brotli/wrapper/enc/Encoder;->close()V

    .line 56
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

    .line 47
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 48
    :try_start_3
    iget-boolean p0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

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

    .line 49
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lorg/brotli/wrapper/enc/BrotliEncoderChannel;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_3
    iget-boolean v1, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-nez v1, :cond_3c

    const/4 v1, 0x0

    .line 66
    :goto_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3a

    sget-object v2, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v2}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 67
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 68
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    invoke-virtual {v3, v2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 70
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    add-int/2addr v1, v2

    .line 72
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    goto :goto_8

    .line 74
    :cond_3a
    monitor-exit v0

    return v1

    .line 63
    :cond_3c
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0

    :catchall_42
    move-exception p0

    .line 75
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw p0
.end method
