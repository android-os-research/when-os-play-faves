.class public final Lcom/android/server/UiThread;
.super Lcom/android/server/ServiceThread;
.source "UiThread.java"


# static fields
.field public static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static sHandler:Landroid/os/Handler;

.field public static sInstance:Lcom/android/server/UiThread;


# direct methods
.method public constructor <init>()V
    .registers 4

    const-string v0, "android.ui"

    const/4 v1, -0x2

    const/4 v2, 0x0

    .line 41
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static dispose()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 88
    :try_start_3
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v1, :cond_9

    .line 89
    monitor-exit v0

    return-void

    .line 92
    :cond_9
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/UiThread$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/server/UiThread$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiThread;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    const/4 v1, 0x0

    .line 93
    sput-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 94
    monitor-exit v0

    return-void

    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public static ensureThreadLocked()V
    .registers 5

    .line 56
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    if-nez v0, :cond_2e

    .line 57
    new-instance v0, Lcom/android/server/UiThread;

    invoke-direct {v0}, Lcom/android/server/UiThread;-><init>()V

    sput-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    .line 58
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 59
    sget-object v0, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x64

    const-wide/16 v3, 0xc8

    .line 61
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    :cond_2e
    return-void
.end method

.method public static get()Lcom/android/server/UiThread;
    .registers 2

    .line 68
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 70
    sget-object v1, Lcom/android/server/UiThread;->sInstance:Lcom/android/server/UiThread;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 71
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public static getHandler()Landroid/os/Handler;
    .registers 2

    .line 75
    const-class v0, Lcom/android/server/UiThread;

    monitor-enter v0

    .line 76
    :try_start_3
    invoke-static {}, Lcom/android/server/UiThread;->ensureThreadLocked()V

    .line 77
    sget-object v1, Lcom/android/server/UiThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_a
    move-exception v1

    .line 78
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 47
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    .line 49
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_OPT:Z

    if-eqz v1, :cond_b

    const/16 v1, 0xa

    goto :goto_c

    :cond_b
    const/4 v1, 0x5

    .line 47
    :goto_c
    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroup(II)V

    .line 52
    invoke-super {p0}, Lcom/android/server/ServiceThread;->run()V

    return-void
.end method
