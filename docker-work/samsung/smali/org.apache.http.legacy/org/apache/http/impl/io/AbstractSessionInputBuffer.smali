.class public abstract Lorg/apache/http/impl/io/AbstractSessionInputBuffer;
.super Ljava/lang/Object;
.source "AbstractSessionInputBuffer.java"

# interfaces
.implements Lorg/apache/http/io/SessionInputBuffer;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private ascii:Z

.field private buffer:[B

.field private bufferlen:I

.field private bufferpos:I

.field private charset:Ljava/lang/String;

.field private instream:Ljava/io/InputStream;

.field private linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

.field private maxLineLen:I

.field private metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 67
    const-string v0, "US-ASCII"

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 69
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    return-void
.end method

.method private lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I
    .registers 7
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 216
    .local v0, "l":I
    if-lez v0, :cond_30

    .line 217
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1b

    .line 218
    add-int/lit8 v0, v0, -0x1

    .line 219
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    .line 222
    :cond_1b
    if-lez v0, :cond_30

    .line 223
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;->byteAt(I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_30

    .line 224
    add-int/lit8 v0, v0, -0x1

    .line 225
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1, v0}, Lorg/apache/http/util/ByteArrayBuffer;->setLength(I)V

    .line 229
    :cond_30
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v0

    .line 230
    iget-boolean v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 231
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/ByteArrayBuffer;II)V

    goto :goto_51

    .line 235
    :cond_41
    new-instance v1, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 236
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 238
    .end local v1    # "s":Ljava/lang/String;
    :goto_51
    return v0
.end method

