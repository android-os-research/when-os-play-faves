.class public Lorg/brotli/dec/BrotliInputStream;
.super Ljava/io/InputStream;
.source "BrotliInputStream.java"


# static fields
.field public static final DEFAULT_INTERNAL_BUFFER_SIZE:I = 0x100


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private remainingBufferBytes:I

.field private final state:Lorg/brotli/dec/State;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x100

    .line 54
    invoke-direct {p0, p1, v0}, Lorg/brotli/dec/BrotliInputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    new-instance v0, Lorg/brotli/dec/State;

    invoke-direct {v0}, Lorg/brotli/dec/State;-><init>()V

    iput-object v0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    if-lez p2, :cond_2c

    if-eqz p1, :cond_24

    .line 77
    new-array p2, p2, [B

    iput-object p2, p0, Lorg/brotli/dec/BrotliInputStream;->buffer:[B

    const/4 p2, 0x0

    .line 78
    iput p2, p0, Lorg/brotli/dec/BrotliInputStream;->remainingBufferBytes:I

    .line 79
    iput p2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    .line 81
    :try_start_17
    invoke-static {v0, p1}, Lorg/brotli/dec/Decode;->initState(Lorg/brotli/dec/State;Ljava/io/InputStream;)V
    :try_end_1a
    .catch Lorg/brotli/dec/BrotliRuntimeException; {:try_start_17 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception p0

    .line 83
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Brotli decoder initialization failed"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 75
    :cond_24
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "source is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad buffer size:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public attachDictionaryChunk([B)V
    .registers 2

    .line 88
    iget-object p0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    invoke-static {p0, p1}, Lorg/brotli/dec/Decode;->attachDictionaryChunk(Lorg/brotli/dec/State;[B)V

    return-void
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-object p0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    invoke-static {p0}, Lorg/brotli/dec/Decode;->close(Lorg/brotli/dec/State;)V

    return-void
.end method

.method public enableEagerOutput()V
    .registers 1

    .line 92
    iget-object p0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    invoke-static {p0}, Lorg/brotli/dec/Decode;->enableEagerOutput(Lorg/brotli/dec/State;)V

    return-void
.end method

.method public enableLargeWindow()V
    .registers 1

    .line 96
    iget-object p0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    invoke-static {p0}, Lorg/brotli/dec/Decode;->enableLargeWindow(Lorg/brotli/dec/State;)V

    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    iget v1, p0, Lorg/brotli/dec/BrotliInputStream;->remainingBufferBytes:I

    if-lt v0, v1, :cond_16

    .line 113
    iget-object v0, p0, Lorg/brotli/dec/BrotliInputStream;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lorg/brotli/dec/BrotliInputStream;->read([BII)I

    move-result v0

    iput v0, p0, Lorg/brotli/dec/BrotliInputStream;->remainingBufferBytes:I

    .line 114
    iput v2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    return v1

    .line 119
    :cond_16
    iget-object v0, p0, Lorg/brotli/dec/BrotliInputStream;->buffer:[B

    iget v1, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p2, :cond_84

    if-ltz p3, :cond_6d

    add-int v0, p2, p3

    .line 131
    array-length v1, p1

    if-gt v0, v1, :cond_4d

    const/4 v0, 0x0

    if-nez p3, :cond_d

    return v0

    .line 137
    :cond_d
    iget v1, p0, Lorg/brotli/dec/BrotliInputStream;->remainingBufferBytes:I

    iget v2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-eqz v1, :cond_2d

    .line 139
    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 140
    iget-object v2, p0, Lorg/brotli/dec/BrotliInputStream;->buffer:[B

    iget v3, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget v2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/brotli/dec/BrotliInputStream;->bufferOffset:I

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-nez p3, :cond_2d

    return v1

    .line 149
    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    iput-object p1, v2, Lorg/brotli/dec/State;->output:[B

    .line 150
    iput p2, v2, Lorg/brotli/dec/State;->outputOffset:I

    .line 151
    iput p3, v2, Lorg/brotli/dec/State;->outputLength:I

    .line 152
    iput v0, v2, Lorg/brotli/dec/State;->outputUsed:I

    .line 153
    invoke-static {v2}, Lorg/brotli/dec/Decode;->decompress(Lorg/brotli/dec/State;)V

    .line 154
    iget-object p0, p0, Lorg/brotli/dec/BrotliInputStream;->state:Lorg/brotli/dec/State;

    iget p0, p0, Lorg/brotli/dec/State;->outputUsed:I
    :try_end_3e
    .catch Lorg/brotli/dec/BrotliRuntimeException; {:try_start_2d .. :try_end_3e} :catch_44

    if-nez p0, :cond_42

    const/4 p0, -0x1

    return p0

    :cond_42
    add-int/2addr p0, v1

    return p0

    :catch_44
    move-exception p0

    .line 159
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Brotli stream decoding failed"

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 132
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Buffer overflow: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 130
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 128
    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bad offset: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
