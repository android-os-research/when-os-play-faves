.class public final Lokhttp3/internal/http2/Http2Connection;
.super Ljava/lang/Object;
.source "Http2Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/Http2Connection$Listener;,
        Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;,
        Lokhttp3/internal/http2/Http2Connection$Builder;,
        Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;,
        Lokhttp3/internal/http2/Http2Connection$PingRunnable;
    }
.end annotation


# static fields
.field public static final synthetic $assertionsDisabled:Z = false

.field public static final AWAIT_PING:I = 0x3

.field public static final DEGRADED_PING:I = 0x2

.field public static final DEGRADED_PONG_TIMEOUT_NS:J = 0x3b9aca00L

.field public static final INTERVAL_PING:I = 0x1

.field public static final OKHTTP_CLIENT_WINDOW_SIZE:I = 0x1000000

.field public static final listenerExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public awaitPingsSent:J

.field public awaitPongsReceived:J

.field public bytesLeftInWriteWindow:J

.field public final client:Z

.field public final connectionName:Ljava/lang/String;

.field public final currentPushRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public degradedPingsSent:J

.field public degradedPongDeadlineNs:J

.field public degradedPongsReceived:J

.field public intervalPingsSent:J

.field public intervalPongsReceived:J

.field public lastGoodStreamId:I

.field public final listener:Lokhttp3/internal/http2/Http2Connection$Listener;

.field public nextStreamId:I

.field public okHttpSettings:Lokhttp3/internal/http2/Settings;

.field public final peerSettings:Lokhttp3/internal/http2/Settings;

.field public final pushExecutor:Ljava/util/concurrent/ExecutorService;

.field public final pushObserver:Lokhttp3/internal/http2/PushObserver;

.field public final readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

.field public shutdown:Z

.field public final socket:Ljava/net/Socket;

.field public final streams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lokhttp3/internal/http2/Http2Stream;",
            ">;"
        }
    .end annotation
.end field

.field public unacknowledgedBytesRead:J

.field public final writer:Lokhttp3/internal/http2/Http2Writer;

