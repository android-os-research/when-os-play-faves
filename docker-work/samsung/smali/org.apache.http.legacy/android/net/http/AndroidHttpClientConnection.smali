.class public Landroid/net/http/AndroidHttpClientConnection;
.super Ljava/lang/Object;
.source "AndroidHttpClientConnection.java"

# interfaces
.implements Lorg/apache/http/HttpInetConnection;
.implements Lorg/apache/http/HttpConnection;


# instance fields
.field private final entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

.field private inbuffer:Lorg/apache/http/io/SessionInputBuffer;

.field private maxHeaderCount:I

.field private maxLineLength:I

.field private metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

.field private volatile open:Z

.field private outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

.field private requestWriter:Lorg/apache/http/io/HttpMessageWriter;

.field private socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 65
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 72
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 73
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 75
    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 78
    new-instance v0, Lorg/apache/http/impl/entity/EntitySerializer;

    new-instance v1, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lorg/apache/http/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lorg/apache/http/impl/entity/EntitySerializer;-><init>(Lorg/apache/http/entity/ContentLengthStrategy;)V

    iput-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    .line 80
    return-void
.end method

.method private assertNotOpen()V
    .registers 3

    .line 140
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    .line 143
    return-void

    .line 141
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is already open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertOpen()V
    .registers 3

    .line 146
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-eqz v0, :cond_5

    .line 149
    return-void

    .line 147
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Connection is not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private determineLength(Landroid/net/http/Headers;)J
    .registers 9
    .param p1, "headers"    # Landroid/net/http/Headers;

    .line 411
    invoke-virtual {p1}, Landroid/net/http/Headers;->getTransferEncoding()J

    move-result-wide v0

    .line 414
    .local v0, "transferEncoding":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_b

    .line 415
    return-wide v0

    .line 417
    :cond_b
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentLength()J

    move-result-wide v2

    .line 418
    .local v2, "contentlen":J
    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-lez v6, :cond_16

    .line 419
    return-wide v2

    .line 421
    :cond_16
    return-wide v4
.end method


# virtual methods
.method public bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V
    .registers 9
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    if-eqz p1, :cond_71

    .line 94
    if-eqz p2, :cond_69

    .line 97
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertNotOpen()V

    .line 98
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getTcpNoDelay(Lorg/apache/http/params/HttpParams;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 99
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSoTimeout(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 101
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getLinger(Lorg/apache/http/params/HttpParams;)I

    move-result v0

    .line 102
    .local v0, "linger":I
    const/4 v1, 0x1

    if-ltz v0, :cond_24

    .line 103
    if-lez v0, :cond_20

    move v2, v1

    goto :goto_21

    :cond_20
    const/4 v2, 0x0

    :goto_21
    invoke-virtual {p1, v2, v0}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 105
    :cond_24
    iput-object p1, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 107
    invoke-static {p2}, Lorg/apache/http/params/HttpConnectionParams;->getSocketBufferSize(Lorg/apache/http/params/HttpParams;)I

    move-result v2

    .line 108
    .local v2, "buffersize":I
    new-instance v3, Lorg/apache/http/impl/io/SocketInputBuffer;

    invoke-direct {v3, p1, v2, p2}, Lorg/apache/http/impl/io/SocketInputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 109
    new-instance v3, Lorg/apache/http/impl/io/SocketOutputBuffer;

    invoke-direct {v3, p1, v2, p2}, Lorg/apache/http/impl/io/SocketOutputBuffer;-><init>(Ljava/net/Socket;ILorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 111
    const-string v3, "http.connection.max-header-count"

    const/4 v4, -0x1

    invoke-interface {p2, v3, v4}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    .line 113
    const-string v3, "http.connection.max-line-length"

    invoke-interface {p2, v3, v4}, Lorg/apache/http/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    .line 116
    new-instance v3, Lorg/apache/http/impl/io/HttpRequestWriter;

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p2}, Lorg/apache/http/impl/io/HttpRequestWriter;-><init>(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/message/LineFormatter;Lorg/apache/http/params/HttpParams;)V

    iput-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    .line 118
    new-instance v3, Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    .line 119
    invoke-interface {v4}, Lorg/apache/http/io/SessionInputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v4

    iget-object v5, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 120
    invoke-interface {v5}, Lorg/apache/http/io/SessionOutputBuffer;->getMetrics()Lorg/apache/http/io/HttpTransportMetrics;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;-><init>(Lorg/apache/http/io/HttpTransportMetrics;Lorg/apache/http/io/HttpTransportMetrics;)V

    iput-object v3, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    .line 122
    iput-boolean v1, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 123
    return-void

    .line 95
    .end local v0    # "linger":I
    .end local v2    # "buffersize":I
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP parameters may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_71
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Socket may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-nez v0, :cond_5

    .line 223
    return-void

    .line 225
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 226
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    .line 229
    :try_start_b
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownOutput()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_b .. :try_end_10} :catch_11

    .line 231
    goto :goto_14

    .line 236
    :catch_11
    move-exception v0

    goto :goto_1c

    .line 230
    :catch_13
    move-exception v0

    .line 233
    :goto_14
    :try_start_14
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->shutdownInput()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_19} :catch_11

    .line 235
    goto :goto_1b

    .line 234
    :catch_1a
    move-exception v0

    .line 238
    :goto_1b
    nop

    .line 239
    :goto_1c
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 240
    return-void
