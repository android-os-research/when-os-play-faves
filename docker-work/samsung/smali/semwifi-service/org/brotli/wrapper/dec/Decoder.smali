.class public Lorg/brotli/wrapper/dec/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final EMPTY_BUFER:Ljava/nio/ByteBuffer;


# instance fields
.field buffer:Ljava/nio/ByteBuffer;

.field closed:Z

.field private final decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

.field eager:Z

.field private final source:Ljava/nio/channels/ReadableByteChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 19
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lorg/brotli/wrapper/dec/Decoder;->EMPTY_BUFER:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/ReadableByteChannel;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_19

    if-eqz p1, :cond_11

    .line 40
    iput-object p1, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    .line 41
    new-instance p1, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-direct {p1, p2}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;-><init>(I)V

    iput-object p1, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    return-void

    .line 38
    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source can not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "buffer size must be positive"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static decompress([B)[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    array-length v1, p0

    invoke-direct {v0, v1}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;-><init>(I)V

    .line 140
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    :try_start_b
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 144
    array-length p0, p0

    invoke-virtual {v0, p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    const/4 p0, 0x0

    move v2, p0

    .line 145
    :goto_18
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v3

    sget-object v4, Lorg/brotli/wrapper/dec/DecoderJNI$Status;->DONE:Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    if-eq v3, v4, :cond_50

    .line 146
    sget-object v3, Lorg/brotli/wrapper/dec/Decoder$1;->$SwitchMap$org$brotli$wrapper$dec$DecoderJNI$Status:[I

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4c

    const/4 v4, 0x4

    if-ne v3, v4, :cond_44

    .line 152
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 153
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    new-array v5, v4, [B

    .line 154
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v4

    goto :goto_18

    .line 160
    :cond_44
    new-instance p0, Ljava/io/IOException;

    const-string v1, "corrupted input"

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_4c
    invoke-virtual {v0, p0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V
    :try_end_4f
    .catchall {:try_start_b .. :try_end_4f} :catchall_7c

    goto :goto_18

    .line 164
    :cond_50
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 166
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_61

    .line 167
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    .line 169
    :cond_61
    new-array v0, v2, [B

    .line 171
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p0

    :goto_68
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 172
    array-length v4, v3

    invoke-static {v3, p0, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_68

    :cond_7b
    return-object v0

    :catchall_7c
    move-exception p0

    .line 164
    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 165
    throw p0
.end method

.method private fail(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lorg/brotli/wrapper/dec/Decoder;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    .line 50
    :catch_3
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->closed:Z

    .line 131
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->destroy()V

    .line 132
    iget-object p0, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    return-void
.end method

.method consume(Ljava/nio/ByteBuffer;)I
    .registers 5

    .line 118
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 121
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 122
    invoke-virtual {p0, v1}, Lorg/brotli/wrapper/dec/Decoder;->discard(I)V

    return v1
.end method

.method decode()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    :goto_0
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_15

    .line 65
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_15

    .line 68
    :cond_e
    iget-object p0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    return p0

    .line 72
    :cond_15
    :goto_15
    sget-object v0, Lorg/brotli/wrapper/dec/Decoder$1;->$SwitchMap$org$brotli$wrapper$dec$DecoderJNI$Status:[I

    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v1}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getStatus()Lorg/brotli/wrapper/dec/DecoderJNI$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v1, :cond_7e

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_78

    const/4 v1, 0x3

    if-eq v0, v1, :cond_40

    const/4 v1, 0x4

    if-eq v0, v1, :cond_37

    const-string v0, "corrupted input"

    .line 105
    invoke-direct {p0, v0}, Lorg/brotli/wrapper/dec/Decoder;->fail(Ljava/lang/String;)V

    goto :goto_0

    .line 101
    :cond_37
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 82
    :cond_40
    iget-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->eager:Z

    if-eqz v0, :cond_55

    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->hasOutput()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 83
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->pull()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 86
    :cond_55
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->getInputBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 88
    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->source:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-ne v0, v2, :cond_6b

    const-string v1, "unexpected end of input"

    .line 90
    invoke-direct {p0, v1}, Lorg/brotli/wrapper/dec/Decoder;->fail(Ljava/lang/String;)V

    :cond_6b
    if-nez v0, :cond_72

    .line 94
    sget-object v0, Lorg/brotli/wrapper/dec/Decoder;->EMPTY_BUFER:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    return v3

    .line 97
    :cond_72
    iget-object v1, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v1, v0}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    goto :goto_0

    .line 77
    :cond_78
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->decoder:Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;

    invoke-virtual {v0, v3}, Lorg/brotli/wrapper/dec/DecoderJNI$Wrapper;->push(I)V

    goto :goto_0

    :cond_7e
    return v2
.end method

.method discard(I)V
    .registers 4

    .line 111
    iget-object v0, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 112
    iget-object p1, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lorg/brotli/wrapper/dec/Decoder;->buffer:Ljava/nio/ByteBuffer;

    :cond_15
    return-void
.end method

.method public enableEagerOutput()V
    .registers 2

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/brotli/wrapper/dec/Decoder;->eager:Z

    return-void
.end method
