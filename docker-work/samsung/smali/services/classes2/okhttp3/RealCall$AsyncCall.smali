.class public final Lokhttp3/RealCall$AsyncCall;
.super Lokhttp3/internal/NamedRunnable;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/RealCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AsyncCall"
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z


# instance fields
.field public volatile callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final responseCallback:Lokhttp3/Callback;

.field public final synthetic this$0:Lokhttp3/RealCall;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 117
    const-class v0, Lokhttp3/RealCall;

    return-void
.end method

.method public constructor <init>(Lokhttp3/RealCall;Lokhttp3/Callback;)V
    .registers 5

    .line 121
    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 122
    invoke-virtual {p1}, Lokhttp3/RealCall;->redactedUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "OkHttp %s"

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/NamedRunnable;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    iput-object p2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    return-void
.end method


# virtual methods
.method public callsPerHost()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    .line 127
    iget-object p0, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public execute()V
    .registers 7

    .line 170
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;
    invoke-static {v0}, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/Transmitter;->timeoutEnter()V

    const/4 v0, 0x0

    .line 172
    :try_start_a
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v1}, Lokhttp3/RealCall;->getResponseWithInterceptorChain()Lokhttp3/Response;

    move-result-object v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_10} :catch_56
    .catchall {:try_start_a .. :try_end_10} :catchall_28

    const/4 v1, 0x1

    .line 174
    :try_start_11
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v0}, Lokhttp3/Callback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_18} :catch_26
    .catchall {:try_start_11 .. :try_end_18} :catchall_24

    .line 191
    :goto_18
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    goto :goto_84

    :catchall_24
    move-exception v0

    goto :goto_2c

    :catch_26
    move-exception v0

    goto :goto_5a

    :catchall_28
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    .line 183
    :goto_2c
    :try_start_2c
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v2}, Lokhttp3/RealCall;->cancel()V

    if-nez v1, :cond_53

    .line 185
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canceled due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, v0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 187
    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v3, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v2, v3, v1}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V

    .line 189
    :cond_53
    throw v0

    :catchall_54
    move-exception v0

    goto :goto_85

    :catch_56
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_5a
    if-eqz v1, :cond_7c

    .line 178
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Callback failure for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-virtual {v4}, Lokhttp3/RealCall;->toLoggableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18

    .line 180
    :cond_7c
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v2, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {v1, v2, v0}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_83
    .catchall {:try_start_2c .. :try_end_83} :catchall_54

    goto :goto_18

    :goto_84
    return-void

    .line 191
    :goto_85
    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v1, v1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v1

    invoke-virtual {v1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    throw v0
.end method

.method public executeOn(Ljava/util/concurrent/ExecutorService;)V
    .registers 4

    .line 154
    :try_start_0
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_3} :catch_6
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_2c

    :catchall_4
    move-exception p1

    goto :goto_2d

    :catch_6
    move-exception p1

    .line 157
    :try_start_7
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "executor rejected"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 159
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    # getter for: Lokhttp3/RealCall;->transmitter:Lokhttp3/internal/connection/Transmitter;
    invoke-static {p1}, Lokhttp3/RealCall;->access$000(Lokhttp3/RealCall;)Lokhttp3/internal/connection/Transmitter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lokhttp3/internal/connection/Transmitter;->noMoreExchanges(Ljava/io/IOException;)Ljava/io/IOException;

    .line 160
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->responseCallback:Lokhttp3/Callback;

    iget-object v1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    invoke-interface {p1, v1, v0}, Lokhttp3/Callback;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_4

    .line 163
    iget-object p1, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object p1, p1, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object p1

    invoke-virtual {p1, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    :goto_2c
    return-void

    :goto_2d
    iget-object v0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object v0, v0, Lokhttp3/RealCall;->client:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->dispatcher()Lokhttp3/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lokhttp3/Dispatcher;->finished(Lokhttp3/RealCall$AsyncCall;)V

    throw p1
.end method

.method public get()Lokhttp3/RealCall;
    .registers 1

    .line 143
    iget-object p0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    return-object p0
.end method

.method public host()Ljava/lang/String;
    .registers 1

    .line 135
    iget-object p0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object p0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    invoke-virtual {p0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public request()Lokhttp3/Request;
    .registers 1

    .line 139
    iget-object p0, p0, Lokhttp3/RealCall$AsyncCall;->this$0:Lokhttp3/RealCall;

    iget-object p0, p0, Lokhttp3/RealCall;->originalRequest:Lokhttp3/Request;

    return-object p0
.end method

.method public reuseCallsPerHostFrom(Lokhttp3/RealCall$AsyncCall;)V
    .registers 2

    .line 131
    iget-object p1, p1, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lokhttp3/RealCall$AsyncCall;->callsPerHost:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
