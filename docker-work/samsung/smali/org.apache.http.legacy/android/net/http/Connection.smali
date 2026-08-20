.class public abstract Landroid/net/http/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# static fields
.field private static final DONE:I = 0x3

.field private static final DRAIN:I = 0x2

.field private static final HTTP_CONNECTION:Ljava/lang/String; = "http.connection"

.field private static final MAX_PIPE:I = 0x3

.field private static final MIN_PIPE:I = 0x2

.field private static final READ:I = 0x1

.field private static final RETRY_REQUEST_LIMIT:I = 0x2

.field private static final SEND:I = 0x0

.field static final SOCKET_TIMEOUT:I = 0xea60

.field private static STATE_CANCEL_REQUESTED:I

.field private static STATE_NORMAL:I

.field private static final states:[Ljava/lang/String;


# instance fields
.field private mActive:I

.field private mBuf:[B

.field private mCanPersist:Z

.field mCertificate:Landroid/net/http/SslCertificate;

.field mContext:Landroid/content/Context;

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

.field private mHttpContext:Lorg/apache/http/protocol/HttpContext;

.field mRequestFeeder:Landroid/net/http/RequestFeeder;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 50
    const-string v0, "SEND"

    const-string v1, "READ"

    const-string v2, "DRAIN"

    const-string v3, "DONE"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/http/Connection;->states:[Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    sput v0, Landroid/net/http/Connection;->STATE_NORMAL:I

    .line 79
    const/4 v0, 0x1

    sput v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 63
    iput-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 80
    sget v1, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v1, p0, Landroid/net/http/Connection;->mActive:I

    .line 103
    iput-object p1, p0, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    .line 105
    iput-object p3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 108
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1, v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v1, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    .line 109
    return-void
.end method

.method private clearPipe(Ljava/util/LinkedList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/net/http/Request;",
            ">;)Z"
        }
    .end annotation

    .line 325
    .local p1, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v0, 0x1

    .line 328
    .local v0, "empty":Z
    iget-object v1, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    monitor-enter v1

    .line 330
    :goto_4
    :try_start_4
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_17

    .line 331
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/http/Request;

    .line 334
    .local v2, "tReq":Landroid/net/http/Request;
    iget-object v3, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v3, v2}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 335
    const/4 v0, 0x0

    goto :goto_4

    .line 337
    .end local v2    # "tReq":Landroid/net/http/Request;
    :cond_17
    if-eqz v0, :cond_24

    iget-object v2, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v3, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v2, v3}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    .line 338
    :cond_24
    monitor-exit v1

    .line 339
    return v0

    .line 338
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v2
.end method

.method static getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "host"    # Lorg/apache/http/HttpHost;
    .param p2, "proxy"    # Lorg/apache/http/HttpHost;
    .param p3, "requestFeeder"    # Landroid/net/http/RequestFeeder;

    .line 123
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 124
    new-instance v0, Landroid/net/http/HttpConnection;

    invoke-direct {v0, p0, p1, p3}, Landroid/net/http/HttpConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    return-object v0

    .line 128
    :cond_12
    new-instance v0, Landroid/net/http/HttpsConnection;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/http/HttpsConnection;-><init>(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)V

    return-object v0
.end method

.method private static getEventHandlerErrorString(I)Ljava/lang/String;
    .registers 2
    .param p0, "errorId"    # I

    .line 452
    packed-switch p0, :pswitch_data_36

    .line 502
    const-string v0, "UNKNOWN_ERROR"

    return-object v0

    .line 454
    :pswitch_6
    const-string v0, "OK"

    return-object v0

    .line 457
    :pswitch_9
    const-string v0, "ERROR"

    return-object v0

    .line 460
    :pswitch_c
    const-string v0, "ERROR_LOOKUP"

    return-object v0

    .line 463
    :pswitch_f
    const-string v0, "ERROR_UNSUPPORTED_AUTH_SCHEME"

    return-object v0

    .line 466
    :pswitch_12
    const-string v0, "ERROR_AUTH"

    return-object v0

    .line 469
    :pswitch_15
    const-string v0, "ERROR_PROXYAUTH"

    return-object v0

    .line 472
    :pswitch_18
    const-string v0, "ERROR_CONNECT"

    return-object v0

    .line 475
    :pswitch_1b
    const-string v0, "ERROR_IO"

    return-object v0

    .line 478
    :pswitch_1e
    const-string v0, "ERROR_TIMEOUT"

    return-object v0

    .line 481
    :pswitch_21
    const-string v0, "ERROR_REDIRECT_LOOP"

    return-object v0

    .line 484
    :pswitch_24
    const-string v0, "ERROR_UNSUPPORTED_SCHEME"

    return-object v0

    .line 487
    :pswitch_27
    const-string v0, "ERROR_FAILED_SSL_HANDSHAKE"

    return-object v0

    .line 490
    :pswitch_2a
    const-string v0, "ERROR_BAD_URL"

    return-object v0

    .line 493
    :pswitch_2d
    const-string v0, "FILE_ERROR"

    return-object v0

    .line 496
    :pswitch_30
    const-string v0, "FILE_NOT_FOUND_ERROR"

    return-object v0

    .line 499
    :pswitch_33
    const-string v0, "TOO_MANY_REQUESTS_ERROR"

    return-object v0

    :pswitch_data_36
    .packed-switch -0xf
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z
    .registers 7
    .param p1, "req"    # Landroid/net/http/Request;
    .param p2, "errorId"    # I
    .param p3, "e"    # Ljava/lang/Exception;

    .line 425
    const/4 v0, 0x1

    .line 432
    .local v0, "ret":Z
    iget v1, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/net/http/Request;->mFailCount:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_2a

    .line 433
    const/4 v0, 0x0

    .line 435
    if-gez p2, :cond_12

    .line 436
    invoke-static {p2}, Landroid/net/http/Connection;->getEventHandlerErrorString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "error":Ljava/lang/String;
    goto :goto_22

    .line 438
    .end local v1    # "error":Ljava/lang/String;
    :cond_12
    invoke-virtual {p3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 439
    .local v1, "cause":Ljava/lang/Throwable;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_21

    :cond_1d
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_21
    move-object v1, v2

    .line 441
    .local v1, "error":Ljava/lang/String;
    :goto_22
    iget-object v2, p1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v2, p2, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 442
    invoke-virtual {p1}, Landroid/net/http/Request;->complete()V

    .line 445
    .end local v1    # "error":Ljava/lang/String;
    :cond_2a
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 446
    iget-object v1, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v2, "http.connection"

    invoke-interface {v1, v2}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 448
    return v0
.end method

.method private keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z
    .registers 11
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;

    .line 516
    nop

    .line 517
    const-string v0, "http.connection"

    invoke-interface {p4, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 519
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->isOpen()Z

    move-result v2

    if-nez v2, :cond_13

    .line 520
    return v1

    .line 523
    :cond_13
    if-eqz p1, :cond_2e

    .line 524
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2e

    .line 525
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_2d

    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v2}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 528
    :cond_2d
    return v1

    .line 533
    :cond_2e
    const/4 v2, 0x1

    if-ne p3, v2, :cond_32

    .line 534
    return v1

    .line 535
    :cond_32
    const/4 v1, 0x2

    if-ne p3, v1, :cond_36

    .line 536
    return v2

    .line 539
    :cond_36
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_0:Lorg/apache/http/HttpVersion;

    invoke-virtual {p2, v1}, Lorg/apache/http/ProtocolVersion;->lessEquals(Lorg/apache/http/ProtocolVersion;)Z

    move-result v1

    xor-int/2addr v1, v2

    return v1
.end method

.method private openHttpConnection(Landroid/net/http/Request;)Z
    .registers 11
    .param p1, "req"    # Landroid/net/http/Request;

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "now":J
    const/4 v2, 0x0

    .line 349
    .local v2, "error":I
    const/4 v3, 0x0

    .line 353
    .local v3, "exception":Ljava/lang/Exception;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_9
    iput-object v4, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    .line 354
    invoke-virtual {p0, p1}, Landroid/net/http/Connection;->openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;

    move-result-object v4

    iput-object v4, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    .line 355
    if-eqz v4, :cond_23

    .line 356
    const v7, 0xea60

    invoke-virtual {v4, v7}, Landroid/net/http/AndroidHttpClientConnection;->setSocketTimeout(I)V

    .line 357
    iget-object v4, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v7, "http.connection"

    iget-object v8, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-interface {v4, v7, v8}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3e

    .line 363
    :cond_23
    iput v6, p1, Landroid/net/http/Request;->mFailCount:I
    :try_end_25
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_25} :catch_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_25} :catch_35
    .catch Landroid/net/http/SSLConnectionClosedByUserException; {:try_start_9 .. :try_end_25} :catch_31
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_9 .. :try_end_25} :catch_2a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_26

    .line 364
    return v5

    .line 389
    :catch_26
    move-exception v4

    .line 390
    .local v4, "e":Ljava/io/IOException;
    const/4 v2, -0x6

    .line 391
    move-object v3, v4

    goto :goto_3f

    .line 381
    .end local v4    # "e":Ljava/io/IOException;
    :catch_2a
    move-exception v4

    .line 384
    .local v4, "e":Ljavax/net/ssl/SSLHandshakeException;
    iput v6, p1, Landroid/net/http/Request;->mFailCount:I

    .line 387
    const/16 v2, -0xb

    .line 388
    move-object v3, v4

    .end local v4    # "e":Ljavax/net/ssl/SSLHandshakeException;
    goto :goto_3e

    .line 375
    :catch_31
    move-exception v4

    .line 378
    .local v4, "e":Landroid/net/http/SSLConnectionClosedByUserException;
    iput v6, p1, Landroid/net/http/Request;->mFailCount:I

    .line 380
    return v5

    .line 370
    .end local v4    # "e":Landroid/net/http/SSLConnectionClosedByUserException;
    :catch_35
    move-exception v4

    .line 372
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x6

    .line 373
    iput v6, p1, Landroid/net/http/Request;->mFailCount:I

    .line 374
    move-object v3, v4

    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_3e

    .line 366
    :catch_3b
    move-exception v4

    .line 368
    .local v4, "e":Ljava/net/UnknownHostException;
    const/4 v2, -0x2

    .line 369
    move-object v3, v4

    .line 392
    .end local v4    # "e":Ljava/net/UnknownHostException;
    :goto_3e
    nop

    .line 400
    :goto_3f
    const/4 v4, 0x1

    if-nez v2, :cond_43

    .line 401
    return v4

    .line 403
    :cond_43
    iget v7, p1, Landroid/net/http/Request;->mFailCount:I

    if-ge v7, v6, :cond_52

    .line 405
    iget-object v6, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    invoke-interface {v6, p1}, Landroid/net/http/RequestFeeder;->requeueRequest(Landroid/net/http/Request;)V

    .line 406
    iget v6, p1, Landroid/net/http/Request;->mFailCount:I

    add-int/2addr v6, v4

    iput v6, p1, Landroid/net/http/Request;->mFailCount:I

    goto :goto_55

    .line 408
    :cond_52
    invoke-direct {p0, p1, v2, v3}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    .line 410
    :goto_55
    if-nez v2, :cond_58

    move v5, v4

    :cond_58
    return v5