.field public final writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    .line 62
    const-class v0, Lokhttp3/internal/http2/Http2Connection;

    .line 87
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v7}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const/4 v1, 0x1

    const-string v8, "OkHttp Http2Connection"

    .line 89
    invoke-static {v8, v1}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/http2/Http2Connection$Builder;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 151
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    const-wide/16 v2, 0x0

    .line 115
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    .line 116
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    .line 117
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 118
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    .line 119
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 120
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    .line 123
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 130
    iput-wide v2, v0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 139
    new-instance v2, Lokhttp3/internal/http2/Settings;

    invoke-direct {v2}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    .line 143
    new-instance v2, Lokhttp3/internal/http2/Settings;

    invoke-direct {v2}, Lokhttp3/internal/http2/Settings;-><init>()V

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    .line 893
    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    .line 152
    iget-object v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    iput-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->pushObserver:Lokhttp3/internal/http2/PushObserver;

    .line 153
    iget-boolean v3, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->client:Z

    iput-boolean v3, v0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    .line 154
    iget-object v4, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    iput-object v4, v0, Lokhttp3/internal/http2/Http2Connection;->listener:Lokhttp3/internal/http2/Http2Connection$Listener;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_47

    move v6, v5

    goto :goto_48

    :cond_47
    move v6, v4

    .line 156
    :goto_48
    iput v6, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    if-eqz v3, :cond_4f

    add-int/2addr v6, v4

    .line 158
    iput v6, v0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    :cond_4f
    const/4 v4, 0x7

    if-eqz v3, :cond_59

    .line 166
    iget-object v6, v0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    const/high16 v7, 0x1000000

    invoke-virtual {v6, v4, v7}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 169
    :cond_59
    iget-object v6, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->connectionName:Ljava/lang/String;

    iput-object v6, v0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    .line 171
    new-instance v7, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    const-string v9, "OkHttp %s Writer"

    .line 172
    invoke-static {v9, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v14}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct {v7, v5, v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 173
    iget v8, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    if-eqz v8, :cond_88

    .line 174
    new-instance v8, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;

    invoke-direct {v8, v0}, Lokhttp3/internal/http2/Http2Connection$IntervalPingRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;)V

    iget v9, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->pingIntervalMillis:I

    int-to-long v10, v9

    int-to-long v12, v9

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v9, v10

    move-wide v11, v12

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 179
    :cond_88
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v17, 0x0

    const/16 v18, 0x1

    const-wide/16 v19, 0x3c

    sget-object v21, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v22, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct/range {v22 .. v22}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v14

    const-string v6, "OkHttp %s Push Observer"

    .line 180
    invoke-static {v6, v8}, Lokhttp3/internal/Util;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v23

    move-object/from16 v16, v7

    invoke-direct/range {v16 .. v23}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v7, v0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    const v5, 0xffff

    .line 181
    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    const/4 v4, 0x5

    const/16 v5, 0x4000

    .line 182
    invoke-virtual {v2, v4, v5}, Lokhttp3/internal/http2/Settings;->set(II)Lokhttp3/internal/http2/Settings;

    .line 183
    invoke-virtual {v2}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 184
    iget-object v2, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->socket:Ljava/net/Socket;

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    .line 185
    new-instance v2, Lokhttp3/internal/http2/Http2Writer;

    iget-object v4, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->sink:Lokio/BufferedSink;

    invoke-direct {v2, v4, v3}, Lokhttp3/internal/http2/Http2Writer;-><init>(Lokio/BufferedSink;Z)V

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    .line 187
    new-instance v2, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    new-instance v4, Lokhttp3/internal/http2/Http2Reader;

    iget-object v1, v1, Lokhttp3/internal/http2/Http2Connection$Builder;->source:Lokio/BufferedSource;

    invoke-direct {v4, v1, v3}, Lokhttp3/internal/http2/Http2Reader;-><init>(Lokio/BufferedSource;Z)V

    invoke-direct {v2, v0, v4}, Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;-><init>(Lokhttp3/internal/http2/Http2Connection;Lokhttp3/internal/http2/Http2Reader;)V

    iput-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    return-void
.end method

