.class public final Lokhttp3/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field public static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field public final client:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .registers 2

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    return-void
.end method


# virtual methods
.method public final followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;
    .registers 8
    .param p2    # Lokhttp3/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_15d

    .line 216
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    .line 218
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x133

    const-string v3, "GET"

    const/4 v4, 0x0

    if-eq v0, v2, :cond_b8

    const/16 v2, 0x134

    if-eq v0, v2, :cond_b8

    const/16 v2, 0x191

    if-eq v0, v2, :cond_ad

    const/16 v2, 0x1f7

    if-eq v0, v2, :cond_8d

    const/16 v2, 0x197

    if-eq v0, v2, :cond_65

    const/16 p2, 0x198

    if-eq v0, p2, :cond_2d

    packed-switch v0, :pswitch_data_164

    return-object v4

    .line 288
    :cond_2d
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    if-nez v0, :cond_36

    return-object v4

    .line 293
    :cond_36
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 294
    invoke-virtual {v0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_47

    return-object v4

    .line 298
    :cond_47
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 299
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v0

    if-ne v0, p2, :cond_58

    return-object v4

    :cond_58
    const/4 p2, 0x0

    .line 304
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p0

    if-lez p0, :cond_60

    return-object v4

    .line 308
    :cond_60
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_65
    if-eqz p2, :cond_6c

    .line 222
    invoke-virtual {p2}, Lokhttp3/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    goto :goto_72

    .line 223
    :cond_6c
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 224
    :goto_72
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_85

    .line 227
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->proxyAuthenticator()Lokhttp3/Authenticator;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 225
    :cond_85
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_8d
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    if-eqz p2, :cond_9e

    .line 312
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result p2

    if-ne p2, v2, :cond_9e

    return-object v4

    :cond_9e
    const p2, 0x7fffffff

    .line 317
    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lokhttp3/Response;I)I

    move-result p0

    if-nez p0, :cond_ac

    .line 319
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_ac
    return-object v4

    .line 230
    :cond_ad
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->authenticator()Lokhttp3/Authenticator;

    move-result-object p0

    invoke-interface {p0, p2, p1}, Lokhttp3/Authenticator;->authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 236
    :cond_b8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c7

    const-string p2, "HEAD"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_c7

    return-object v4

    .line 245
    :cond_c7
    :pswitch_c7
    iget-object p2, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p2}, Lokhttp3/OkHttpClient;->followRedirects()Z

    move-result p2

    if-nez p2, :cond_d0

    return-object v4

    :cond_d0
    const-string p2, "Location"

    .line 247
    invoke-virtual {p1, p2}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d9

    return-object v4

    .line 249
    :cond_d9
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object p2

    if-nez p2, :cond_e8

    return-object v4

    .line 255
    :cond_e8
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_107

    .line 256
    iget-object p0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p0}, Lokhttp3/OkHttpClient;->followSslRedirects()Z

    move-result p0

    if-nez p0, :cond_107

    return-object v4

    .line 259
    :cond_107
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p0

    .line 260
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 261
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v0

    .line 262
    invoke-static {v1}, Lokhttp3/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 263
    invoke-virtual {p0, v3, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    goto :goto_130

    :cond_123
    if-eqz v0, :cond_12d

    .line 265
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v4

    .line 266
    :cond_12d
    invoke-virtual {p0, v1, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    :goto_130
    if-nez v0, :cond_141

    const-string v0, "Transfer-Encoding"

    .line 269
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "Content-Length"

    .line 270
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    const-string v0, "Content-Type"

    .line 271
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 278
    :cond_141
    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-static {p1, p2}, Lokhttp3/internal/Util;->sameConnection(Lokhttp3/HttpUrl;Lokhttp3/HttpUrl;)Z

    move-result p1

    if-nez p1, :cond_154

    const-string p1, "Authorization"

    .line 279
    invoke-virtual {p0, p1}, Lokhttp3/Request$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 282
    :cond_154
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    .line 215
    :cond_15d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    nop

    :pswitch_data_164
    .packed-switch 0x12c
        :pswitch_c7
        :pswitch_c7
        :pswitch_c7
        :pswitch_c7
    .end packed-switch
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    .line 73
    check-cast p1, Lokhttp3/internal/http/RealInterceptorChain;

    .line 74
    invoke-virtual {p1}, Lokhttp3/internal/http/RealInterceptorChain;->transmitter()Lokhttp3/internal/connection/Transmitter;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v5, v2

    move-object v4, v3

    .line 79
    :goto_e
    invoke-virtual {v1, v0}, Lokhttp3/internal/connection/Transmitter;->prepareToConnect(Lokhttp3/Request;)V

    .line 81
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_c1

    .line 88
    :try_start_17
    invoke-virtual {p1, v0, v1, v3}, Lokhttp3/internal/http/RealInterceptorChain;->proceed(Lokhttp3/Request;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;)Lokhttp3/Response;

    move-result-object v0
    :try_end_1b
    .catch Lokhttp3/internal/connection/RouteException; {:try_start_17 .. :try_end_1b} :catch_a8
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1b} :catch_98
    .catchall {:try_start_17 .. :try_end_1b} :catchall_96

    if-eqz v4, :cond_35

    .line 110
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v4}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    .line 112
    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    .line 113
    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v4

    .line 111
    invoke-virtual {v0, v4}, Lokhttp3/Response$Builder;->priorResponse(Lokhttp3/Response;)Lokhttp3/Response$Builder;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v0

    :cond_35
    move-object v4, v0

    .line 117
    sget-object v0, Lokhttp3/internal/Internal;->instance:Lokhttp3/internal/Internal;

    invoke-virtual {v0, v4}, Lokhttp3/internal/Internal;->exchange(Lokhttp3/Response;)Lokhttp3/internal/connection/Exchange;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 118
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->connection()Lokhttp3/internal/connection/RealConnection;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/internal/connection/RealConnection;->route()Lokhttp3/Route;

    move-result-object v6

    goto :goto_48

    :cond_47
    move-object v6, v3

    .line 119
    :goto_48
    invoke-virtual {p0, v4, v6}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lokhttp3/Response;Lokhttp3/Route;)Lokhttp3/Request;

    move-result-object v6

    if-nez v6, :cond_5a

    if-eqz v0, :cond_59

    .line 122
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->isDuplex()Z

    move-result p0

    if-eqz p0, :cond_59

    .line 123
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    :cond_59
    return-object v4

    .line 128
    :cond_5a
    invoke-virtual {v6}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v7

    if-eqz v7, :cond_67

    .line 129
    invoke-virtual {v7}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result v7

    if-eqz v7, :cond_67

    return-object v4

    .line 133
    :cond_67
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 134
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->hasExchange()Z

    move-result v7

    if-eqz v7, :cond_77

    .line 135
    invoke-virtual {v0}, Lokhttp3/internal/connection/Exchange;->detachWithViolence()V

    :cond_77
    add-int/lit8 v5, v5, 0x1

    const/16 v0, 0x14

    if-gt v5, v0, :cond_7f

    move-object v0, v6

    goto :goto_e

    .line 139
    :cond_7f
    new-instance p0, Ljava/net/ProtocolException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Too many follow-up requests: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_96
    move-exception p0

    goto :goto_bd

    :catch_98
    move-exception v6

    .line 98
    :try_start_99
    instance-of v7, v6, Lokhttp3/internal/http2/ConnectionShutdownException;

    if-nez v7, :cond_9f

    const/4 v7, 0x1

    goto :goto_a0

    :cond_9f
    move v7, v2

    .line 99
    :goto_a0
    invoke-virtual {p0, v6, v1, v7, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7

    if-eqz v7, :cond_a7

    goto :goto_b3

    :cond_a7
    throw v6

    :catch_a8
    move-exception v6

    .line 92
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v2, v0}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z

    move-result v7
    :try_end_b1
    .catchall {:try_start_99 .. :try_end_b1} :catchall_96

    if-eqz v7, :cond_b8

    .line 104
    :goto_b3
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    goto/16 :goto_e

    .line 93
    :cond_b8
    :try_start_b8
    invoke-virtual {v6}, Lokhttp3/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object p0

    throw p0
    :try_end_bd
    .catchall {:try_start_b8 .. :try_end_bd} :catchall_96

    .line 104
    :goto_bd
    invoke-virtual {v1}, Lokhttp3/internal/connection/Transmitter;->exchangeDoneDueToException()V

    throw p0

    .line 82
    :cond_c1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Canceled"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isRecoverable(Ljava/io/IOException;Z)Z
    .registers 5

    .line 179
    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    return v0

    .line 185
    :cond_6
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    const/4 v1, 0x1

    if-eqz p0, :cond_13

    .line 186
    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    if-eqz p0, :cond_12

    if-nez p2, :cond_12

    move v0, v1

    :cond_12
    return v0

    .line 191
    :cond_13
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_20

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_20

    return v0

    .line 198
    :cond_20
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_25

    return v0

    :cond_25
    return v1