.end method

.method protected doFlush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    invoke-interface {v0}, Lorg/apache/http/io/SessionOutputBuffer;->flush()V

    .line 281
    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 285
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->doFlush()V

    .line 286
    return-void
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .registers 2

    .line 157
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 158
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 160
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalPort()I
    .registers 2

    .line 165
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 166
    invoke-virtual {v0}, Ljava/net/Socket;->getLocalPort()I

    move-result v0

    return v0

    .line 168
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getMetrics()Lorg/apache/http/HttpConnectionMetrics;
    .registers 2

    .line 456
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .registers 2

    .line 173
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 174
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0

    .line 176
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemotePort()I
    .registers 2

    .line 181
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 182
    invoke-virtual {v0}, Ljava/net/Socket;->getPort()I

    move-result v0

    return v0

    .line 184
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method public getSocketTimeout()I
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    const/4 v1, -0x1

    if-eqz v0, :cond_c

    .line 204
    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v0
    :try_end_9
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_9} :catch_a

    return v0

    .line 205
    :catch_a
    move-exception v0

    .line 206
    .local v0, "ignore":Ljava/net/SocketException;
    return v1

    .line 209
    .end local v0    # "ignore":Ljava/net/SocketException;
    :cond_c
    return v1
.end method

.method public isOpen()Z
    .registers 2

    .line 153
    iget-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isStale()Z
    .registers 3

    .line 442
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 444
    const/4 v0, 0x1

    :try_start_4
    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v1, v0}, Lorg/apache/http/io/SessionInputBuffer;->isDataAvailable(I)Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_b

    .line 445
    const/4 v0, 0x0

    return v0

    .line 446
    :catch_b
    move-exception v1

    .line 447
    .local v1, "ex":Ljava/io/IOException;
    return v0
.end method