.method public static synthetic access$000(Lokhttp3/internal/http2/Http2Connection;Ljava/io/IOException;)V
    .registers 2

    .line 62
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic access$100(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method public static synthetic access$108(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPongsReceived:J

    return-wide v0
.end method

.method public static synthetic access$200(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 3

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method public static synthetic access$208(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->intervalPingsSent:J

    return-wide v0
.end method

.method public static synthetic access$300(Lokhttp3/internal/http2/Http2Connection;)Z
    .registers 1

    .line 62
    iget-boolean p0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p0
.end method

.method public static synthetic access$302(Lokhttp3/internal/http2/Http2Connection;Z)Z
    .registers 2

    .line 62
    iput-boolean p1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    return p1
.end method

.method public static synthetic access$400()Ljava/util/concurrent/ExecutorService;
    .registers 1

    .line 62
    sget-object v0, Lokhttp3/internal/http2/Http2Connection;->listenerExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public static synthetic access$500(Lokhttp3/internal/http2/Http2Connection;)Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    .line 62
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-object p0
.end method

.method public static synthetic access$608(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    return-wide v0
.end method

.method public static synthetic access$708(Lokhttp3/internal/http2/Http2Connection;)J
    .registers 5

    .line 62
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    return-wide v0
.end method


# virtual methods
.method public declared-synchronized awaitPong()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 433
    :goto_1
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPongsReceived:J

    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 434
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    goto :goto_1

    .line 436
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .registers 4

    .line 468
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->NO_ERROR:Lokhttp3/internal/http2/ErrorCode;

    sget-object v1, Lokhttp3/internal/http2/ErrorCode;->CANCEL:Lokhttp3/internal/http2/ErrorCode;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .registers 7
    .param p3    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 474
    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    const/4 p1, 0x0

    .line 479
    monitor-enter p0

    .line 480
    :try_start_5
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    .line 481
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Lokhttp3/internal/http2/Http2Stream;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lokhttp3/internal/http2/Http2Stream;

    .line 482
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 484
    :cond_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_4a

    if-eqz p1, :cond_35

    .line 487
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v0, :cond_35

    aget-object v2, p1, v1

    .line 489
    :try_start_2f
    invoke-virtual {v2, p2, p3}, Lokhttp3/internal/http2/Http2Stream;->close(Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_32

    :catch_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 497
    :cond_35
    :try_start_35
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3a

    .line 503
    :catch_3a
    :try_start_3a
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->socket:Ljava/net/Socket;

    invoke-virtual {p1}, Ljava/net/Socket;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3f} :catch_3f

    .line 508
    :catch_3f
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 509
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_4a
    move-exception p1

    .line 484
    :try_start_4b
    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method public final failConnection(Ljava/io/IOException;)V
    .registers 3
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 513
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0, v0, p1}, Lokhttp3/internal/http2/Http2Connection;->close(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    return-void
.end method

.method public flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    return-void
.end method

.method public declared-synchronized getStream(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 198
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/Http2Stream;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isHealthy(J)Z
    .registers 9

    monitor-enter p0

    .line 554
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1b

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    .line 557
    :cond_8
    :try_start_8
    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_18

    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_1b

    cmp-long p1, p1, v2

    if-ltz p1, :cond_18

    monitor-exit p0

    return v1

    :cond_18
    const/4 p1, 0x1

    .line 559
    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized maxConcurrentStreams()I
    .registers 3

    monitor-enter p0

    .line 208
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->peerSettings:Lokhttp3/internal/http2/Settings;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/Settings;->getMaxConcurrentStreams(I)I

    move-result v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    xor-int/lit8 v6, p3, 0x1

    const/4 v4, 0x0

    .line 249
    iget-object v7, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v7

    .line 250
    :try_start_6
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_6 .. :try_end_7} :catchall_76

    .line 251
    :try_start_7
    iget v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    const v1, 0x3fffffff    # 1.9999999f

    if-le v0, v1, :cond_13

    .line 252
    sget-object v0, Lokhttp3/internal/http2/ErrorCode;->REFUSED_STREAM:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->shutdown(Lokhttp3/internal/http2/ErrorCode;)V

    .line 254
    :cond_13
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_6d

    .line 257
    iget v8, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    add-int/lit8 v0, v8, 0x2

    .line 258
    iput v0, p0, Lokhttp3/internal/http2/Http2Connection;->nextStreamId:I

    .line 259
    new-instance v9, Lokhttp3/internal/http2/Http2Stream;

    const/4 v5, 0x0

    move-object v0, v9

    move v1, v8

    move-object v2, p0

    move v3, v6

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Stream;-><init>(ILokhttp3/internal/http2/Http2Connection;ZZLokhttp3/Headers;)V

    if-eqz p3, :cond_3a

    .line 260
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-eqz p3, :cond_3a

    iget-wide v0, v9, Lokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    cmp-long p3, v0, v2

    if-nez p3, :cond_38

    goto :goto_3a

    :cond_38
    const/4 p3, 0x0

    goto :goto_3b

    :cond_3a
    :goto_3a
    const/4 p3, 0x1

    .line 261
    :goto_3b
    invoke-virtual {v9}, Lokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 262
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_73

    if-nez p1, :cond_53

    .line 266
    :try_start_4d
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1, v6, v8, p2}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    goto :goto_5c

    .line 267
    :cond_53
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_65

    .line 270
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, v8, p2}, Lokhttp3/internal/http2/Http2Writer;->pushPromise(IILjava/util/List;)V

    .line 272
    :goto_5c
    monitor-exit v7
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_76

    if-eqz p3, :cond_64

    .line 275
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Writer;->flush()V

    :cond_64
    return-object v9

    .line 268
    :cond_65
    :try_start_65
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "client streams shouldn\'t have associated stream IDs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_76

    .line 255
    :cond_6d
    :try_start_6d
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_73
    move-exception p1

    .line 264
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_6d .. :try_end_75} :catchall_73

    :try_start_75
    throw p1

    :catchall_76
    move-exception p0

    .line 272
    monitor-exit v7
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_76

    throw p0
.end method

.method public newStream(Ljava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 238
    invoke-virtual {p0, v0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized openStreamCount()I
    .registers 2

    monitor-enter p0

    .line 194
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushDataLater(ILokio/BufferedSource;IZ)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 953
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    int-to-long v0, p3

    .line 954
    invoke-interface {p2, v0, v1}, Lokio/BufferedSource;->require(J)V

    .line 955
    invoke-interface {p2, v5, v0, v1}, Lokio/Source;->read(Lokio/Buffer;J)J

    .line 956
    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long p2, v2, v0

    if-nez p2, :cond_33

    .line 957
    new-instance p2, Lokhttp3/internal/http2/Http2Connection$6;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v2, "OkHttp %s Push Data[%s]"

    move-object v0, p2

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lokhttp3/internal/http2/Http2Connection$6;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokio/Buffer;IZ)V

    invoke-virtual {p0, p2}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V

    return-void

    .line 956
    :cond_33
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " != "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final declared-synchronized pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    .registers 3

    monitor-enter p0

    .line 985
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v0, :cond_a

    .line 986
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->pushExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 988
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public pushHeadersLater(ILjava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)V"
        }
    .end annotation

    .line 927
    :try_start_0
    new-instance v7, Lokhttp3/internal/http2/Http2Connection$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v1, v3, v0

    const/4 v0, 0x1

    .line 928
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    move-object v0, v7

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lokhttp3/internal/http2/Http2Connection$5;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    .line 927
    invoke-virtual {p0, v7}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    :try_end_1e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public pushRequestLater(ILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .line 896
    monitor-enter p0

    .line 897
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 898
    sget-object p2, Lokhttp3/internal/http2/ErrorCode;->PROTOCOL_ERROR:Lokhttp3/internal/http2/ErrorCode;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V

    .line 899
    monitor-exit p0

    return-void

    .line 901
    :cond_14
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->currentPushRequests:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 902
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3c

    .line 904
    :try_start_1e
    new-instance v0, Lokhttp3/internal/http2/Http2Connection$4;

    const-string v4, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v2, v5, v1

    const/4 v1, 0x1

    .line 905
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v2, v0

    move-object v3, p0

    move v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/http2/Http2Connection$4;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    .line 904
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V
    :try_end_3b
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1e .. :try_end_3b} :catch_3b

    :catch_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 902
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method public pushResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 10

    .line 974
    new-instance v6, Lokhttp3/internal/http2/Http2Connection$7;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v2, "OkHttp %s Push Reset[%s]"

    move-object v0, v6

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lokhttp3/internal/http2/Http2Connection$7;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-virtual {p0, v6}, Lokhttp3/internal/http2/Http2Connection;->pushExecutorExecute(Lokhttp3/internal/NamedRunnable;)V

    return-void
.end method

.method public pushStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;Z)",
            "Lokhttp3/internal/http2/Http2Stream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    iget-boolean v0, p0, Lokhttp3/internal/http2/Http2Connection;->client:Z

    if-nez v0, :cond_9

    .line 229
    invoke-virtual {p0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Connection;->newStream(ILjava/util/List;Z)Lokhttp3/internal/http2/Http2Stream;

    move-result-object p0

    return-object p0

    .line 228
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client cannot push requests."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pushedStream(I)Z
    .registers 2

    const/4 p0, 0x1

    if-eqz p1, :cond_7

    and-int/2addr p1, p0

    if-nez p1, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public declared-synchronized removeStream(I)Lokhttp3/internal/http2/Http2Stream;
    .registers 3

    monitor-enter p0

    .line 202
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/internal/http2/Http2Stream;

    .line 203
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 204
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendDegradedPingLater()V
    .registers 7

    .line 578
    monitor-enter p0

    .line 579
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongsReceived:J

    iget-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_b

    monitor-exit p0

    return-void

    :cond_b
    const-wide/16 v0, 0x1

    add-long/2addr v2, v0

    .line 580
    iput-wide v2, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPingsSent:J

    .line 581
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->degradedPongDeadlineNs:J

    .line 582
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_30

    .line 584
    :try_start_1b
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lokhttp3/internal/http2/Http2Connection$3;

    const-string v2, "OkHttp %s ping"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3}, Lokhttp3/internal/http2/Http2Connection$3;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_2f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1b .. :try_end_2f} :catch_2f

    :catch_2f
    return-void

    :catchall_30
    move-exception v0

    .line 582
    :try_start_31
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v0
.end method

