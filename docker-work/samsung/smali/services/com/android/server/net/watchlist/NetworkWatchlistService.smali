.class public Lcom/android/server/net/watchlist/NetworkWatchlistService;
.super Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.source "NetworkWatchlistService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final MAX_NUM_OF_WATCHLIST_DIGESTS:I = 0x2710

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerThread:Lcom/android/server/ServiceThread;

.field public mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public volatile mIsLoggingEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLoggingSwitchLock"
        }
    .end annotation
.end field

.field public final mLoggingSwitchLock:Ljava/lang/Object;

.field public final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field public mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$minit(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->init()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minitIpConnectivityMetrics(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->initIpConnectivityMetrics()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 112
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 113
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 115
    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 117
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 119
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->reportWatchlistIfNecessary()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/net/watchlist/WatchlistLoggingHandler;Landroid/net/IIpConnectivityMetrics;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 127
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 129
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 130
    iput-object p3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 131
    iput-object p4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 283
    :cond_b
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/net/watchlist/WatchlistConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final enforceWatchlistLoggingPermission()V
    .registers 4

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 247
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 248
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Uid %d has no permission to change watchlist setting."

    .line 247
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public forceReportWatchlistForTest(J)Z
    .registers 4

    .line 272
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 276
    :cond_a
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->forceReportWatchlistForTest(J)V

    const/4 p0, 0x1

    return p0
.end method

.method public getWatchlistConfigHash()[B
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .registers 1

    .line 135
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->removeTestModeConfig()V

    return-void
.end method

.method public final initIpConnectivityMetrics()V
    .registers 2

    const-string v0, "connmetrics"

    .line 140
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    return-void
.end method

.method public final isCallerShell()Z
    .registers 2

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_d

    if-nez p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 170
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_e

    .line 171
    sget-object p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string p1, "Only shell is allowed to call network watchlist shell commands"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 174
    :cond_e
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;

    iget-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public reloadWatchlist()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 255
    sget-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v1, "Reloading watchlist"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    return-void
.end method

.method public reportWatchlistIfNecessary()V
    .registers 1

    .line 262
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->reportWatchlistIfNecessary()V

    return-void
.end method

.method public startWatchlistLogging()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->startWatchlistLoggingImpl()Z

    move-result p0

    return p0
.end method

.method public startWatchlistLoggingImpl()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_11

    .line 185
    sget-object p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v1, "Watchlist logging is already running"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_25

    return v2

    :cond_11
    const/4 v1, 0x0

    .line 189
    :try_start_12
    iget-object v3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v3, v4, v5}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 191
    iput-boolean v2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_23
    .catchall {:try_start_12 .. :try_end_1f} :catchall_25

    .line 192
    :try_start_1f
    monitor-exit v0

    return v2

    .line 194
    :cond_21
    monitor-exit v0

    return v1

    .line 198
    :catch_23
    monitor-exit v0

    return v1

    :catchall_25
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_25

    throw p0
.end method

.method public stopWatchlistLogging()Z
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->stopWatchlistLoggingImpl()Z

    move-result p0

    return p0
.end method

.method public stopWatchlistLoggingImpl()Z
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    if-nez v1, :cond_11

    .line 216
    sget-object p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v1, "Watchlist logging is not running"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 217
    monitor-exit v0

    return p0

    :cond_11
    const/4 v1, 0x0

    .line 220
    iput-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    .line 223
    :try_start_14
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result p0
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1b} :catch_1d
    .catchall {:try_start_14 .. :try_end_1b} :catchall_1f

    :try_start_1b
    monitor-exit v0

    return p0

    .line 227
    :catch_1d
    monitor-exit v0

    return v1

    :catchall_1f
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw p0
.end method