.end method


# virtual methods
.method cancel()V
    .registers 2

    .line 144
    sget v0, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    iput v0, p0, Landroid/net/http/Connection;->mActive:I

    .line 145
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 148
    return-void
.end method

.method abstract closeConnection()V
.end method

.method getBuf()[B
    .registers 2

    .line 568
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    if-nez v0, :cond_a

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    .line 569
    :cond_a
    iget-object v0, p0, Landroid/net/http/Connection;->mBuf:[B

    return-object v0
.end method

.method getCanPersist()Z
    .registers 2

    .line 551
    iget-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    return v0
.end method

.method getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    .line 136
    iget-object v0, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method getHost()Lorg/apache/http/HttpHost;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    return-object v0
.end method

.method getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .registers 2

    .line 507
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method abstract getScheme()Ljava/lang/String;
.end method

.method abstract openConnection(Landroid/net/http/Request;)Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method processRequests(Landroid/net/http/Request;)V
    .registers 15
    .param p1, "firstRequest"    # Landroid/net/http/Request;

    .line 155
    const/4 v0, 0x0

    .line 157
    .local v0, "req":Landroid/net/http/Request;
    const/4 v1, 0x0

    .line 158
    .local v1, "error":I
    const/4 v2, 0x0

    .line 160
    .local v2, "exception":Ljava/lang/Exception;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .local v3, "pipe":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v4, 0x2

    .local v4, "minPipe":I
    const/4 v5, 0x3

    .line 163
    .local v5, "maxPipe":I
    const/4 v6, 0x0

    .line 165
    .local v6, "state":I
    :goto_b
    const/4 v7, 0x3

    if-eq v6, v7, :cond_106

    .line 172
    iget v8, p0, Landroid/net/http/Connection;->mActive:I

    sget v9, Landroid/net/http/Connection;->STATE_CANCEL_REQUESTED:I

    if-ne v8, v9, :cond_20

    .line 174
    const-wide/16 v8, 0x64

    :try_start_16
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 175
    :goto_19
    goto :goto_1c

    :catch_1a
    move-exception v8

    goto :goto_19

    .line 176
    :goto_1c
    sget v8, Landroid/net/http/Connection;->STATE_NORMAL:I

    iput v8, p0, Landroid/net/http/Connection;->mActive:I

    .line 179
    :cond_20
    const/4 v8, 0x0

    const/4 v9, 0x1

    packed-switch v6, :pswitch_data_108

    goto/16 :goto_104

    .line 262
    :pswitch_27
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->haveRequest(Lorg/apache/http/HttpHost;)Z

    move-result v10

    xor-int/2addr v10, v9

    .line 263
    .local v10, "empty":Z
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 264
    .local v11, "pipeSize":I
    const/4 v12, 0x2

    if-eq v6, v12, :cond_42

    if-ge v11, v4, :cond_42

    if-nez v10, :cond_42

    iget-boolean v12, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-eqz v12, :cond_42

    .line 266
    const/4 v6, 0x0

    .line 267
    goto/16 :goto_104

    .line 268
    :cond_42
    if-nez v11, :cond_4b

    .line 270
    if-eqz v10, :cond_47

    goto :goto_48

    :cond_47
    move v7, v8

    :goto_48
    move v6, v7

    .line 271
    goto/16 :goto_104

    .line 274
    :cond_4b
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/net/http/Request;

    .line 279
    :try_start_52
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0, v7}, Landroid/net/http/Request;->readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_57
    .catch Lorg/apache/http/ParseException; {:try_start_52 .. :try_end_57} :catch_60
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_57} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_52 .. :try_end_57} :catch_58

    goto :goto_63

    .line 286
    :catch_58
    move-exception v7

    .line 287
    .local v7, "e":Ljava/lang/IllegalStateException;
    move-object v2, v7

    .line 288
    const/4 v1, -0x7

    goto :goto_64

    .line 283
    .end local v7    # "e":Ljava/lang/IllegalStateException;
    :catch_5c
    move-exception v7

    .line 284
    .local v7, "e":Ljava/io/IOException;
    move-object v2, v7

    .line 285
    const/4 v1, -0x7

    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_63

    .line 280
    :catch_60
    move-exception v7

    .line 281
    .local v7, "e":Lorg/apache/http/ParseException;
    move-object v2, v7

    .line 282
    const/4 v1, -0x7

    .line 289
    .end local v7    # "e":Lorg/apache/http/ParseException;
    :goto_63
    nop

    .line 290
    :goto_64
    if-eqz v2, :cond_79

    .line 291
    invoke-direct {p0, v0, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v7

    if-eqz v7, :cond_76

    iget-boolean v7, v0, Landroid/net/http/Request;->mCancelled:Z

    if-nez v7, :cond_76

    .line 295
    invoke-virtual {v0}, Landroid/net/http/Request;->reset()V

    .line 296
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 298
    :cond_76
    const/4 v2, 0x0

    .line 299
    iput-boolean v8, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 301
    :cond_79
    iget-boolean v7, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v7, :cond_104

    .line 306
    invoke-virtual {p0}, Landroid/net/http/Connection;->closeConnection()V

    .line 308
    iget-object v7, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v8, "http.connection"

    invoke-interface {v7, v8}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    .line 309
    invoke-direct {p0, v3}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    .line 310
    move v5, v9

    move v4, v9

    .line 311
    const/4 v6, 0x0

    goto/16 :goto_104

    .line 181
    .end local v10    # "empty":Z
    .end local v11    # "pipeSize":I
    :pswitch_8f
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v10

    if-ne v10, v5, :cond_98

    .line 182
    const/4 v6, 0x1

    .line 183
    goto/16 :goto_104

    .line 186
    :cond_98
    if-nez p1, :cond_a3

    .line 187
    iget-object v10, p0, Landroid/net/http/Connection;->mRequestFeeder:Landroid/net/http/RequestFeeder;

    iget-object v11, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-interface {v10, v11}, Landroid/net/http/RequestFeeder;->getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;

    move-result-object v0

    goto :goto_a5

    .line 189
    :cond_a3
    move-object v0, p1

    .line 190
    const/4 p1, 0x0

    .line 192
    :goto_a5
    if-nez v0, :cond_aa

    .line 193
    const/4 v6, 0x2

    .line 194
    goto/16 :goto_104

    .line 196
    :cond_aa
    invoke-virtual {v0, p0}, Landroid/net/http/Request;->setConnection(Landroid/net/http/Connection;)V

    .line 199
    iget-boolean v10, v0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v10, :cond_b5

    .line 203
    invoke-virtual {v0}, Landroid/net/http/Request;->complete()V

    .line 204
    goto :goto_104

    .line 207
    :cond_b5
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    if-eqz v10, :cond_bf

    .line 208
    invoke-virtual {v10}, Landroid/net/http/AndroidHttpClientConnection;->isOpen()Z

    move-result v10

    if-nez v10, :cond_c7

    .line 215
    :cond_bf
    invoke-direct {p0, v0}, Landroid/net/http/Connection;->openHttpConnection(Landroid/net/http/Request;)Z

    move-result v10

    if-nez v10, :cond_c7

    .line 216
    const/4 v6, 0x3

    .line 217
    goto :goto_104

    .line 225
    :cond_c7
    iget-object v10, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v11, p0, Landroid/net/http/Connection;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-interface {v10, v11}, Landroid/net/http/EventHandler;->certificate(Landroid/net/http/SslCertificate;)V

    .line 231
    :try_start_ce
    iget-object v10, p0, Landroid/net/http/Connection;->mHttpClientConnection:Landroid/net/http/AndroidHttpClientConnection;

    invoke-virtual {v0, v10}, Landroid/net/http/Request;->sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    :try_end_d3
    .catch Lorg/apache/http/HttpException; {:try_start_ce .. :try_end_d3} :catch_dc
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d3} :catch_d8
    .catch Ljava/lang/IllegalStateException; {:try_start_ce .. :try_end_d3} :catch_d4

    goto :goto_df

    .line 238
    :catch_d4
    move-exception v10

    .line 239
    .local v10, "e":Ljava/lang/IllegalStateException;
    move-object v2, v10

    .line 240
    const/4 v1, -0x7

    goto :goto_e0

    .line 235
    .end local v10    # "e":Ljava/lang/IllegalStateException;
    :catch_d8
    move-exception v10

    .line 236
    .local v10, "e":Ljava/io/IOException;
    move-object v2, v10

    .line 237
    const/4 v1, -0x7

    .end local v10    # "e":Ljava/io/IOException;
    goto :goto_df

    .line 232
    :catch_dc
    move-exception v10

    .line 233
    .local v10, "e":Lorg/apache/http/HttpException;
    move-object v2, v10

    .line 234
    const/4 v1, -0x1

    .line 241
    .end local v10    # "e":Lorg/apache/http/HttpException;
    :goto_df
    nop

    .line 242
    :goto_e0
    if-eqz v2, :cond_fc

    .line 243
    invoke-direct {p0, v0, v1, v2}, Landroid/net/http/Connection;->httpFailure(Landroid/net/http/Request;ILjava/lang/Exception;)Z

    move-result v10

    if-eqz v10, :cond_ef

    iget-boolean v10, v0, Landroid/net/http/Request;->mCancelled:Z

    if-nez v10, :cond_ef

    .line 247
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 249
    :cond_ef
    const/4 v2, 0x0

    .line 250
    invoke-direct {p0, v3}, Landroid/net/http/Connection;->clearPipe(Ljava/util/LinkedList;)Z

    move-result v10

    if-eqz v10, :cond_f7

    goto :goto_f8

    :cond_f7
    move v7, v8

    :goto_f8
    move v6, v7

    .line 251
    move v5, v9

    move v4, v9

    .line 252
    goto :goto_104

    .line 255
    :cond_fc
    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 256
    iget-boolean v7, p0, Landroid/net/http/Connection;->mCanPersist:Z

    if-nez v7, :cond_104

    const/4 v6, 0x1

    .line 311
    :cond_104
    :goto_104
    goto/16 :goto_b

    .line 317
    :cond_106
    return-void

    nop

    :pswitch_data_108
    .packed-switch 0x0
        :pswitch_8f
        :pswitch_27
        :pswitch_27
    .end packed-switch
.end method

.method setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V
    .registers 5
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;
    .param p2, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p3, "connType"    # I

    .line 543
    iget-object v0, p0, Landroid/net/http/Connection;->mHttpContext:Lorg/apache/http/protocol/HttpContext;

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/http/Connection;->keepAlive(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 544
    return-void
.end method

.method setCanPersist(Z)V
    .registers 2
    .param p1, "canPersist"    # Z

    .line 547
    iput-boolean p1, p0, Landroid/net/http/Connection;->mCanPersist:Z

    .line 548
    return-void
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 564
    :try_start_1
    iget-object v0, p0, Landroid/net/http/Connection;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-object v0

    .line 564
    .end local p0    # "this":Landroid/net/http/Connection;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