.method private lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I
    .registers 8
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .param p2, "pos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 245
    .local v0, "off":I
    add-int/lit8 v1, p2, 0x1

    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 249
    if-le p2, v0, :cond_14

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    add-int/lit8 v2, p2, -0x1

    aget-byte v1, v1, v2

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    .line 251
    add-int/lit8 p2, p2, -0x1

    .line 254
    :cond_14
    sub-int v1, p2, v0

    .line 255
    .local v1, "len":I
    iget-boolean v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    if-eqz v2, :cond_20

    .line 256
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {p1, v2, v0, v1}, Lorg/apache/http/util/CharArrayBuffer;->append([BII)V

    goto :goto_2c

    .line 260
    :cond_20
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget-object v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    invoke-direct {v2, v3, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 261
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 263
    .end local v2    # "s":Ljava/lang/String;
    :goto_2c
    return v1
.end method

.method private locateLF()I
    .registers 4

    .line 161
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .local v0, "i":I
    :goto_2
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_12

    .line 162
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    aget-byte v1, v1, v0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_f

    .line 163
    return v0

    .line 161
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    .end local v0    # "i":I
    :cond_12
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method protected fillBuffer()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    if-lez v0, :cond_13

    .line 98
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    sub-int/2addr v1, v0

    .line 99
    .local v1, "len":I
    const/4 v2, 0x0

    if-lez v1, :cond_f

    .line 100
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v3, v0, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_f
    iput v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 103
    iput v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 106
    .end local v1    # "len":I
    :cond_13
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 107
    .local v0, "off":I
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    array-length v2, v1

    sub-int/2addr v2, v0

    .line 108
    .local v2, "len":I
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 109
    .local v1, "l":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_23

    .line 110
    return v3

    .line 112
    :cond_23
    add-int v3, v0, v1

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 113
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;->incrementBytesTransferred(J)V

    .line 114
    return v1
.end method

.method public getMetrics()Lorg/apache/http/io/HttpTransportMetrics;
    .registers 2

    .line 277
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    return-object v0
.end method

.method protected hasBufferedData()Z
    .registers 3

    .line 119
    iget v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method protected init(Ljava/io/InputStream;ILorg/apache/http/params/HttpParams;)V
    .registers 7
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "buffersize"    # I
    .param p3, "params"    # Lorg/apache/http/params/HttpParams;

    .line 74
    if-eqz p1, :cond_54

    .line 77
    if-lez p2, :cond_4c

    .line 80
    if-eqz p3, :cond_44

    .line 83
    iput-object p1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->instream:Ljava/io/InputStream;

    .line 84
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 86
    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    .line 87
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v1, p2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    .line 88
    invoke-static {p3}, Lorg/apache/http/params/HttpProtocolParams;->getHttpElementCharset(Lorg/apache/http/params/HttpParams;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 89
    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_30

    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->charset:Ljava/lang/String;

    .line 90
    const-string v2, "ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    :cond_30
    const/4 v0, 0x1

    :cond_31
    iput-boolean v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->ascii:Z

    .line 91
    const/4 v0, -0x1

    const-string v1, "http.connection.max-line-length"

    invoke-interface {p3, v1, v0}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    .line 92
    new-instance v0, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/io/HttpTransportMetricsImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->metrics:Lorg/apache/http/impl/io/HttpTransportMetricsImpl;

    .line 93
    return-void

    .line 81
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer size may not be negative or zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input stream may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "noRead":I
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_f

    .line 125
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 126
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 127
    return v1

    .line 130
    :cond_f
    iget-object v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    return v1
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 8
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    if-nez p1, :cond_4

    .line 135
    const/4 v0, 0x0

    return v0

    .line 137
    :cond_4
    const/4 v0, 0x0

    .line 138
    .local v0, "noRead":I
    :cond_5
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v1

    if-nez v1, :cond_13

    .line 139
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 140
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 141
    return v1

    .line 144
    :cond_13
    iget v1, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v1, v2

    .line 145
    .local v1, "chunk":I
    if-le v1, p3, :cond_1b

    .line 146
    move v1, p3

    .line 148
    :cond_1b
    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-static {v3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 150
    return v1
.end method

.method public readLine(Lorg/apache/http/util/CharArrayBuffer;)I
    .registers 10
    .param p1, "charbuffer"    # Lorg/apache/http/util/CharArrayBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    if-eqz p1, :cond_76

    .line 173
    iget-object v0, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "noRead":I
    const/4 v1, 0x1

    .line 176
    .local v1, "retry":Z
    :goto_9
    const/4 v2, -0x1

    if-eqz v1, :cond_66

    .line 178
    invoke-direct {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->locateLF()I

    move-result v3

    .line 179
    .local v3, "i":I
    if-eq v3, v2, :cond_31

    .line 181
    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 183
    invoke-direct {p0, p1, v3}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromReadBuffer(Lorg/apache/http/util/CharArrayBuffer;I)I

    move-result v2

    return v2

    .line 185
    :cond_1f
    const/4 v1, 0x0

    .line 186
    add-int/lit8 v2, v3, 0x1

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v2, v4

    .line 187
    .local v2, "len":I
    iget-object v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v5, v6, v4, v2}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 188
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 189
    .end local v2    # "len":I
    goto :goto_4e

    .line 191
    :cond_31
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->hasBufferedData()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 192
    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    sub-int/2addr v4, v5

    .line 193
    .local v4, "len":I
    iget-object v6, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    iget-object v7, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->buffer:[B

    invoke-virtual {v6, v7, v5, v4}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 194
    iget v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferlen:I

    iput v5, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->bufferpos:I

    .line 196
    .end local v4    # "len":I
    :cond_47
    invoke-virtual {p0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->fillBuffer()I

    move-result v0

    .line 197
    if-ne v0, v2, :cond_4e

    .line 198
    const/4 v1, 0x0

    .line 201
    :cond_4e
    :goto_4e
    iget v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-lez v2, :cond_65

    iget-object v2, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    iget v4, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->maxLineLen:I

    if-ge v2, v4, :cond_5d

    goto :goto_65

    .line 202
    :cond_5d
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Maximum line length limit exceeded"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    .end local v3    # "i":I
    :cond_65
    :goto_65
    goto :goto_9

    .line 205
    :cond_66
    if-ne v0, v2, :cond_71

    iget-object v3, p0, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->linebuffer:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v3}, Lorg/apache/http/util/ByteArrayBuffer;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 207
    return v2

    .line 209
    :cond_71
    invoke-direct {p0, p1}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->lineFromLineBuffer(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v2

    return v2

    .line 171
    .end local v0    # "noRead":I
    .end local v1    # "retry":Z
    :cond_76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Char array buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readLine()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 267
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 268
    .local v0, "charbuffer":Lorg/apache/http/util/CharArrayBuffer;
    invoke-virtual {p0, v0}, Lorg/apache/http/impl/io/AbstractSessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v1

    .line 269
    .local v1, "l":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    .line 270
    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 272
    :cond_13
    const/4 v2, 0x0

    return-object v2
.end method
