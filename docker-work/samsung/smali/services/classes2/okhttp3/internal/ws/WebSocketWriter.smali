.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "WebSocketWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/ws/WebSocketWriter$FrameSink;
    }
.end annotation


# instance fields
.field public activeWriter:Z

.field public final buffer:Lokio/Buffer;

.field public final frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

.field public final isClient:Z

.field public final maskCursor:Lokio/Buffer$UnsafeCursor;

.field public final maskKey:[B

.field public final random:Ljava/util/Random;

.field public final sink:Lokio/BufferedSink;

.field public final sinkBuffer:Lokio/Buffer;

.field public writerClosed:Z


# direct methods
.method public constructor <init>(ZLokio/BufferedSink;Ljava/util/Random;)V
    .registers 5

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    .line 54
    new-instance v0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    invoke-direct {v0, p0}, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;-><init>(Lokhttp3/internal/ws/WebSocketWriter;)V

    iput-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    if-eqz p2, :cond_3e

    if-eqz p3, :cond_35

    .line 64
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    .line 65
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    .line 66
    invoke-interface {p2}, Lokio/BufferedSink;->buffer()Lokio/Buffer;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    .line 67
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    const/4 p2, 0x0

    if-eqz p1, :cond_28

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_29

    :cond_28
    move-object p3, p2

    .line 70
    :goto_29
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_32

    .line 71
    new-instance p2, Lokio/Buffer$UnsafeCursor;

    invoke-direct {p2}, Lokio/Buffer$UnsafeCursor;-><init>()V

    :cond_32
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    return-void

    .line 63
    :cond_35
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "random == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 62
    :cond_3e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "sink == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public newMessageSink(IJ)Lokio/Sink;
    .registers 5

    .line 154
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->activeWriter:Z

    .line 160
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->frameSink:Lokhttp3/internal/ws/WebSocketWriter$FrameSink;

    iput p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->formatOpcode:I

    .line 161
    iput-wide p2, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->contentLength:J

    .line 162
    iput-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->isFirstFrame:Z

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter$FrameSink;->closed:Z

    return-object p0

    .line 155
    :cond_13
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Another message writer is active. Did you call close()?"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeClose(ILokio/ByteString;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    sget-object v0, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    if-nez p1, :cond_6

    if-eqz p2, :cond_1c

    :cond_6
    if-eqz p1, :cond_b

    .line 95
    invoke-static {p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 97
    :cond_b
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 98
    invoke-virtual {v0, p1}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    if-eqz p2, :cond_18

    .line 100
    invoke-virtual {v0, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 102
    :cond_18
    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v0

    :cond_1c
    const/16 p1, 0x8

    const/4 p2, 0x1

    .line 106
    :try_start_1f
    invoke-virtual {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_25

    .line 108
    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_25
    move-exception p1

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1
.end method

.method public final writeControlFrame(ILokio/ByteString;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_6d

    .line 115
    invoke-virtual {p2}, Lokio/ByteString;->size()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_65

    or-int/lit16 p1, p1, 0x80

    .line 122
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 125
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_55

    or-int/lit16 p1, v0, 0x80

    .line 127
    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {v1, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 129
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 130
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Lokio/Buffer;->write([B)Lokio/Buffer;

    if-lez v0, :cond_5f

    .line 133
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v0

    .line 134
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 136
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 137
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1, v0, v1}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 138
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 139
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_5f

    .line 142
    :cond_55
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 143
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1, p2}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 146
    :cond_5f
    :goto_5f
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->flush()V

    return-void

    .line 117
    :cond_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Payload size must be less than or equal to 125"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 113
    :cond_6d
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeMessageFrame(IJZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_92

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    if-eqz p5, :cond_d

    or-int/lit16 p1, p1, 0x80

    .line 176
    :cond_d
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p4, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 179
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_18

    const/16 v0, 0x80

    :cond_18
    const-wide/16 p4, 0x7d

    cmp-long p1, p2, p4

    if-gtz p1, :cond_26

    long-to-int p1, p2

    or-int/2addr p1, v0

    .line 184
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p4, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_47

    :cond_26
    const-wide/32 p4, 0xffff

    cmp-long p1, p2, p4

    if-gtz p1, :cond_3b

    or-int/lit8 p1, v0, 0x7e

    .line 187
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p4, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 188
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    long-to-int p4, p2

    invoke-virtual {p1, p4}, Lokio/Buffer;->writeShort(I)Lokio/Buffer;

    goto :goto_47

    :cond_3b
    or-int/lit8 p1, v0, 0x7f

    .line 191
    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p4, p1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 192
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1, p2, p3}, Lokio/Buffer;->writeLong(J)Lokio/Buffer;

    .line 195
    :goto_47
    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_85

    .line 196
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Ljava/util/Random;->nextBytes([B)V

    .line 197
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p4}, Lokio/Buffer;->write([B)Lokio/Buffer;

    const-wide/16 p4, 0x0

    cmp-long p1, p2, p4

    if-lez p1, :cond_8c

    .line 200
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide p4

    .line 201
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {p1, v0, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 203
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p2}, Lokio/Buffer;->readAndWriteUnsafe(Lokio/Buffer$UnsafeCursor;)Lokio/Buffer$UnsafeCursor;

    .line 204
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1, p4, p5}, Lokio/Buffer$UnsafeCursor;->seek(J)I

    .line 205
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {p1, p2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Lokio/Buffer$UnsafeCursor;[B)V

    .line 206
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Lokio/Buffer$UnsafeCursor;

    invoke-virtual {p1}, Lokio/Buffer$UnsafeCursor;->close()V

    goto :goto_8c

    .line 209
    :cond_85
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Lokio/Buffer;

    iget-object p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->buffer:Lokio/Buffer;

    invoke-virtual {p1, p4, p2, p3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 212
    :cond_8c
    :goto_8c
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Lokio/BufferedSink;

    invoke-interface {p0}, Lokio/BufferedSink;->emit()Lokio/BufferedSink;

    return-void

    .line 170
    :cond_92
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writePing(Lokio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    .line 76
    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method

.method public writePong(Lokio/ByteString;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 81
    invoke-virtual {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILokio/ByteString;)V

    return-void
.end method
