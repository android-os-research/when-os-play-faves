.class public Lorg/apache/http/impl/io/ChunkedInputStream;
.super Ljava/io/InputStream;
.source "ChunkedInputStream.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private bof:Z

.field private final buffer:Lorg/apache/http/util/CharArrayBuffer;

.field private chunkSize:I

.field private closed:Z

.field private eof:Z

.field private footers:[Lorg/apache/http/Header;

.field private in:Lorg/apache/http/io/SessionInputBuffer;

.field private pos:I


# direct methods
.method public constructor <init>(Lorg/apache/http/io/SessionInputBuffer;)V
    .registers 4
    .param p1, "in"    # Lorg/apache/http/io/SessionInputBuffer;

    .line 101
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 96
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 98
    new-array v1, v0, [Lorg/apache/http/Header;

    iput-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    .line 102
    if-eqz p1, :cond_1f

    .line 105
    iput-object p1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    .line 106
    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 107
    new-instance v0, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    .line 108
    return-void

    .line 103
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static exhaustInputStream(Ljava/io/InputStream;)V
    .registers 3
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 294
    .local v0, "buffer":[B
    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_b

    goto :goto_4

    .line 297
    :cond_b
    return-void
.end method

.method private getChunkSize()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    if-nez v0, :cond_21

    .line 216
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    .line 217
    .local v0, "cr":I
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v1

    .line 218
    .local v1, "lf":I
    const/16 v2, 0xd

    if-ne v0, v2, :cond_19

    const/16 v2, 0xa

    if-ne v1, v2, :cond_19

    goto :goto_21

    .line 219
    :cond_19
    new-instance v2, Lorg/apache/http/MalformedChunkCodingException;

    const-string v3, "CRLF expected at end of chunk"

    invoke-direct {v2, v3}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    .end local v0    # "cr":I
    .end local v1    # "lf":I
    :cond_21
    :goto_21
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 225
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-interface {v0, v1}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v0

    .line 226
    .local v0, "i":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_58

    .line 230
    iget-object v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lorg/apache/http/util/CharArrayBuffer;->indexOf(I)I

    move-result v1

    .line 231
    .local v1, "separator":I
    if-gez v1, :cond_41

    .line 232
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v1

    .line 235
    :cond_41
    :try_start_41
    iget-object v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->buffer:Lorg/apache/http/util/CharArrayBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_4e} :catch_4f

    return v2

    .line 236
    :catch_4f
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Lorg/apache/http/MalformedChunkCodingException;

    const-string v4, "Bad chunk header"

    invoke-direct {v3, v4}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 227
    .end local v1    # "separator":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_58
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    const-string v2, "Chunked stream ended unexpectedly"

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private nextChunk()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->getChunkSize()I

    move-result v0

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    .line 189
    if-ltz v0, :cond_16

    .line 192
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->bof:Z

    .line 193
    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 194
    if-nez v0, :cond_15

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 196
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->parseTrailerHeaders()V

    .line 198
    :cond_15
    return-void

    .line 190
    :cond_16
    new-instance v0, Lorg/apache/http/MalformedChunkCodingException;

    const-string v1, "Negative chunk size"

    invoke-direct {v0, v1}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseTrailerHeaders()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    :try_start_0
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    const/4 v1, 0x0

    .line 248
    const/4 v2, -0x1

    invoke-static {v0, v2, v2, v1}, Lorg/apache/http/impl/io/AbstractMessageParser;->parseHeaders(Lorg/apache/http/io/SessionInputBuffer;IILorg/apache/http/message/LineParser;)[Lorg/apache/http/Header;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;
    :try_end_a
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_a} :catch_c

    .line 254
    nop

    .line 255
    return-void

    .line 249
    :catch_c
    move-exception v0

    .line 250
    .local v0, "e":Lorg/apache/http/HttpException;
    new-instance v1, Lorg/apache/http/MalformedChunkCodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid footer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 251
    invoke-virtual {v0}, Lorg/apache/http/HttpException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/http/MalformedChunkCodingException;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "ioe":Ljava/io/IOException;
    invoke-static {v1, v0}, Lorg/apache/http/util/ExceptionUtils;->initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 253
    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_17

    .line 266
    const/4 v0, 0x1

    :try_start_5
    iget-boolean v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-nez v1, :cond_c

    .line 267
    invoke-static {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->exhaustInputStream(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 270
    :cond_c
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 271
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 272
    goto :goto_17

    .line 270
    :catchall_11
    move-exception v1

    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    .line 271
    iput-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    .line 272
    throw v1

    .line 274
    :cond_17
    :goto_17
    return-void
.end method

.method public getFooters()[Lorg/apache/http/Header;
    .registers 2

    .line 277
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->footers:[Lorg/apache/http/Header;

    invoke-virtual {v0}, [Lorg/apache/http/Header;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/http/Header;

    return-object v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_25

    .line 126
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 127
    return v1

    .line 129
    :cond_a
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_18

    .line 130
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 131
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_18

    .line 132
    return v1

    .line 135
    :cond_18
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 136
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionInputBuffer;->read()I

    move-result v0

    return v0

    .line 124
    :cond_25
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/apache/http/impl/io/ChunkedInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 7
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->closed:Z

    if-nez v0, :cond_2d

    .line 156
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_a

    .line 157
    return v1

    .line 159
    :cond_a
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    iget v2, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    if-lt v0, v2, :cond_18

    .line 160
    invoke-direct {p0}, Lorg/apache/http/impl/io/ChunkedInputStream;->nextChunk()V

    .line 161
    iget-boolean v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->eof:Z

    if-eqz v0, :cond_18

    .line 162
    return v1

    .line 165
    :cond_18
    iget v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->chunkSize:I

    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 166
    iget-object v0, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->in:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/io/SessionInputBuffer;->read([BII)I

    move-result v0

    .line 167
    .local v0, "count":I
    iget v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/http/impl/io/ChunkedInputStream;->pos:I

    .line 168
    return v0

    .line 153
    .end local v0    # "count":I
    :cond_2d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read from closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
