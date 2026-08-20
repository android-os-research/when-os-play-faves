.class public Lcom/android/server/soundtrigger_middleware/UptimeTimer;
.super Ljava/lang/Object;
.source "UptimeTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;,
        Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
    }
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$ZE1MMCABBeh29z-r6ev-_ww3od4(Lcom/android/server/soundtrigger_middleware/UptimeTimer;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->threadFunc()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    .line 43
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/soundtrigger_middleware/UptimeTimer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/soundtrigger_middleware/UptimeTimer;)V

    invoke-direct {v0, v1, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 44
    monitor-enter p0

    .line 45
    :goto_14
    :try_start_14
    iget-object p1, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_25

    if-nez p1, :cond_23

    .line 47
    :try_start_18
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_1c
    .catchall {:try_start_18 .. :try_end_1b} :catchall_25

    goto :goto_14

    :catch_1c
    move-exception p1

    .line 49
    :try_start_1d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 52
    :cond_23
    monitor-exit p0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_25

    throw p1
.end method


# virtual methods
.method public createTask(Ljava/lang/Runnable;J)Lcom/android/server/soundtrigger_middleware/UptimeTimer$Task;
    .registers 5

    .line 56
    new-instance v0, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;

    invoke-direct {v0, p1}, Lcom/android/server/soundtrigger_middleware/UptimeTimer$TaskImpl;-><init>(Ljava/lang/Runnable;)V

    .line 57
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-object v0
.end method

.method public final threadFunc()V
    .registers 3

    .line 62
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 63
    monitor-enter p0

    .line 64
    :try_start_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/soundtrigger_middleware/UptimeTimer;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    .line 67
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_17
    move-exception v0

    .line 66
    :try_start_18
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method
