.class public final Lcom/android/server/location/LocationServiceThread;
.super Lcom/android/server/ServiceThread;
.source "LocationServiceThread.java"


# static fields
.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/location/LocationServiceThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "LocationProviderManagerThread"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static declared-synchronized ensureThreadLocked()V
    .registers 6

    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 49
    :try_start_3
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    if-nez v1, :cond_3a

    .line 50
    new-instance v1, Lcom/android/server/location/LocationServiceThread;

    invoke-direct {v1}, Lcom/android/server/location/LocationServiceThread;-><init>()V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    .line 51
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 52
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/32 v2, 0x80000

    .line 53
    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    .line 54
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 56
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    .line 57
    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3c

    .line 59
    :cond_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static get()Lcom/android/server/location/LocationServiceThread;
    .registers 2

    .line 62
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 63
    :try_start_3
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 64
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sInstance:Lcom/android/server/location/LocationServiceThread;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 65
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 76
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 77
    :try_start_3
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 78
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 79
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 69
    const-class v0, Lcom/android/server/location/LocationServiceThread;

    monitor-enter v0

    .line 70
    :try_start_3
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->ensureThreadLocked()V

    .line 71
    sget-object v1, Lcom/android/server/location/LocationServiceThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 72
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