.method public setSettings(Lokhttp3/internal/http2/Settings;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 542
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 543
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1e

    .line 544
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-nez v1, :cond_15

    .line 547
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/Settings;->merge(Lokhttp3/internal/http2/Settings;)V

    .line 548
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_1b

    .line 549
    :try_start_e
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 550
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1e

    return-void

    .line 545
    :cond_15
    :try_start_15
    new-instance p1, Lokhttp3/internal/http2/ConnectionShutdownException;

    invoke-direct {p1}, Lokhttp3/internal/http2/ConnectionShutdownException;-><init>()V

    throw p1

    :catchall_1b
    move-exception p1

    .line 548
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1b

    :try_start_1d
    throw p1

    :catchall_1e
    move-exception p0

    .line 550
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public shutdown(Lokhttp3/internal/http2/ErrorCode;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    monitor-enter v0

    .line 450
    :try_start_3
    monitor-enter p0
    :try_end_4
    .catchall {:try_start_3 .. :try_end_4} :catchall_1d

    .line 451
    :try_start_4
    iget-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    if-eqz v1, :cond_b

    .line 452
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_1a

    :try_start_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_1d

    return-void

    :cond_b
    const/4 v1, 0x1

    .line 454
    :try_start_c
    iput-boolean v1, p0, Lokhttp3/internal/http2/Http2Connection;->shutdown:Z

    .line 455
    iget v1, p0, Lokhttp3/internal/http2/Http2Connection;->lastGoodStreamId:I

    .line 456
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1a

    .line 459
    :try_start_11
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    sget-object v2, Lokhttp3/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-virtual {p0, v1, p1, v2}, Lokhttp3/internal/http2/Http2Writer;->goAway(ILokhttp3/internal/http2/ErrorCode;[B)V

    .line 460
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_11 .. :try_end_19} :catchall_1d

    return-void

    :catchall_1a
    move-exception p1

    .line 456
    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1

    :catchall_1d
    move-exception p0

    .line 460
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public start()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 521
    invoke-virtual {p0, v0}, Lokhttp3/internal/http2/Http2Connection;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_21

    .line 530
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Http2Writer;->connectionPreface()V

    .line 531
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/Http2Writer;->settings(Lokhttp3/internal/http2/Settings;)V

    .line 532
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    const v0, 0xffff

    if-eq p1, v0, :cond_21

    .line 534
    iget-object v1, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    const/4 v2, 0x0

    sub-int/2addr p1, v0

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lokhttp3/internal/http2/Http2Writer;->windowUpdate(IJ)V

    .line 537
    :cond_21
    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->readerRunnable:Lokhttp3/internal/http2/Http2Connection$ReaderRunnable;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public declared-synchronized updateConnectionFlowControl(J)V
    .registers 5

    monitor-enter p0

    .line 212
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    .line 213
    iget-object p1, p0, Lokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lokhttp3/internal/http2/Settings;

    invoke-virtual {p1}, Lokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long p1, p1

    cmp-long p1, v0, p1

    if-ltz p1, :cond_1d

    const/4 p1, 0x0

    .line 214
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J

    invoke-virtual {p0, p1, v0, v1}, Lokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    const-wide/16 p1, 0x0

    .line 215
    iput-wide p1, p0, Lokhttp3/internal/http2/Http2Connection;->unacknowledgedBytesRead:J
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    .line 217
    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeData(IZLokio/Buffer;J)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    const/4 v3, 0x0

    if-nez v2, :cond_d

    .line 301
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, p2, p1, p3, v3}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    return-void

    :cond_d
    :goto_d
    cmp-long v2, p4, v0

    if-lez v2, :cond_68

    .line 307
    monitor-enter p0

    .line 309
    :goto_12
    :try_start_12
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    cmp-long v2, v4, v0

    if-gtz v2, :cond_31

    .line 312
    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->streams:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 315
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_12

    .line 313
    :cond_28
    new-instance p1, Ljava/io/IOException;

    const-string/jumbo p2, "stream closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_31} :catch_59
    .catchall {:try_start_12 .. :try_end_31} :catchall_57

    .line 322
    :cond_31
    :try_start_31
    invoke-static {p4, p5, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v2, v4

    .line 323
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v4}, Lokhttp3/internal/http2/Http2Writer;->maxDataLength()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 324
    iget-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    int-to-long v6, v2

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    .line 325
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_57

    sub-long/2addr p4, v6

    .line 328
    iget-object v4, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    if-eqz p2, :cond_52

    cmp-long v5, p4, v0

    if-nez v5, :cond_52

    const/4 v5, 0x1

    goto :goto_53

    :cond_52
    move v5, v3

    :goto_53
    invoke-virtual {v4, v5, p1, p3, v2}, Lokhttp3/internal/http2/Http2Writer;->data(ZILokio/Buffer;I)V

    goto :goto_d

    :catchall_57
    move-exception p1

    goto :goto_66

    .line 318
    :catch_59
    :try_start_59
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 319
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 325
    :goto_66
    monitor-exit p0
    :try_end_67
    .catchall {:try_start_59 .. :try_end_67} :catchall_57

    throw p1

    :cond_68
    return-void
.end method

.method public writeHeaders(IZLjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, p2, p1, p3}, Lokhttp3/internal/http2/Http2Writer;->headers(ZILjava/util/List;)V

    return-void
.end method

.method public writePing()V
    .registers 5

    .line 425
    monitor-enter p0

    .line 426
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lokhttp3/internal/http2/Http2Connection;->awaitPingsSent:J

    .line 427
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_12

    const/4 v0, 0x0

    const/4 v1, 0x3

    const v2, 0x4f4b6f6b

    .line 428
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Http2Connection;->writePing(ZII)V

    return-void

    :catchall_12
    move-exception v0

    .line 427
    :try_start_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public writePing(ZII)V
    .registers 5

    .line 411
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {v0, p1, p2, p3}, Lokhttp3/internal/http2/Http2Writer;->ping(ZII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception p1

    .line 413
    invoke-virtual {p0, p1}, Lokhttp3/internal/http2/Http2Connection;->failConnection(Ljava/io/IOException;)V

    :goto_a
    return-void
.end method

.method public writePingAndAwaitPong()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->writePing()V

    .line 420
    invoke-virtual {p0}, Lokhttp3/internal/http2/Http2Connection;->awaitPong()V

    return-void
.end method

.method public writeSynReset(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    iget-object p0, p0, Lokhttp3/internal/http2/Http2Connection;->writer:Lokhttp3/internal/http2/Http2Writer;

    invoke-virtual {p0, p1, p2}, Lokhttp3/internal/http2/Http2Writer;->rstStream(ILokhttp3/internal/http2/ErrorCode;)V

    return-void
.end method

.method public writeSynResetLater(ILokhttp3/internal/http2/ErrorCode;)V
    .registers 11

    .line 334
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lokhttp3/internal/http2/Http2Connection$1;

    const-string v3, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v7

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lokhttp3/internal/http2/Http2Connection$1;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;ILokhttp3/internal/http2/ErrorCode;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method

.method public writeWindowUpdateLater(IJ)V
    .registers 13

    .line 354
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/http2/Http2Connection;->writerExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v8, Lokhttp3/internal/http2/Http2Connection$2;

    const-string v3, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lokhttp3/internal/http2/Http2Connection;->connectionName:Ljava/lang/String;

    aput-object v2, v4, v1

    const/4 v1, 0x1

    .line 355
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    move-object v1, v8

    move-object v2, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/http2/Http2Connection$2;-><init>(Lokhttp3/internal/http2/Http2Connection;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    .line 354
    invoke-interface {v0, v8}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_1f} :catch_1f

    :catch_1f
    return-void
.end method
