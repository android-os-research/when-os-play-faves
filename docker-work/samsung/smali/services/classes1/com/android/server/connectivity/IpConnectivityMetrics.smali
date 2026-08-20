.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x7d0

.field public static final DEFAULT_LOG_SIZE:I = 0x1f4

.field public static final ERROR_RATE_LIMITED:I = -0x1

.field public static final MAXIMUM_BUFFER_SIZE:I = 0x4e20

.field public static final MAXIMUM_CONNECT_LATENCY_RECORDS:I = 0x4e20

.field public static final NYC:I = 0x0

.field public static final NYC_MR1:I = 0x1

.field public static final NYC_MR2:I = 0x2

.field public static final READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field public static final TAG:Ljava/lang/String; = "IpConnectivityMetrics"

.field public static final VERSION:I = 0x2


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mBuckets:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation
.end field

.field public mBuffer:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public mCapacity:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mCapacityGetter:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mDropped:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mEventLog:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OKNCsjwIrvBXUvgBaJ9UFwHLUKs(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->lambda$static$1(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nMcHU0imNCqv1twZNm4qwjbUzXQ(Ljava/io/PrintWriter;Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->lambda$cmdListAsTextProto$0(Ljava/io/PrintWriter;Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mappend(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcmdFlush(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcmdList(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcmdListAsBinaryProto(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/OutputStream;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsBinaryProto(Ljava/io/OutputStream;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcmdListAsTextProto(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsTextProto(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 390
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 134
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;-><init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 128
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 95
    new-instance p1, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-direct {p1, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 103
    new-instance p1, Lcom/android/internal/util/RingBuffer;

    const-class v0, Landroid/net/ConnectivityMetricsEvent;

    const/16 v1, 0x1f4

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 120
    invoke-static {}, Lcom/android/server/connectivity/IpConnectivityMetrics;->makeRateLimitingBuckets()Landroid/util/ArrayMap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 124
    new-instance p1, Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-direct {p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 129
    iput-object p2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 130
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    return-void
.end method

.method public static synthetic lambda$cmdListAsTextProto$0(Ljava/io/PrintWriter;Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .registers 2

    .line 261
    invoke-virtual {p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$static$1(Landroid/content/Context;)I
    .registers 3

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "connectivity_metrics_buffer_size"

    const/16 v1, 0x7d0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_f

    return v1

    :cond_f
    const/16 v0, 0x4e20

    .line 396
    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static makeRateLimitingBuckets()Landroid/util/ArrayMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 402
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    new-instance v2, Lcom/android/internal/util/TokenBucket;

    const v3, 0xea60

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final append(Landroid/net/ConnectivityMetricsEvent;)I
    .registers 5

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 171
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 172
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    if-nez p1, :cond_15

    .line 174
    monitor-exit v0

    return v1

    .line 176
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 p0, -0x1

    .line 178
    monitor-exit v0

    return p0

    :cond_1e
    if-nez v1, :cond_29

    .line 181
    iget p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    const/4 p0, 0x0

    .line 182
    monitor-exit v0

    return p0

    .line 184
    :cond_29
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    .line 185
    monitor-exit v0

    return v1

    :catchall_32
    move-exception p0

    .line 186
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public bufferCapacity()I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final cmdFlush(Ljava/io/PrintWriter;)V
    .registers 2

    .line 227
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->flushEncodedOutput()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final cmdList(Ljava/io/PrintWriter;)V
    .registers 4

    const-string/jumbo v0, "metrics events:"

    .line 235
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 238
    invoke-virtual {v1}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_22
    const-string v0, ""

    .line 240
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v1, :cond_2e

    .line 242
    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->list(Ljava/io/PrintWriter;)V

    .line 244
    :cond_2e
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEvents(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final cmdListAsBinaryProto(Ljava/io/OutputStream;)V
    .registers 4

    .line 269
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 270
    :try_start_3
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 271
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_1e

    .line 273
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    move-result-object p0

    .line 274
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write([B)V

    .line 275
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    .line 277
    sget-object p1, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string v0, "could not serialize events"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void

    :catchall_1e
    move-exception p0

    .line 271
    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final cmdListAsTextProto(Ljava/io/PrintWriter;)V
    .registers 3

    .line 261
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    move-result-object p0

    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final flushEncodedOutput()Ljava/lang/String;
    .registers 4

    .line 197
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_3
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 199
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 200
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 201
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_30

    .line 203
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->flushEvents(Ljava/util/List;)V

    .line 207
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz p0, :cond_1b

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->flushStatistics(Ljava/util/List;)V

    .line 213
    :cond_1b
    :try_start_1b
    invoke-static {v2, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    move-result-object p0
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1f} :catch_25

    const/4 v0, 0x0

    .line 219
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_25
    move-exception p0

    .line 215
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string v1, "could not serialize events"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p0, ""

    return-object p0

    :catchall_30
    move-exception p0

    .line 201
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public final getEvents()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/net/ConnectivityMetricsEvent;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 287
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final initBuffer()V
    .registers 4

    .line 161
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 162
    :try_start_4
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 163
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 164
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 165
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public final isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z
    .registers 2

    .line 190
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    iget-object p1, p1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/TokenBucket;

    if-eqz p0, :cond_18

    .line 191
    invoke-virtual {p0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final listEventsAsProtos()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v1, :cond_13

    .line 251
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetdEventListenerService;->listAsProtos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 253
    :cond_13
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {p0}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEventsAsProto()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_29

    .line 146
    new-instance p1, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 148
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    const-string v0, "connmetrics"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    const-string/jumbo v0, "netd_listener"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 151
    const-class p1, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl-IA;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method
