.class public Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 92
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .registers 11
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "host"    # Lorg/apache/http/HttpHost;
    .param p3, "proxyHost"    # Lorg/apache/http/HttpHost;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "bodyProvider"    # Ljava/io/InputStream;
    .param p6, "bodyLength"    # I
    .param p7, "eventHandler"    # Landroid/net/http/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 109
    .local p8, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 69
    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 73
    iput v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 83
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 86
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 110
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 111
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 112
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 113
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 114
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 115
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    .line 117
    if-nez p5, :cond_35

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 118
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    goto :goto_45

    .line 120
    :cond_35
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    .line 121
    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 125
    if-eqz p5, :cond_45

    .line 126
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 129
    :cond_45
    :goto_45
    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Host"

    invoke-virtual {p0, v1, v0}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .registers 4
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "status"    # I

    .line 473
    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 474
    return v1

    .line 476
    :cond_12
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_1f

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_1f

    const/16 v0, 0x130

    if-eq p1, v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .registers 7
    .param p1, "bodyProvider"    # Ljava/io/InputStream;
    .param p2, "bodyLength"    # I

    .line 490
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 495
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 497
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    check-cast v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v2, p2

    invoke-direct {v1, p1, v2, v3}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 499
    return-void

    .line 491
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 168
    if-eqz p1, :cond_32

    .line 173
    if-eqz p2, :cond_10

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_10

    .line 178
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-void

    .line 174
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null or empty value for header \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "damage":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 176
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    .end local v0    # "damage":Ljava/lang/String;
    :cond_32
    const-string v0, "Null http header name"

    .line 170
    .restart local v0    # "damage":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method addHeaders(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 186
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 187
    return-void

    .line 191
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 192
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 194
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 196
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_27
    return-void
.end method

