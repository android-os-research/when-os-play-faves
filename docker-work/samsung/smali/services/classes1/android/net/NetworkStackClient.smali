.class public Landroid/net/NetworkStackClient;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStackClient$NetworkStackConnection;,
        Landroid/net/NetworkStackClient$DependenciesImpl;,
        Landroid/net/NetworkStackClient$Dependencies;,
        Landroid/net/NetworkStackClient$NetworkStackCallback;
    }
.end annotation


# static fields
.field private static final NETWORKSTACK_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "NetworkStackClient"

.field private static sInstance:Landroid/net/NetworkStackClient;


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation
.end field

.field private final mDependencies:Landroid/net/NetworkStackClient$Dependencies;

.field private final mLog:Landroid/net/util/SharedLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLog"
        }
    .end annotation
.end field

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkStackClient$NetworkStackCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWasSystemServerInitialized:Z


# direct methods
.method public static synthetic $r8$lambda$A4R605v8zD2R5m9dNkvSHou-Iwg(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 2

    invoke-static {p0, p1}, Landroid/net/NetworkStackClient;->lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FxTPBf8RuWQq_A8GUXl2g94g3NE(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/NetworkStackClient;->lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HjVCLnOYfEOjLHCxGuOQm5Kj1gE(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aqFtTutoRgUrE_jm0yzXxwF21sI(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogi(Landroid/net/NetworkStackClient;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterNetworkStackService(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 79
    new-instance v0, Landroid/net/NetworkStackClient$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/NetworkStackClient$DependenciesImpl;-><init>(Landroid/net/NetworkStackClient$DependenciesImpl-IA;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;-><init>(Landroid/net/NetworkStackClient$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/NetworkStackClient$Dependencies;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 75
    iput-object p1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/net/NetworkStackClient;
    .registers 2

    const-class v0, Landroid/net/NetworkStackClient;

    monitor-enter v0

    .line 122
    :try_start_3
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    if-nez v1, :cond_e

    .line 123
    new-instance v1, Landroid/net/NetworkStackClient;

    invoke-direct {v1}, Landroid/net/NetworkStackClient;-><init>()V

    sput-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    .line 125
    :cond_e
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRemoteConnector()Landroid/net/INetworkStackConnector;
    .registers 8

    const/4 v0, 0x0

    .line 282
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :cond_5
    const-string/jumbo v3, "network_stack"

    .line 283
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_24

    const-wide/16 v3, 0x14

    .line 284
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x2710

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    const-string v1, "Timeout waiting for NetworkStack connector"

    .line 286
    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_23
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_23} :catch_29

    return-object v0

    .line 295
    :cond_24
    invoke-static {v3}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object p0

    return-object p0

    :catch_29
    move-exception v1

    const-string v2, "Error waiting for NetworkStack connector"

    .line 291
    invoke-direct {p0, v2, v1}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 2

    .line 182
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 184
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8
    return-void
.end method

.method private static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 137
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 139
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8
    return-void
.end method

.method private static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 3

    .line 152
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8
    return-void
.end method

.method private static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .registers 4

    .line 167
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 169
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_8
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .registers 3

    .line 243
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 245
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 249
    sget-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 251
    :try_start_8
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 256
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 257
    :try_start_3
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private logi(Ljava/lang/String;)V
    .registers 3

    .line 265
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 266
    :try_start_3
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {p0, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 267
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method private registerNetworkStackService(Landroid/os/IBinder;)V
    .registers 5

    .line 199
    invoke-static {p1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 200
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v1, p1}, Landroid/net/NetworkStackClient$Dependencies;->addToServiceManager(Landroid/os/IBinder;)V

    const-string p1, "Network stack service registered"

    .line 201
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 204
    iget-object p1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter p1

    .line 205
    :try_start_11
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 207
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 208
    monitor-exit p1
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_35

    .line 210
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 211
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    goto :goto_24

    :cond_34
    return-void

    :catchall_35
    move-exception p0

    .line 208
    :try_start_36
    monitor-exit p1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method private requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V
    .registers 4

    .line 299
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->checkCallerUid()V

    .line 301
    iget-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    if-nez v0, :cond_1a

    .line 304
    invoke-direct {p0}, Landroid/net/NetworkStackClient;->getRemoteConnector()Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 305
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 306
    :try_start_10
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 307
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_17

    .line 308
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    return-void

    :catchall_17
    move-exception p0

    .line 307
    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw p0

    .line 313
    :cond_1a
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 314
    :try_start_1d
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    if-nez v1, :cond_28

    .line 316
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2d

    .line 321
    invoke-interface {p1, v1}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    return-void

    :catchall_2d
    move-exception p0

    .line 319
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 329
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityModuleConnector;->dump(Ljava/io/PrintWriter;)V

    .line 334
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 335
    :try_start_10
    iget-object p0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 336
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_30

    .line 338
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingNetStackRequests length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_30
    move-exception p0

    .line 336
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .registers 3

    .line 180
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda3;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    return-void
.end method

.method public init()V
    .registers 2

    const-string v0, "Network stack init"

    .line 220
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    return-void
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .registers 5

    .line 135
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .registers 4

    .line 150
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .registers 5

    .line 165
    new-instance v0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    return-void
.end method

.method public start()V
    .registers 5

    .line 233
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-class v1, Landroid/net/INetworkStackConnector;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/NetworkStackClient$NetworkStackConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;Landroid/net/NetworkStackClient$NetworkStackConnection-IA;)V

    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    .line 233
    invoke-virtual {v0, v1, v3, v2}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V

    const-string v0, "Network stack service start requested"

    .line 236
    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    return-void
.end method
