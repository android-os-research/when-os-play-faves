.class public Lcom/samsung/android/server/audio/AudioExecutor;
.super Ljava/lang/Object;
.source "AudioExecutor.java"


# static fields
.field public static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field public static final TAG:Ljava/lang/String; = "AS.AudioExecutor"

.field public static sExecutor:Landroid/os/HandlerExecutor;


# direct methods
.method public static synthetic $r8$lambda$pOHygsgdKZPZaE18RKc_zp_sQkM(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/audio/AudioExecutor;->lambda$execute$0(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .registers 4

    .line 27
    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->init()V

    .line 29
    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v0

    .line 31
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    new-instance v2, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/audio/AudioExecutor$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getExecutor()Ljava/util/concurrent/Executor;
    .registers 1

    .line 44
    invoke-static {}, Lcom/samsung/android/server/audio/AudioExecutor;->init()V

    .line 45
    sget-object v0, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    return-object v0
.end method

.method public static declared-synchronized init()V
    .registers 3

    const-class v0, Lcom/samsung/android/server/audio/AudioExecutor;

    monitor-enter v0

    .line 19
    :try_start_3
    sget-object v1, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;

    if-nez v1, :cond_1c

    .line 20
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "AS.AudioExecutor"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 22
    new-instance v2, Landroid/os/HandlerExecutor;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v2, Lcom/samsung/android/server/audio/AudioExecutor;->sExecutor:Landroid/os/HandlerExecutor;
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1e

    .line 24
    :cond_1c
    monitor-exit v0

    return-void

    :catchall_1e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static synthetic lambda$execute$0(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 6

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 34
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 36
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x64

    cmp-long p0, v2, v0

    if-lez p0, :cond_30

    .line 38
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Slow "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AS.AudioExecutor"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    return-void
.end method