.method declared-synchronized cancel()V
    .registers 2

    monitor-enter p0

    .line 369
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 370
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 373
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_11

    .line 374
    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    .line 376
    .end local p0    # "this":Landroid/net/http/Request;
    :cond_11
    monitor-exit p0

    return-void

    .line 368
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method complete()V
    .registers 3

    .line 452
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 453
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 454
    monitor-exit v0

    .line 455
    return-void

    .line 454
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method error(ILjava/lang/String;)V
    .registers 4
    .param p1, "errorId"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 518
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0, p1, p2}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 519
    return-void
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .registers 2

    .line 158
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .registers 4

    .line 379
    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "myScheme":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 383
    .local v1, "myPort":I
    const/16 v2, 0x50

    if-eq v1, v2, :cond_18

    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_18
    const/16 v2, 0x1bb

    if-eq v1, v2, :cond_2b

    .line 384
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 385
    :cond_24
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 387
    :cond_2b
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getUri()Ljava/lang/String;
    .registers 3

    .line 392
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_3b

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 393
    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_3b

    .line 396
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 394
    :cond_3b
    :goto_3b
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method handleSslErrorResponse(Z)V
    .registers 3
    .param p1, "proceed"    # Z

    .line 507
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    check-cast v0, Landroid/net/http/HttpsConnection;

    .line 508
    .local v0, "connection":Landroid/net/http/HttpsConnection;
    if-eqz v0, :cond_9

    .line 509
    invoke-virtual {v0, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 511
    :cond_9
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 21
    .param p1, "httpClientConnection"    # Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .line 240
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_9

    return-void

    .line 242
    :cond_9
    const/4 v0, 0x0

    .line 243
    .local v0, "statusLine":Lorg/apache/http/StatusLine;
    const/4 v3, 0x0

    .line 244
    .local v3, "hasBody":Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 245
    const/4 v4, 0x0

    .line 247
    .local v4, "statusCode":I
    new-instance v5, Landroid/net/http/Headers;

    invoke-direct {v5}, Landroid/net/http/Headers;-><init>()V

    .line 249
    .local v5, "header":Landroid/net/http/Headers;
    :goto_14
    invoke-virtual {v2, v5}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 250
    .end local v0    # "statusLine":Lorg/apache/http/StatusLine;
    .local v6, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 251
    const/16 v7, 0xc8

    if-lt v4, v7, :cond_17a

    .line 256
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v8

    .line 257
    .local v8, "v":Lorg/apache/http/ProtocolVersion;
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-virtual {v8}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v9

    invoke-virtual {v8}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v10

    .line 258
    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v11

    .line 257
    invoke-interface {v0, v9, v10, v4, v11}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 259
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0, v5}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    iget-object v9, v1, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-static {v9, v4}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v3

    .line 263
    if-eqz v3, :cond_49

    .line 264
    invoke-virtual {v2, v5}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    move-object v9, v0

    goto :goto_4a

    .line 263
    :cond_49
    move-object v9, v0

    .line 268
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .local v9, "entity":Lorg/apache/http/HttpEntity;
    :goto_4a
    const-string v0, "bytes"

    .line 269
    invoke-virtual {v5}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v10

    .line 268
    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 271
    .local v10, "supportPartialContent":Z
    if-eqz v9, :cond_160

    .line 272
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    .line 275
    .local v11, "is":Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v12

    .line 276
    .local v12, "contentEncoding":Lorg/apache/http/Header;
    const/4 v13, 0x0

    .line 277
    .local v13, "nis":Ljava/io/InputStream;
    const/4 v14, 0x0

    .line 278
    .local v14, "buf":[B
    const/4 v15, 0x0

    .line 280
    .local v15, "count":I
    if-eqz v12, :cond_8b

    .line 281
    :try_start_63
    invoke-interface {v12}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v7, "gzip"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 282
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v11}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_74
    .catch Ljava/io/EOFException; {:try_start_63 .. :try_end_74} :catch_84
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_74} :catch_7d
    .catchall {:try_start_63 .. :try_end_74} :catchall_76

    move-object v13, v0

    .end local v13    # "nis":Ljava/io/InputStream;
    .local v0, "nis":Ljava/io/InputStream;
    goto :goto_8d

    .line 342
    .end local v0    # "nis":Ljava/io/InputStream;
    .restart local v13    # "nis":Ljava/io/InputStream;
    :catchall_76
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    goto/16 :goto_154

    .line 330
    :catch_7d
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    goto/16 :goto_12f

    .line 321
    :catch_84
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    goto/16 :goto_14b

    .line 284
    :cond_8b
    move-object v0, v11

    .end local v13    # "nis":Ljava/io/InputStream;
    .restart local v0    # "nis":Ljava/io/InputStream;
    move-object v13, v0

    .line 289
    .end local v0    # "nis":Ljava/io/InputStream;
    .restart local v13    # "nis":Ljava/io/InputStream;
    :goto_8d
    :try_start_8d
    iget-object v0, v1, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v0

    move-object v14, v0

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "len":I
    array-length v7, v14

    div-int/lit8 v7, v7, 0x2
    :try_end_98
    .catch Ljava/io/EOFException; {:try_start_8d .. :try_end_98} :catch_146
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_98} :catch_12a
    .catchall {:try_start_8d .. :try_end_98} :catchall_124

    move v2, v15

    move v15, v0

    .line 292
    .end local v0    # "len":I
    .local v2, "count":I
    .local v7, "lowWater":I
    .local v15, "len":I
    :goto_9a
    move/from16 v16, v3

    .end local v3    # "hasBody":Z
    .local v16, "hasBody":Z
    const/4 v3, -0x1

    if-eq v15, v3, :cond_11c

    .line 293
    :try_start_9f
    monitor-enter p0
    :try_end_a0
    .catch Ljava/io/EOFException; {:try_start_9f .. :try_end_a0} :catch_117
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_a0} :catch_112
    .catchall {:try_start_9f .. :try_end_a0} :catchall_10d

    .line 294
    :goto_a0
    :try_start_a0
    iget-boolean v0, v1, Landroid/net/http/Request;->mLoadingPaused:Z
    :try_end_a2
    .catchall {:try_start_a0 .. :try_end_a2} :catchall_fc

    if-eqz v0, :cond_d1

    .line 300
    :try_start_a4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_a7
    .catch Ljava/lang/InterruptedException; {:try_start_a4 .. :try_end_a7} :catch_ac
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a8

    .line 305
    goto :goto_a0

    .line 307
    :catchall_a8
    move-exception v0

    move-object/from16 v18, v8

    goto :goto_ff

    .line 301
    :catch_ac
    move-exception v0

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    .line 302
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_b1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_b6
    .catchall {:try_start_b1 .. :try_end_b6} :catchall_fc

    move-object/from16 v18, v8

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .local v18, "v":Lorg/apache/http/ProtocolVersion;
    :try_start_b8
    const-string v8, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 304
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 302
    invoke-static {v3}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 305
    .end local v0    # "e":Ljava/lang/InterruptedException;
    move-object/from16 v8, v18

    const/4 v3, -0x1

    goto :goto_a0

    .line 307
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :cond_d1
    move-object/from16 v18, v8

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    monitor-exit p0
    :try_end_d4
    .catchall {:try_start_b8 .. :try_end_d4} :catchall_10b

    .line 309
    :try_start_d4
    array-length v0, v14

    sub-int/2addr v0, v2

    invoke-virtual {v13, v14, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    move v15, v0

    .line 311
    const/4 v3, -0x1

    if-eq v15, v3, :cond_e6

    .line 312
    add-int/2addr v2, v15

    .line 313
    if-eqz v10, :cond_e6

    iget v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    add-int/2addr v0, v15

    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    .line 315
    :cond_e6
    const/4 v3, -0x1

    if-eq v15, v3, :cond_f1

    if-lt v2, v7, :cond_ec

    goto :goto_f1

    :cond_ec
    move/from16 v3, v16

    move-object/from16 v8, v18

    goto :goto_9a

    .line 317
    :cond_f1
    :goto_f1
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0, v14, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_f6
    .catch Ljava/io/EOFException; {:try_start_d4 .. :try_end_f6} :catch_108
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_f6} :catch_105
    .catchall {:try_start_d4 .. :try_end_f6} :catchall_101

    .line 318
    const/4 v2, 0x0

    move/from16 v3, v16

    move-object/from16 v8, v18

    goto :goto_9a

    .line 307
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :catchall_fc
    move-exception v0

    move-object/from16 v18, v8

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    :goto_ff
    :try_start_ff
    monitor-exit p0
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_10b

    .end local v2    # "count":I
    .end local v4    # "statusCode":I
    .end local v5    # "header":Landroid/net/http/Headers;
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "supportPartialContent":Z
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "contentEncoding":Lorg/apache/http/Header;
    .end local v13    # "nis":Ljava/io/InputStream;
    .end local v14    # "buf":[B
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .end local p0    # "this":Landroid/net/http/Request;
    .end local p1    # "httpClientConnection":Landroid/net/http/AndroidHttpClientConnection;
    :try_start_100
    throw v0
    :try_end_101
    .catch Ljava/io/EOFException; {:try_start_100 .. :try_end_101} :catch_108
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_101} :catch_105
    .catchall {:try_start_100 .. :try_end_101} :catchall_101

    .line 342
    .end local v7    # "lowWater":I
    .end local v15    # "len":I
    .restart local v2    # "count":I
    .restart local v4    # "statusCode":I
    .restart local v5    # "header":Landroid/net/http/Headers;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "supportPartialContent":Z
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v13    # "nis":Ljava/io/InputStream;
    .restart local v14    # "buf":[B
    .restart local v16    # "hasBody":Z
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local p0    # "this":Landroid/net/http/Request;
    .restart local p1    # "httpClientConnection":Landroid/net/http/AndroidHttpClientConnection;
    :catchall_101
    move-exception v0

    move v15, v2

    goto/16 :goto_154

    .line 330
    :catch_105
    move-exception v0

    move v15, v2

    goto :goto_12f

    .line 321
    :catch_108
    move-exception v0

    move v15, v2

    goto :goto_14b

    .line 307
    .restart local v7    # "lowWater":I
    .restart local v15    # "len":I
    :catchall_10b
    move-exception v0

    goto :goto_ff

    .line 342
    .end local v7    # "lowWater":I
    .end local v15    # "len":I
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :catchall_10d
    move-exception v0

    move-object/from16 v18, v8

    move v15, v2

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    goto :goto_154

    .line 330
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :catch_112
    move-exception v0

    move-object/from16 v18, v8

    move v15, v2

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    goto :goto_12f

    .line 321
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :catch_117
    move-exception v0

    move-object/from16 v18, v8

    move v15, v2

    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    goto :goto_14b

    .line 292
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v7    # "lowWater":I
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v15    # "len":I
    :cond_11c
    move-object/from16 v18, v8

    .line 342
    .end local v7    # "lowWater":I
    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .end local v15    # "len":I
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    if-eqz v13, :cond_164

    .line 343
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_164

    .line 342
    .end local v2    # "count":I
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v3    # "hasBody":Z
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .local v15, "count":I
    :catchall_124
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    .end local v3    # "hasBody":Z
    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v16    # "hasBody":Z
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    goto :goto_154

    .line 330
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v3    # "hasBody":Z
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :catch_12a
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    .line 332
    .end local v3    # "hasBody":Z
    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .local v0, "e":Ljava/io/IOException;
    .restart local v16    # "hasBody":Z
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    :goto_12f
    const/16 v2, 0xc8

    if-eq v4, v2, :cond_13b

    const/16 v2, 0xce

    if-ne v4, v2, :cond_138

    goto :goto_13b

    .line 342
    .end local v0    # "e":Ljava/io/IOException;
    :cond_138
    if-eqz v13, :cond_164

    .line 343
    goto :goto_15c

    .line 334
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_13b
    :goto_13b
    if-eqz v10, :cond_144

    if-lez v15, :cond_144

    .line 337
    :try_start_13f
    iget-object v2, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v2, v14, v15}, Landroid/net/http/EventHandler;->data([BI)V

    .line 339
    :cond_144
    nop

    .end local v4    # "statusCode":I
    .end local v5    # "header":Landroid/net/http/Headers;
    .end local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "supportPartialContent":Z
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "contentEncoding":Lorg/apache/http/Header;
    .end local v13    # "nis":Ljava/io/InputStream;
    .end local v14    # "buf":[B
    .end local v15    # "count":I
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .end local p0    # "this":Landroid/net/http/Request;
    .end local p1    # "httpClientConnection":Landroid/net/http/AndroidHttpClientConnection;
    throw v0

    .line 321
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "hasBody":Z
    .restart local v4    # "statusCode":I
    .restart local v5    # "header":Landroid/net/http/Headers;
    .restart local v6    # "statusLine":Lorg/apache/http/StatusLine;
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v9    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v10    # "supportPartialContent":Z
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v12    # "contentEncoding":Lorg/apache/http/Header;
    .restart local v13    # "nis":Ljava/io/InputStream;
    .restart local v14    # "buf":[B
    .restart local v15    # "count":I
    .restart local p0    # "this":Landroid/net/http/Request;
    .restart local p1    # "httpClientConnection":Landroid/net/http/AndroidHttpClientConnection;
    :catch_146
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v18, v8

    .line 325
    .end local v3    # "hasBody":Z
    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .local v0, "e":Ljava/io/EOFException;
    .restart local v16    # "hasBody":Z
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    :goto_14b
    if-lez v15, :cond_15a

    .line 327
    iget-object v2, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v2, v14, v15}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_152
    .catchall {:try_start_13f .. :try_end_152} :catchall_153

    goto :goto_15a

    .line 342
    .end local v0    # "e":Ljava/io/EOFException;
    :catchall_153
    move-exception v0

    :goto_154
    if-eqz v13, :cond_159

    .line 343
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    .line 345
    :cond_159
    throw v0

    .line 342
    :cond_15a
    :goto_15a
    if-eqz v13, :cond_164

    .line 343
    :goto_15c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V

    goto :goto_164

    .line 271
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "contentEncoding":Lorg/apache/http/Header;
    .end local v13    # "nis":Ljava/io/InputStream;
    .end local v14    # "buf":[B
    .end local v15    # "count":I
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v3    # "hasBody":Z
    .restart local v8    # "v":Lorg/apache/http/ProtocolVersion;
    :cond_160
    move/from16 v16, v3

    move-object/from16 v18, v8

    .line 347
    .end local v3    # "hasBody":Z
    .end local v8    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v16    # "hasBody":Z
    .restart local v18    # "v":Lorg/apache/http/ProtocolVersion;
    :cond_164
    :goto_164
    iget-object v0, v1, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v2

    .line 348
    invoke-virtual {v5}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v3

    .line 347
    invoke-virtual {v0, v9, v2, v3}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 349
    iget-object v0, v1, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    invoke-interface {v0}, Landroid/net/http/EventHandler;->endData()V

    .line 350
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    .line 354
    return-void

    .line 251
    .end local v9    # "entity":Lorg/apache/http/HttpEntity;
    .end local v10    # "supportPartialContent":Z
    .end local v16    # "hasBody":Z
    .end local v18    # "v":Lorg/apache/http/ProtocolVersion;
    .restart local v3    # "hasBody":Z
    :cond_17a
    move-object/from16 v2, p1

    move-object v0, v6

    goto/16 :goto_14
