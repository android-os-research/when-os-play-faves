.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;,
        Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;,
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;,
        Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;,
        Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
    }
.end annotation


# static fields
.field public static final ALLOWED_CALLBACK_TYPES:[I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field public static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field public static final DBG:Z = false

.field public static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x90

.field public static final METRICS_SNAPSHOT_SPAN_MS:J = 0xea60L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field public static final TAG:Ljava/lang/String;

.field public static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final MSG_CHECK_NETWORKERROR:I

.field public final filter:Landroid/content/IntentFilter;

.field public final mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

.field public mCheckedNetId:I

.field public final mCm:Landroid/net/ConnectivityManager;

.field public final mConnectTb:Lcom/android/internal/util/TokenBucket;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field public mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

.field public mDnsHandler:Landroid/os/Handler;

.field public mFailCount:I

.field public mLastSnapshot:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mNetdEventCallbackList:[Landroid/net/INetdEventCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field public final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field public mPolicyManager:Landroid/net/NetworkPolicyManager;

.field public final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mWakeupStats:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field

.field public final receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mdeleteMobileDataLogFile(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->deleteMobileDataLogFile()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 90
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 163
    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 203
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 205
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    .line 206
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 211
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 213
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    if-eqz p1, :cond_43

    .line 215
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsEventHandler;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    goto :goto_49

    :cond_43
    const-string/jumbo p1, "handlerThread.getLooper() returned null"

    .line 217
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_49
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/net/NetworkPolicyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkPolicyManager;

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 111
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x90

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    const-wide/16 v0, 0x0

    .line 117
    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 121
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 124
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 130
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 134
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    .line 138
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->filter:Landroid/content/IntentFilter;

    .line 139
    new-instance v2, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const/16 v3, 0x3e8

    invoke-direct {v2, p0, v3}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V

    iput-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    .line 143
    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    .line 144
    iput v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->MSG_CHECK_NETWORKERROR:I

    .line 171
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/net/INetdEventCallback;

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 716
    new-instance v1, Lcom/android/server/connectivity/NetdEventListenerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    iput-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 226
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 228
    new-instance p0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public static isValidCallerType(I)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 194
    :goto_2
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v3, v2

    if-ge v1, v3, :cond_10

    .line 195
    aget v2, v2, v1

    if-ne p0, v2, :cond_d

    const/4 p0, 0x1

    return p0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    return v0
.end method

.method public static projectSnapshotTime(J)J
    .registers 4

    const-wide/32 v0, 0xea60

    .line 233
    div-long/2addr p0, v0

    mul-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 5

    monitor-enter p0

    .line 176
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 177
    sget-object p2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid caller type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_27

    const/4 p1, 0x0

    .line 178
    monitor-exit p0

    return p1

    .line 180
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_27

    const/4 p1, 0x1

    .line 181
    monitor-exit p0

    return p1

    :catchall_27
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .registers 4

    .line 538
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 539
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 540
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    if-nez v1, :cond_1b

    .line 542
    new-instance v1, Landroid/net/metrics/WakeupStats;

    invoke-direct {v1, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    .line 543
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    :cond_1b
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    return-void
.end method

.method public final collectPendingMetricsSnapshot(JZ)V
    .registers 8

    if-nez p3, :cond_12

    .line 258
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    cmp-long p3, v0, v2

    if-gtz p3, :cond_12

    return-void

    .line 261
    :cond_12
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 262
    iget-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 263
    invoke-static {p1, p2, p3}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object p1

    .line 264
    iget-object p2, p1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_27

    return-void

    .line 267
    :cond_27
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    return-void
.end method

.method public final deleteMobileDataLogFile()V
    .registers 2

    .line 736
    new-instance p0, Ljava/io/File;

    const-string v0, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 738
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method public dnsHandleEvent(Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;)V
    .registers 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 313
    iget v2, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 314
    iget v3, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 315
    iget v4, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    const-string v5, "DNS Requested by : "

    const-string v6, ", "

    const/4 v7, 0x0

    if-eqz v2, :cond_1c7

    .line 316
    iget-object v8, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_1c7

    .line 317
    iget-object v8, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v8, v4}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_1c6

    .line 318
    iget-object v8, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    if-nez v8, :cond_23

    goto/16 :goto_1c6

    :cond_23
    const/16 v8, 0xb

    .line 321
    invoke-virtual {v4, v8}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    const/4 v8, 0x1

    xor-int/2addr v4, v8

    .line 322
    iget-object v9, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v9, v3, v4}, Landroid/net/NetworkPolicyManager;->isUidNetworkingBlocked(IZ)Z

    move-result v4

    .line 323
    sget-object v9, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    .line 327
    iget-object v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-nez v5, :cond_63

    return-void

    .line 331
    :cond_63
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 333
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    .line 334
    new-instance v10, Landroid/telephony/TelephonyManager;

    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v6}, Landroid/telephony/TelephonyManager;-><init>(Landroid/content/Context;I)V

    .line 335
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v11

    .line 336
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v12

    .line 337
    invoke-virtual {v10, v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v6

    .line 339
    iget v10, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 341
    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8f

    .line 344
    aget-object v3, v3, v7

    goto :goto_91

    :cond_8f
    const-string v3, ""

    :goto_91
    if-eqz v11, :cond_98

    .line 348
    invoke-virtual {v11}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v11

    goto :goto_99

    :cond_98
    move v11, v7

    .line 351
    :goto_99
    iget v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    const/16 v14, 0x14

    const/4 v15, 0x2

    if-ne v13, v14, :cond_170

    if-nez v5, :cond_170

    iget v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    if-eq v10, v13, :cond_170

    .line 352
    iput v10, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 354
    :try_start_a8
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ad} :catch_158

    :try_start_ad
    const-string/jumbo v13, "sending DNS"

    .line 356
    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x3e8

    .line 357
    invoke-virtual {v4, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 358
    iget-object v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    const-string v9, "\\."

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 359
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 360
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-array v14, v15, [B

    .line 362
    invoke-virtual {v9, v14}, Ljava/util/Random;->nextBytes([B)V

    .line 364
    invoke-virtual {v13, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v9, v15, [B

    aput-byte v8, v9, v7

    aput-byte v7, v9, v8

    .line 365
    invoke-virtual {v13, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v9, v15, [B

    aput-byte v7, v9, v7

    aput-byte v8, v9, v8

    .line 366
    invoke-virtual {v13, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v9, v15, [B

    aput-byte v7, v9, v7

    aput-byte v7, v9, v8

    .line 367
    invoke-virtual {v13, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v9, v15, [B

    aput-byte v7, v9, v7

    aput-byte v7, v9, v8

    .line 368
    invoke-virtual {v13, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v9, v15, [B

    aput-byte v7, v9, v7

    aput-byte v7, v9, v8

    .line 369
    invoke-virtual {v13, v9}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 371
    array-length v9, v0

    move v14, v7

    :goto_101
    if-ge v14, v9, :cond_117

    aget-object v8, v0, v14

    const-string v15, "US-ASCII"

    .line 372
    invoke-virtual {v8, v15}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 373
    array-length v15, v8

    invoke-virtual {v13, v15}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 374
    invoke-virtual {v13, v8}, Ljava/io/ByteArrayOutputStream;->write([B)V

    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    const/4 v15, 0x2

    goto :goto_101

    .line 376
    :cond_117
    invoke-virtual {v13, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x2

    new-array v0, v8, [B

    aput-byte v7, v0, v7

    const/4 v9, 0x1

    aput-byte v9, v0, v9

    .line 378
    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    new-array v0, v8, [B

    aput-byte v7, v0, v7

    aput-byte v9, v0, v9

    .line 379
    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 380
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 382
    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v0

    const-string v13, "8.8.8.8"

    .line 383
    invoke-static {v13}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/16 v14, 0x35

    invoke-direct {v8, v0, v9, v13, v14}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 384
    invoke-virtual {v4, v8}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 386
    array-length v0, v0

    new-array v8, v0, [B

    .line 387
    new-instance v9, Ljava/net/DatagramPacket;

    invoke-direct {v9, v8, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 388
    invoke-virtual {v4, v9}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V
    :try_end_14e
    .catchall {:try_start_ad .. :try_end_14e} :catchall_153

    .line 391
    :try_start_14e
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    move v4, v7

    goto :goto_170

    :catchall_153
    move-exception v0

    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 392
    throw v0
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_14e .. :try_end_158} :catch_158

    :catch_158
    move-exception v0

    .line 394
    sget-object v4, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 399
    :cond_170
    :goto_170
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    .line 400
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x1

    aput-object v2, v8, v5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v8, v5

    const/4 v2, 0x3

    iget v5, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v8, v2

    const/4 v2, 0x4

    .line 401
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    const/4 v2, 0x7

    aput-object v3, v8, v2

    const/16 v2, 0x8

    aput-object v12, v8, v2

    const-string v2, "%02d %02d %d %d %d %d %d %s %s"

    .line 399
    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->log(Ljava/lang/String;)V

    .line 403
    iget v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_1c1

    .line 404
    iput v7, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    goto :goto_1e7

    :cond_1c1
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 406
    iput v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    goto :goto_1e7

    :cond_1c6
    :goto_1c6
    return-void

    .line 410
    :cond_1c7
    sget-object v2, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iput v7, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mCheckedNetId:I

    .line 413
    iput v7, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mFailCount:I

    :goto_1e7
    return-void
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    .line 549
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 550
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 551
    iget v3, v2, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v3, :cond_1a

    goto :goto_21

    .line 554
    :cond_1a
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    move v1, v0

    .line 556
    :goto_25
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 557
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 558
    iget v3, v2, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v3, :cond_3c

    goto :goto_43

    .line 561
    :cond_3c
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 563
    :cond_46
    :goto_46
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_60

    .line 564
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 566
    :cond_60
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 567
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V
    :try_end_6a
    .catchall {:try_start_3 .. :try_end_6a} :catchall_6c

    .line 568
    monitor-exit p0

    return-void

    :catchall_6c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public final getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .registers 10

    .line 237
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 238
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCallback:Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;

    invoke-virtual {v1, p3}, Lcom/android/server/connectivity/NetdEventListenerService$TransportForNetIdNetworkCallback;->getNetworkCapabilities(I)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 239
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v2

    goto :goto_1b

    :cond_19
    const-wide/16 v2, 0x0

    :goto_1b
    if-eqz v0, :cond_27

    if-eqz v1, :cond_27

    .line 240
    iget-wide v4, v0, Landroid/net/metrics/NetworkMetrics;->transports:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    .line 242
    :goto_28
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    if-eqz v0, :cond_2f

    if-eqz v1, :cond_3b

    .line 244
    :cond_2f
    new-instance v0, Landroid/net/metrics/NetworkMetrics;

    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v0, p3, v2, v3, p1}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    .line 245
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {p0, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3b
    return-object v0
.end method

.method public final getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .registers 4

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(JZ)V

    .line 252
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object p0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .registers 7

    monitor-enter p0

    .line 573
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 574
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 575
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    :cond_18
    const-string v0, "dns/connect events:"

    .line 578
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    .line 579
    :goto_1f
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 580
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_37
    move v1, v0

    .line 582
    :goto_38
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_50

    .line 583
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    :cond_50
    const-string v1, ""

    .line 585
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "network statistics:"

    .line 586
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v1

    array-length v2, v1

    move v3, v0

    :goto_61
    if-ge v3, v2, :cond_6b

    aget-object v4, v1, v3

    .line 588
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_6b
    const-string v1, ""

    .line 590
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "packet wakeup events:"

    .line 591
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    .line 592
    :goto_77
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_8b

    .line 593
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 595
    :cond_8b
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/metrics/WakeupEvent;

    array-length v2, v1

    :goto_94
    if-ge v0, v2, :cond_9e

    aget-object v3, v1, v0

    .line 596
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_9b
    .catchall {:try_start_1 .. :try_end_9b} :catchall_a0

    add-int/lit8 v0, v0, 0x1

    goto :goto_94

    .line 598
    :cond_9e
    monitor-exit p0

    return-void

    :catchall_a0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 604
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 605
    :goto_8
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 606
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_24
    move v2, v1

    .line 608
    :goto_25
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 609
    iget-object v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/metrics/NetworkMetrics;

    iget-object v3, v3, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 611
    :cond_41
    :goto_41
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_5b

    .line 612
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_5d

    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 614
    :cond_5b
    monitor-exit p0

    return-object v0

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 465
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 466
    invoke-virtual {p0, v6, v7, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 468
    iget-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_10
    if-ge p3, p2, :cond_20

    aget-object v0, p1, p3

    if-eqz v0, :cond_1d

    move-object v1, p4

    move v2, p5

    move-wide v3, v6

    move v5, p6

    .line 470
    invoke-interface/range {v0 .. v5}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_22

    :cond_1d
    add-int/lit8 p3, p3, 0x1

    goto :goto_10

    .line 473
    :cond_20
    monitor-exit p0

    return-void

    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v12, p3

    monitor-enter p0

    .line 292
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 293
    invoke-virtual {v1, v13, v14, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v2

    move/from16 v15, p2

    move/from16 v3, p4

    invoke-virtual {v2, v15, v12, v3}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 295
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v9, v11

    const/4 v2, 0x0

    move v10, v2

    :goto_1b
    if-ge v10, v9, :cond_47

    aget-object v2, v11, v10

    if-eqz v2, :cond_3a

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v16, v9

    move/from16 v17, v10

    move-wide v9, v13

    move-object/from16 v18, v11

    move/from16 v11, p8

    .line 297
    invoke-interface/range {v2 .. v11}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    goto :goto_40

    :cond_3a
    move/from16 v16, v9

    move/from16 v17, v10

    move-object/from16 v18, v11

    :goto_40
    add-int/lit8 v10, v17, 0x1

    move/from16 v9, v16

    move-object/from16 v11, v18

    goto :goto_1b

    .line 303
    :cond_47
    iget-object v2, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    if-eqz v2, :cond_61

    const/16 v3, 0x2711

    .line 304
    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 305
    new-instance v3, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;

    move-object/from16 v4, p5

    move/from16 v5, p8

    invoke-direct {v3, v0, v12, v4, v5}, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;-><init>(IILjava/lang/String;I)V

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 306
    iget-object v0, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_61
    .catchall {:try_start_7 .. :try_end_61} :catchall_63

    .line 309
    :cond_61
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 440
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    if-eqz v3, :cond_e

    .line 442
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 445
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 453
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_11

    aget-object v3, v0, v2

    if-eqz v3, :cond_e

    .line 455
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_13

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 458
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 14

    monitor-enter p0

    .line 507
    :try_start_1
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p3

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p4

    if-ne v0, v1, :cond_30

    array-length v0, p1

    array-length v1, p5

    if-eq v0, v1, :cond_12

    goto :goto_30

    .line 515
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 516
    :goto_17
    array-length v3, p1

    if-ge v2, v3, :cond_2e

    .line 517
    aget v3, p1, v2

    .line 518
    aget v4, p2, v2

    .line 519
    aget v5, p3, v2

    .line 520
    aget v6, p4, v2

    .line 521
    aget v7, p5, v2

    .line 522
    invoke-virtual {p0, v0, v1, v3}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v3

    .line 523
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_39

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 525
    :cond_2e
    monitor-exit p0

    return-void

    .line 511
    :cond_30
    :goto_30
    :try_start_30
    sget-object p1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string p2, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_39

    .line 512
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 25

    move-object v1, p0

    monitor-enter p0

    :try_start_2
    const-string/jumbo v0, "iface:"

    const-string v2, ""

    move-object v3, p1

    .line 478
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v2, 0x0

    cmp-long v0, p10, v2

    if-lez v0, :cond_18

    const-wide/32 v2, 0xf4240

    .line 481
    div-long v2, p10, v2

    goto :goto_1c

    .line 483
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 486
    :goto_1c
    new-instance v0, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v0}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 487
    iput-object v5, v0, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 488
    iput-wide v2, v0, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    move v2, p2

    .line 489
    iput v2, v0, Landroid/net/metrics/WakeupEvent;->uid:I

    move/from16 v6, p3

    .line 490
    iput v6, v0, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 491
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v3

    iput-object v3, v0, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    move-object/from16 v8, p6

    .line 492
    iput-object v8, v0, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    move-object/from16 v9, p7

    .line 493
    iput-object v9, v0, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    move/from16 v10, p4

    .line 494
    iput v10, v0, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    move/from16 v11, p8

    .line 495
    iput v11, v0, Landroid/net/metrics/WakeupEvent;->srcPort:I

    move/from16 v12, p9

    .line 496
    iput v12, v0, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 497
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 499
    iget-object v0, v0, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const/16 v3, 0x2c

    move v4, p2

    move/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p4

    move/from16 v11, p8

    move/from16 v12, p9

    .line 500
    invoke-static/range {v3 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_61
    .catchall {:try_start_2 .. :try_end_61} :catchall_63

    .line 502
    monitor-exit p0

    return-void

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .registers 5

    monitor-enter p0

    .line 185
    :try_start_1
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_20

    .line 186
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_28

    const/4 p1, 0x0

    .line 187
    monitor-exit p0

    return p1

    .line 189
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_28

    const/4 p1, 0x1

    .line 190
    monitor-exit p0

    return p1

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public writeMobileDataDnsFile()V
    .registers 5

    .line 743
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 744
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "writeMobileDataDnsFile"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_26

    const-string v2, "!dir.exists"

    .line 746
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "dir not created"

    .line 748
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_26
    const-string v0, "end of dir"

    .line 752
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/err/mobiledata_dns.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 758
    :try_start_33
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 759
    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 761
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_40} :catch_54
    .catchall {:try_start_33 .. :try_end_40} :catchall_52

    .line 762
    :try_start_40
    iget-object p0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mDnsErrorInfoLog:Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;

    invoke-virtual {p0, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 763
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_48} :catch_4f
    .catchall {:try_start_40 .. :try_end_48} :catchall_4c

    .line 768
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    goto :goto_5d

    :catchall_4c
    move-exception p0

    move-object v1, v2

    goto :goto_5e

    :catch_4f
    move-exception p0

    move-object v1, v2

    goto :goto_55

    :catchall_52
    move-exception p0

    goto :goto_5e

    :catch_54
    move-exception p0

    .line 765
    :goto_55
    :try_start_55
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_52

    if-eqz v1, :cond_5d

    .line 768
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    :cond_5d
    :goto_5d
    return-void

    :goto_5e
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 770
    :cond_63
    throw p0
.end method