.end method

.method public final recover(Ljava/io/IOException;Lokhttp3/internal/connection/Transmitter;ZLokhttp3/Request;)Z
    .registers 7

    .line 156
    iget-object v0, p0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    if-eqz p3, :cond_13

    .line 159
    invoke-virtual {p0, p1, p4}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z

    move-result p4

    if-eqz p4, :cond_13

    return v1

    .line 162
    :cond_13
    invoke-virtual {p0, p1, p3}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result p0

    if-nez p0, :cond_1a

    return v1

    .line 165
    :cond_1a
    invoke-virtual {p2}, Lokhttp3/internal/connection/Transmitter;->canRetry()Z

    move-result p0

    if-nez p0, :cond_21

    return v1

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method public final requestIsOneShot(Ljava/io/IOException;Lokhttp3/Request;)Z
    .registers 3

    .line 172
    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 173
    invoke-virtual {p0}, Lokhttp3/RequestBody;->isOneShot()Z

    move-result p0

    if-nez p0, :cond_10

    :cond_c
    instance-of p0, p1, Ljava/io/FileNotFoundException;

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final retryAfter(Lokhttp3/Response;I)I
    .registers 3

    const-string p0, "Retry-After"

    .line 330
    invoke-virtual {p1, p0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    return p2

    :cond_9
    const-string p1, "\\d+"

    .line 338
    invoke-virtual {p0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 339
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1a
    const p0, 0x7fffffff

    return p0
.end method
