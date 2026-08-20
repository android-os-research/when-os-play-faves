.class public Lorg/brotli/wrapper/enc/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/brotli/wrapper/enc/Encoder$Parameters;
    }
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field closed:Z

.field private final destination:Ljava/nio/channels/WritableByteChannel;

.field private final encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

.field final inputBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/channels/WritableByteChannel;Lorg/brotli/wrapper/enc/Encoder$Parameters;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p3, :cond_27

    if-eqz p1, :cond_1f

    .line 77
    iput-object p1, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    .line 78
    new-instance p1, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-static {p2}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v0

    invoke-static {p2}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result p2

    invoke-direct {p1, p3, v0, p2}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;-><init>(III)V

    iput-object p1, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    .line 79
    invoke-virtual {p1}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    return-void

    .line 75
    :cond_1f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "destination can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 72
    :cond_27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer size must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static compress([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    new-instance v0, Lorg/brotli/wrapper/enc/Encoder$Parameters;

    invoke-direct {v0}, Lorg/brotli/wrapper/enc/Encoder$Parameters;-><init>()V

    invoke-static {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->compress([BLorg/brotli/wrapper/enc/Encoder$Parameters;)[B

    move-result-object p0

    return-object p0
.end method

.method public static compress([BLorg/brotli/wrapper/enc/Encoder$Parameters;)[B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_b

    new-array p0, v1, [B

    const/4 p1, 0x6

    aput-byte p1, p0, v2

    return-object p0

    .line 166
    :cond_b
    new-instance v0, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    array-length v3, p0

    invoke-static {p1}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetquality(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result v4

    invoke-static {p1}, Lorg/brotli/wrapper/enc/Encoder$Parameters;->-$$Nest$fgetlgwin(Lorg/brotli/wrapper/enc/Encoder$Parameters;)I

    move-result p1

    invoke-direct {v0, v3, v4, p1}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;-><init>(III)V

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    :try_start_1e
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 171
    sget-object v3, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    array-length p0, p0

    invoke-virtual {v0, v3, p0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    move p0, v2

    .line 173
    :goto_2c
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_81

    .line 175
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 176
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 177
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v5, v4, [B

    .line 178
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr p0, v4

    goto :goto_2c

    .line 181
    :cond_4a
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isFinished()Z

    move-result v3

    if-nez v3, :cond_56

    .line 182
    sget-object v3, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {v0, v3, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V
    :try_end_55
    .catchall {:try_start_1e .. :try_end_55} :catchall_89

    goto :goto_2c

    .line 188
    :cond_56
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 190
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v1, :cond_66

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 193
    :cond_66
    new-array p0, p0, [B

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move v0, v2

    :goto_6d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_80

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 196
    array-length v3, v1

    invoke-static {v1, v2, p0, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    array-length v1, v1

    add-int/2addr v0, v1

    goto :goto_6d

    :cond_80
    return-object p0

    .line 174
    :cond_81
    :try_start_81
    new-instance p0, Ljava/io/IOException;

    const-string p1, "encoding failed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_89
    .catchall {:try_start_81 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception p0

    .line 188
    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 189
    throw p0
.end method

.method private fail(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lorg/brotli/wrapper/enc/Encoder;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 88
    :catch_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    iget-boolean v0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lorg/brotli/wrapper/enc/Encoder;->closed:Z

    .line 149
    :try_start_8
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FINISH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_18

    .line 151
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 152
    iget-object p0, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/WritableByteChannel;->close()V

    return-void

    :catchall_18
    move-exception v0

    .line 151
    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v1}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->destroy()V

    .line 152
    iget-object p0, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/WritableByteChannel;->close()V

    .line 153
    throw v0
.end method

.method encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->PROCESS:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    if-eqz v0, :cond_15

    .line 115
    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_1e

    .line 116
    :cond_15
    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_1e

    return v1

    :cond_1e
    :goto_1e
    move v3, v1

    .line 121
    :goto_1f
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->isSuccess()Z

    move-result v4

    if-nez v4, :cond_2d

    const-string v4, "encoding failed"

    .line 122
    invoke-direct {p0, v4}, Lorg/brotli/wrapper/enc/Encoder;->fail(Ljava/lang/String;)V

    goto :goto_1f

    .line 123
    :cond_2d
    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->pushOutput(Z)Z

    move-result v4

    if-nez v4, :cond_34

    return v2

    .line 125
    :cond_34
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasMoreOutput()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 126
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_1f

    .line 127
    :cond_45
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->hasRemainingInput()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 128
    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    invoke-virtual {v4, p1, v2}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    goto :goto_1f

    :cond_53
    if-eqz v3, :cond_62

    .line 130
    iget-object v3, p0, Lorg/brotli/wrapper/enc/Encoder;->encoder:Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;

    iget-object v4, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {v3, p1, v4}, Lorg/brotli/wrapper/enc/EncoderJNI$Wrapper;->push(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;I)V

    move v3, v2

    goto :goto_1f

    .line 133
    :cond_62
    iget-object p0, p0, Lorg/brotli/wrapper/enc/Encoder;->inputBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    return v1
.end method

.method flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 140
    sget-object v0, Lorg/brotli/wrapper/enc/EncoderJNI$Operation;->FLUSH:Lorg/brotli/wrapper/enc/EncoderJNI$Operation;

    invoke-virtual {p0, v0}, Lorg/brotli/wrapper/enc/Encoder;->encode(Lorg/brotli/wrapper/enc/EncoderJNI$Operation;)Z

    return-void
.end method

.method pushOutput(Z)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_21

    .line 97
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 98
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->destination:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 100
    :cond_11
    iget-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lorg/brotli/wrapper/enc/Encoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1d
    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method