.end method

.method reset()V
    .registers 4

    .line 413
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 417
    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    .line 422
    goto :goto_10

    .line 418
    :catch_f
    move-exception v0

    .line 423
    :goto_10
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 426
    :cond_17
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_58

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Range"

    invoke-virtual {v0, v2, v1}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_58
    return-void
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 5
    .param p1, "httpClientConnection"    # Landroid/net/http/AndroidHttpClientConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_5

    return-void

    .line 218
    :cond_5
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 219
    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    .line 218
    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 220
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 221
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v1, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v1, :cond_22

    .line 222
    check-cast v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    .line 229
    :cond_22
    return-void
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/net/http/Connection;

    .line 154
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 155
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .registers 2
    .param p1, "pause"    # Z

    monitor-enter p0

    .line 142
    :try_start_1
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 145
    if-nez p1, :cond_8

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 148
    .end local p0    # "this":Landroid/net/http/Request;
    :cond_8
    monitor-exit p0

    return-void

    .line 141
    .end local p1    # "pause":Z
    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method waitUntilComplete()V
    .registers 3

    .line 441
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 444
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 447
    goto :goto_c

    .line 448
    :catchall_9
    move-exception v1

    goto :goto_e

    .line 446
    :catch_b
    move-exception v1

    .line 448
    :goto_c
    :try_start_c
    monitor-exit v0

    .line 449
    return-void

    .line 448
    :goto_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    throw v1
.end method
