.class public final Lcom/android/server/JobSchedulerBackgroundThread;
.super Landroid/os/HandlerThread;
.source "JobSchedulerBackgroundThread.java"


# static fields
.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field public static sHandler:Landroid/os/Handler;

.field public static sHandlerExecutor:Ljava/util/concurrent/Executor;

.field public static sInstance:Lcom/android/server/JobSchedulerBackgroundThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string/jumbo v0, "jobscheduler.bg"

    const/16 v1, 0xa

    .line 40
    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static ensureThreadLocked()V
    .registers 5

    .line 44
    sget-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    if-nez v0, :cond_37

    .line 45
    new-instance v0, Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-direct {v0}, Lcom/android/server/JobSchedulerBackgroundThread;-><init>()V

    sput-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    .line 46
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 47
    sget-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 48
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    .line 49
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 51
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    .line 52
    new-instance v0, Landroid/os/HandlerExecutor;

    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v0, Lcom/android/server/JobSchedulerBackgroundThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

    :cond_37
    return-void
.end method

.method public static get()Lcom/android/server/JobSchedulerBackgroundThread;
    .registers 2

    .line 58
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 59
    :try_start_3
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 60
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sInstance:Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 61
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 2

    .line 74
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 75
    :try_start_3
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 76
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandlerExecutor:Ljava/util/concurrent/Executor;

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

    .line 66
    const-class v0, Lcom/android/server/JobSchedulerBackgroundThread;

    monitor-enter v0

    .line 67
    :try_start_3
    invoke-static {}, Lcom/android/server/JobSchedulerBackgroundThread;->ensureThreadLocked()V

    .line 68
    sget-object v1, Lcom/android/server/JobSchedulerBackgroundThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method
