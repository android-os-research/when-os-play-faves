.class public final Lokhttp3/RealCall;
.super Ljava/lang/Object;
.source "RealCall.java"

# interfaces
.implements Lokhttp3/Call;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/RealCall$AsyncCall;
    }
.end annotation


# instance fields
.field public final client:Lokhttp3/OkHttpClient;

.field public executed:Z

.field public final forWebSocket:Z

.field public final originalRequest:Lokhttp3/Request;

.field public transmitter:Lokhttp3/internal/connection/Transmitter;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 57
    iput-object p2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    .line 58
    iput-boolean p3, p0, Lokhttp3/RealCall;->forWebSocket:Z

    return-void
.end method

.method public static synthetic access$000(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;
    .registers 1

    .line 39
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object p0
.end method

.method public static newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;
    .registers 4

    .line 63
    new-instance v0, Lokhttp3/RealCall;

    invoke-direct {v0, p0, p1, p2}, Lokhttp3/RealCall;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)V

    .line 64
    new-instance p1, Lokhttp3/internal/connection/Transmitter;

    invoke-direct {p1, p0, v0}, Lokhttp3/internal/connection/Transmitter;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Call;)V

    iput-object p1, v0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .registers 1

    .line 97
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->cancel()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 39
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic clone()Lokhttp3/Call;
    .registers 1

    .line 39
    invoke-virtual {p0}, Lokhttp3/RealCall;->clone()Lokhttp3/RealCall;

    move-result-object p0

    return-object p0
.end method

.method public clone()Lokhttp3/RealCall;
    .registers 3

    .line 114
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    iget-object v1, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-boolean p0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-static {v0, v1, p0}, Lokhttp3/RealCall;->newRealCall(Lokhttp3/OkHttpClient;Lokhttp3/Request;Z)Lokhttp3/RealCall;

    move-result-object p0

    return-object p0
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .registers 4

    .line 88
    monitor-enter p0

    .line 89
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_1d

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 91
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_25

    .line 92
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 93
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    new-instance v1, Lokhttp3/RealCall$AsyncCall;

    invoke-direct {v1, p0, p1}, Lokhttp3/RealCall$AsyncCall;-><init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V

    invoke-virtual {v0, v1}, Lokhttp3/Dispatcher;->enqueue(Lokhttp3/RealCall$AsyncCall;)V

    return-void

    .line 89
    :cond_1d
    :try_start_1d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already Executed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_25
    move-exception p1

    .line 91
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p1
.end method

.method public execute()Lokhttp3/Response;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    monitor-enter p0

    .line 74
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    if-nez v0, :cond_35

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lokhttp3/RealCall;->executed:Z

    .line 76
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_3d

    .line 77
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    .line 78
    iget-object v0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->callStart()V

    .line 80
    :try_start_13
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->executed(Lokhttp3/RealCall;)V

    .line 81
    invoke-virtual {p0}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_13 .. :try_end_20} :catchall_2a

    .line 83
    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    return-object v0

    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall;)V

    throw v0

    .line 74
    :cond_35
    :try_start_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already Executed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3d
    move-exception v0

    .line 76
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3d

    throw v0
.end method

.method public getResponseWithInterceptorChain()Lokhttp3/Response;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 213
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->interceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    new-instance v0, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/http/RetryAndFollowUpInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    new-instance v0, Lokhttp3/internal/http/BridgeInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/http/BridgeInterceptor;-><init>(Lokhttp3/CookieJar;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lokhttp3/internal/cache/CacheInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->internalCache()Lokhttp3/internal/cache/InternalCache;

    move-result-object v2

    invoke-direct {v0, v2}, Lokhttp3/internal/cache/CacheInterceptor;-><init>(Lokhttp3/internal/cache/InternalCache;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    new-instance v0, Lokhttp3/internal/connection/ConnectInterceptor;

    iget-object v2, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-direct {v0, v2}, Lokhttp3/internal/connection/ConnectInterceptor;-><init>(Lokhttp3/OkHttpClient;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    iget-boolean v0, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-nez v0, :cond_4b

    .line 219
    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 221
    :cond_4b
    new-instance v0, Lokhttp3/internal/http/CallServerInterceptor;

    iget-boolean v2, p0, Lokhttp3/RealCall;->forWebSocket:Z

    invoke-direct {v0, v2}, Lokhttp3/internal/http/CallServerInterceptor;-><init>(Z)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    new-instance v10, Lokhttp3/internal/http/RealInterceptorChain;

    iget-object v2, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 224
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v7

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    .line 225
    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->readTimeoutMillis()I

    move-result v8

    iget-object v0, p0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->writeTimeoutMillis()I

    move-result v9

    move-object v0, v10

    move-object v6, p0

    invoke-direct/range {v0 .. v9}, Lokhttp3/internal/http/RealInterceptorChain;-><init>(Ljava/util/List;Lokhttp3/internal/connection/Transmitter;Lokhttp3/internal/connection/Exchange;ILokhttp3/Request;Lokhttp3/Call;III)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 229
    :try_start_76
    iget-object v2, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-interface {v10, v2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 230
    iget-object v3, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result v3
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_82} :catch_97
    .catchall {:try_start_76 .. :try_end_82} :catchall_95

    if-nez v3, :cond_8a

    .line 240
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    return-object v2

    .line 231
    :cond_8a
    :try_start_8a
    invoke-static {v2}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 232
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_95} :catch_97
    .catchall {:try_start_8a .. :try_end_95} :catchall_95

    :catchall_95
    move-exception v2

    goto :goto_a4

    :catch_97
    move-exception v0

    const/4 v2, 0x1

    .line 237
    :try_start_99
    iget-object v3, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {v3, v0}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_a0

    :catchall_a0
    move-exception v0

    move v11, v2

    move-object v2, v0

    move v0, v11

    :goto_a4
    if-nez v0, :cond_ab

    .line 240
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0, v1}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    :cond_ab
    throw v2
.end method

.method public isCanceled()Z
    .registers 1

    .line 109
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->isCanceled()Z

    move-result p0

    return p0
.end method

.method public declared-synchronized isExecuted()Z
    .registers 2

    monitor-enter p0

    .line 105
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/RealCall;->executed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public redactedUrl()Ljava/lang/String;
    .registers 1

    .line 207
    iget-object p0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->redact()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public request()Lokhttp3/Request;
    .registers 1

    .line 69
    iget-object p0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object p0
.end method

.method public timeout()Lokio/Timeout;
    .registers 1

    .line 101
    iget-object p0, p0, Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;

    invoke-virtual {p0}, Lokhttp3/internal/connection/Transmitter;->timeout()Lokio/Timeout;

    move-result-object p0

    return-object p0
.end method

.method public toLoggableString()Ljava/lang/String;
    .registers 3

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lokhttp3/RealCall;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "canceled "

    goto :goto_10

    :cond_e
    const-string v1, ""

    :goto_10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-boolean v1, p0, Lokhttp3/RealCall;->forWebSocket:Z

    if-eqz v1, :cond_1b

    const-string/jumbo v1, "web socket"

    goto :goto_1d

    :cond_1b
    const-string v1, "call"

    :goto_1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p0}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