.method public parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;
    .registers 18
    .param p1, "headers"    # Landroid/net/http/Headers;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 298
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 300
    new-instance v2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 302
    .local v2, "current":Lorg/apache/http/util/CharArrayBuffer;
    iget-object v4, v0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v4, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c2

    .line 307
    sget-object v4, Lorg/apache/http/message/BasicLineParser;->DEFAULT:Lorg/apache/http/message/BasicLineParser;

    new-instance v6, Lorg/apache/http/message/ParserCursor;

    .line 308
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v6, v8, v7}, Lorg/apache/http/message/ParserCursor;-><init>(II)V

    .line 307
    invoke-virtual {v4, v2, v6}, Lorg/apache/http/message/BasicLineParser;->parseStatusLine(Lorg/apache/http/util/CharArrayBuffer;Lorg/apache/http/message/ParserCursor;)Lorg/apache/http/StatusLine;

    move-result-object v4

    .line 311
    .local v4, "statusline":Lorg/apache/http/StatusLine;
    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 314
    .local v6, "statusCode":I
    const/4 v7, 0x0

    .line 315
    .local v7, "previous":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v9, 0x0

    .line 317
    .local v9, "headerNumber":I
    :goto_2d
    if-nez v2, :cond_36

    .line 318
    new-instance v10, Lorg/apache/http/util/CharArrayBuffer;

    invoke-direct {v10, v3}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    move-object v2, v10

    goto :goto_39

    .line 321
    :cond_36
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->clear()V

    .line 323
    :goto_39
    iget-object v10, v0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-interface {v10, v2}, Lorg/apache/http/io/SessionInputBuffer;->readLine(Lorg/apache/http/util/CharArrayBuffer;)I

    move-result v10

    .line 324
    .local v10, "l":I
    if-eq v10, v5, :cond_b3

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_4a

    .line 325
    goto/16 :goto_b3

    .line 331
    :cond_4a
    invoke-virtual {v2, v8}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v11

    .line 332
    .local v11, "first":C
    const/16 v13, 0x9

    const/16 v14, 0x20

    if-eq v11, v14, :cond_56

    if-ne v11, v13, :cond_95

    :cond_56
    if-eqz v7, :cond_95

    .line 335
    const/4 v15, 0x0

    .line 336
    .local v15, "start":I
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v3

    .line 337
    .local v3, "length":I
    :goto_5d
    if-ge v15, v3, :cond_6d

    .line 338
    invoke-virtual {v2, v15}, Lorg/apache/http/util/CharArrayBuffer;->charAt(I)C

    move-result v5

    .line 339
    .local v5, "ch":C
    if-eq v5, v14, :cond_68

    if-eq v5, v13, :cond_68

    .line 340
    goto :goto_6d

    .line 342
    :cond_68
    nop

    .end local v5    # "ch":C
    add-int/lit8 v15, v15, 0x1

    .line 343
    const/4 v5, -0x1

    goto :goto_5d

    .line 344
    :cond_6d
    :goto_6d
    iget v5, v0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    if-lez v5, :cond_89

    .line 345
    invoke-virtual {v7}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    add-int/2addr v5, v12

    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v12

    add-int/2addr v5, v12

    sub-int/2addr v5, v15

    iget v12, v0, Landroid/net/http/AndroidHttpClientConnection;->maxLineLength:I

    if-gt v5, v12, :cond_81

    goto :goto_89

    .line 347
    :cond_81
    new-instance v5, Ljava/io/IOException;

    const-string v8, "Maximum line length limit exceeded"

    invoke-direct {v5, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 349
    :cond_89
    :goto_89
    invoke-virtual {v7, v14}, Lorg/apache/http/util/CharArrayBuffer;->append(C)V

    .line 350
    invoke-virtual {v2}, Lorg/apache/http/util/CharArrayBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v15

    invoke-virtual {v7, v2, v15, v5}, Lorg/apache/http/util/CharArrayBuffer;->append(Lorg/apache/http/util/CharArrayBuffer;II)V

    .line 351
    .end local v3    # "length":I
    .end local v15    # "start":I
    goto :goto_9f

    .line 352
    :cond_95
    if-eqz v7, :cond_9a

    .line 353
    invoke-virtual {v1, v7}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 355
    :cond_9a
    add-int/lit8 v9, v9, 0x1

    .line 356
    move-object v3, v2

    .line 357
    .end local v7    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    .local v3, "previous":Lorg/apache/http/util/CharArrayBuffer;
    const/4 v2, 0x0

    move-object v7, v3

    .line 359
    .end local v3    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    .restart local v7    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    :goto_9f
    iget v3, v0, Landroid/net/http/AndroidHttpClientConnection;->maxHeaderCount:I

    if-lez v3, :cond_ae

    if-ge v9, v3, :cond_a6

    goto :goto_ae

    .line 360
    :cond_a6
    new-instance v3, Ljava/io/IOException;

    const-string v5, "Maximum header count exceeded"

    invoke-direct {v3, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v10    # "l":I
    .end local v11    # "first":C
    :cond_ae
    :goto_ae
    const/16 v3, 0x40

    const/4 v5, -0x1

    goto/16 :goto_2d

    .line 364
    :cond_b3
    :goto_b3
    if-eqz v7, :cond_b8

    .line 365
    invoke-virtual {v1, v7}, Landroid/net/http/Headers;->parseHeader(Lorg/apache/http/util/CharArrayBuffer;)V

    .line 368
    :cond_b8
    const/16 v3, 0xc8

    if-lt v6, v3, :cond_c1

    .line 369
    iget-object v3, v0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v3}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    .line 371
    :cond_c1
    return-object v4

    .line 303
    .end local v4    # "statusline":Lorg/apache/http/StatusLine;
    .end local v6    # "statusCode":I
    .end local v7    # "previous":Lorg/apache/http/util/CharArrayBuffer;
    .end local v9    # "headerNumber":I
    :cond_c2
    new-instance v3, Lorg/apache/http/NoHttpResponseException;

    const-string v4, "The target server failed to respond"

    invoke-direct {v3, v4}, Lorg/apache/http/NoHttpResponseException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;
    .registers 9
    .param p1, "headers"    # Landroid/net/http/Headers;

    .line 380
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 381
    new-instance v0, Lorg/apache/http/entity/BasicHttpEntity;

    invoke-direct {v0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    .line 383
    .local v0, "entity":Lorg/apache/http/entity/BasicHttpEntity;
    invoke-direct {p0, p1}, Landroid/net/http/AndroidHttpClientConnection;->determineLength(Landroid/net/http/Headers;)J

    move-result-wide v1

    .line 384
    .local v1, "len":J
    const-wide/16 v3, -0x2

    cmp-long v3, v1, v3

    const-wide/16 v4, -0x1

    if-nez v3, :cond_26

    .line 385
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 386
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 387
    new-instance v3, Lorg/apache/http/impl/io/ChunkedInputStream;

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/io/ChunkedInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_4c

    .line 388
    :cond_26
    cmp-long v3, v1, v4

    const/4 v6, 0x0

    if-nez v3, :cond_3c

    .line 389
    invoke-virtual {v0, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 390
    invoke-virtual {v0, v4, v5}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 391
    new-instance v3, Lorg/apache/http/impl/io/IdentityInputStream;

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v3, v4}, Lorg/apache/http/impl/io/IdentityInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    goto :goto_4c

    .line 393
    :cond_3c
    invoke-virtual {v0, v6}, Lorg/apache/http/entity/BasicHttpEntity;->setChunked(Z)V

    .line 394
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/entity/BasicHttpEntity;->setContentLength(J)V

    .line 395
    new-instance v3, Lorg/apache/http/impl/io/ContentLengthInputStream;

    iget-object v4, p0, Landroid/net/http/AndroidHttpClientConnection;->inbuffer:Lorg/apache/http/io/SessionInputBuffer;

    invoke-direct {v3, v4, v1, v2}, Lorg/apache/http/impl/io/ContentLengthInputStream;-><init>(Lorg/apache/http/io/SessionInputBuffer;J)V

    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContent(Ljava/io/InputStream;)V

    .line 398
    :goto_4c
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentType()Ljava/lang/String;

    move-result-object v3

    .line 399
    .local v3, "contentTypeHeader":Ljava/lang/String;
    if-eqz v3, :cond_55

    .line 400
    invoke-virtual {v0, v3}, Lorg/apache/http/entity/BasicHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 402
    :cond_55
    invoke-virtual {p1}, Landroid/net/http/Headers;->getContentEncoding()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "contentEncodingHeader":Ljava/lang/String;
    if-eqz v4, :cond_5e

    .line 404
    invoke-virtual {v0, v4}, Lorg/apache/http/entity/BasicHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 407
    :cond_5e
    return-object v0
.end method

.method public sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V
    .registers 5
    .param p1, "request"    # Lorg/apache/http/HttpEntityEnclosingRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    if-eqz p1, :cond_18

    .line 269
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 270
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_c

    .line 271
    return-void

    .line 273
    :cond_c
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->entityserializer:Lorg/apache/http/impl/entity/EntitySerializer;

    iget-object v1, p0, Landroid/net/http/AndroidHttpClientConnection;->outbuffer:Lorg/apache/http/io/SessionOutputBuffer;

    .line 276
    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 273
    invoke-virtual {v0, v1, p1, v2}, Lorg/apache/http/impl/entity/EntitySerializer;->serialize(Lorg/apache/http/io/SessionOutputBuffer;Lorg/apache/http/HttpMessage;Lorg/apache/http/HttpEntity;)V

    .line 277
    return-void

    .line 267
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendRequestHeader(Lorg/apache/http/HttpRequest;)V
    .registers 4
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    if-eqz p1, :cond_10

    .line 253
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 254
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->requestWriter:Lorg/apache/http/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lorg/apache/http/io/HttpMessageWriter;->write(Lorg/apache/http/HttpMessage;)V

    .line 255
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->metrics:Lorg/apache/http/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v0}, Lorg/apache/http/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    .line 256
    return-void

    .line 251
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSocketTimeout(I)V
    .registers 3
    .param p1, "timeout"    # I

    .line 189
    invoke-direct {p0}, Landroid/net/http/AndroidHttpClientConnection;->assertOpen()V

    .line 190
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_c

    .line 192
    :try_start_7
    invoke-virtual {v0, p1}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_a
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_a} :catch_b

    .line 197
    goto :goto_c

    .line 193
    :catch_b
    move-exception v0

    .line 199
    :cond_c
    :goto_c
    return-void
.end method

.method public shutdown()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/AndroidHttpClientConnection;->open:Z

    .line 215
    iget-object v0, p0, Landroid/net/http/AndroidHttpClientConnection;->socket:Ljava/net/Socket;

    .line 216
    .local v0, "tmpsocket":Ljava/net/Socket;
    if-eqz v0, :cond_a

    .line 217
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 219
    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 130
    invoke-virtual {p0}, Landroid/net/http/AndroidHttpClientConnection;->getRemotePort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 132
    :cond_24
    const-string v1, "closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :goto_29
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
