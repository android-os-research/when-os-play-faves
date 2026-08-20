.class public final Lcom/android/server/FgThread;
.super Lcom/android/server/ServiceThread;
.source "FgThread.java"


# static fields
.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Landroid/os/HandlerExecutor;

.field public static sInstance:Lcom/android/server/FgThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "android.fg"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .registers 5

    .line 47
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    if-nez v0, :cond_37

    .line 48
    new-instance v0, Lcom/android/server/FgThread;

    invoke-direct {v0}, Lcom/android/server/FgThread;-><init>()V

    sput-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    sget-object v0, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 54
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    :cond_37
    return-void
.end method

.method public static get()Lcom/android/server/FgThread;
    .registers 2

    .line 60
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 61
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 62
    sget-object v1, Lcom/android/server/FgThread;->sInstance:Lcom/android/server/FgThread;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 63
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 74
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 75
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 76
    sget-object v1, Lcom/android/server/FgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 77
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 67
    const-class v0, Lcom/android/server/FgThread;

    monitor-enter v0

    .line 68
    :try_start_3
    invoke-static {}, Lcom/android/server/FgThread;->ensureThreadLocked()V

    .line 69
    sget-object v1, Lcom/android/server/FgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 70
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
