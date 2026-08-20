.class public Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;
.super Ljava/io/OutputStream;
.source "FixedLengthBlockOutputStream.java"

# interfaces
.implements Ljava/nio/channels/WritableByteChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;
    }
.end annotation


# instance fields
.field private final blockSize:I

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final closed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final out:Ljava/nio/channels/WritableByteChannel;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .registers 5

    .line 62
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    instance-of v0, p1, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1e

    .line 64
    check-cast p1, Ljava/io/FileOutputStream;

    .line 65
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 66
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_2c

    .line 68
    :cond_1e
    new-instance v0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream$BufferAtATimeOutputChannel-IA;)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 69
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 71
    :goto_2c
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/WritableByteChannel;I)V
    .registers 5

    .line 78
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    .line 80
    iput p2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    .line 81
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private maybeFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_b

    .line 86
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    :cond_b
    return-void
.end method

.method private padBlock()V
    .registers 7

    .line 195
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-le v0, v2, :cond_38

    .line 198
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_2c

    rsub-int/lit8 v3, v3, 0x8

    move v4, v1

    :goto_21
    if-ge v4, v3, :cond_2b

    .line 202
    iget-object v5, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_2b
    sub-int/2addr v0, v3

    :cond_2c
    :goto_2c
    if-lt v0, v2, :cond_38

    .line 208
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, -0x8

    goto :goto_2c

    .line 212
    :cond_38
    :goto_38
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 213
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_38

    :cond_46
    return-void
.end method

.method private writeBlock()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 92
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 93
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    .line 94
    iget v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-ne v0, v2, :cond_1f

    if-nez v1, :cond_1f

    .line 100
    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    return-void

    :cond_1f
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p0, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const-string v0, "Failed to write %,d bytes atomically. Only wrote  %,d"

    .line 96
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 98
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 187
    :try_start_a
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->flushBlock()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_13

    .line 189
    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/WritableByteChannel;->close()V

    goto :goto_1a

    :catchall_13
    move-exception v0

    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 190
    throw v0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public flushBlock()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_e

    .line 178
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->padBlock()V

    .line 179
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    :cond_e
    return-void
.end method

.method public isOpen()Z
    .registers 3

    .line 166
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/WritableByteChannel;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 167
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 169
    :cond_e
    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->closed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public write(Ljava/nio/ByteBuffer;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 135
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 137
    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_5d

    .line 140
    :cond_18
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 143
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-eqz v2, :cond_3d

    .line 144
    iget-object v2, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 145
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 147
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->writeBlock()V

    sub-int v2, v0, v2

    goto :goto_3e

    :cond_3d
    move v2, v0

    .line 152
    :goto_3e
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    if-lt v2, v3, :cond_55

    .line 153
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget v4, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 154
    iget-object v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->out:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v3, p1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 155
    iget v3, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->blockSize:I

    sub-int/2addr v2, v3

    goto :goto_3e

    .line 158
    :cond_55
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 159
    iget-object p0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_5d
    return v0

    .line 131
    :cond_5e
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 108
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 109
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    return-void

    .line 106
    :cond_10
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method

.method public write([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1e

    :goto_6
    if-lez p3, :cond_1d

    .line 120
    iget-object v0, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 121
    iget-object v1, p0, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 122
    invoke-direct {p0}, Lorg/apache/commons/compress/utils/FixedLengthBlockOutputStream;->maybeFlush()V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_6

    :cond_1d
    return-void

    .line 115
    :cond_1e
    new-instance p0, Ljava/nio/channels/ClosedChannelException;

    invoke-direct {p0}, Ljava/nio/channels/ClosedChannelException;-><init>()V

    throw p0
.end method
