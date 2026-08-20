.class public final Lcom/android/server/vibrator/VibrationThread;
.super Ljava/lang/Thread;
.source "VibrationThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "VibrationThread"


# instance fields
.field public mCalledVibrationCompleteCallback:Z

.field public mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

.field public final mLock:Ljava/lang/Object;

.field public mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/os/PowerManager$WakeLock;Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;)V
    .registers 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 119
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 120
    iput-object p2, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    return-void
.end method


# virtual methods
.method public final clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    .registers 5

    .line 279
    iget-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v0, :cond_14

    const/4 v0, 0x1

    .line 280
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 281
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 282
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    .line 281
    invoke-interface {v0, v1, v2, p1}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->onVibrationCompleted(JLcom/android/server/vibrator/Vibration$Status;)V

    :cond_14
    return-void
.end method

.method public isRunningVibrationId(J)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 227
    :try_start_3
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz p0, :cond_13

    .line 228
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object p0

    iget-wide v1, p0, Lcom/android/server/vibrator/Vibration;->id:J

    cmp-long p0, v1, p1

    if-nez p0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    monitor-exit v0

    return p0

    :catchall_16
    move-exception p0

    .line 229
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public final playVibration()V
    .registers 5

    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "playVibration"

    .line 287
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 289
    :try_start_9
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->prepareToStart()V

    .line 290
    :cond_e
    :goto_e
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v2

    if-nez v2, :cond_35

    .line 291
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->waitUntilNextStepIsDue()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 299
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->runNextStep()V

    .line 302
    :cond_23
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->calculateVibrationStatus()Lcom/android/server/vibrator/Vibration$Status;

    move-result-object v2

    .line 304
    sget-object v3, Lcom/android/server/vibrator/Vibration$Status;->RUNNING:Lcom/android/server/vibrator/Vibration$Status;

    if-eq v2, v3, :cond_e

    iget-boolean v3, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    if-nez v3, :cond_e

    .line 307
    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_34
    .catchall {:try_start_9 .. :try_end_34} :catchall_39

    goto :goto_e

    .line 311
    :cond_35
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_39
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 312
    throw p0
.end method

.method public run()V
    .registers 5

    const/4 v0, -0x8

    .line 144
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 147
    :goto_4
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/vibrator/VibrationStepConductor;

    iput-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v0, 0x0

    .line 149
    iput-boolean v0, p0, Lcom/android/server/vibrator/VibrationThread;->mCalledVibrationCompleteCallback:Z

    .line 150
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLock()V

    .line 151
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v0}, Lcom/android/server/vibrator/VibrationStepConductor;->isFinished()Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "VibrationThread"

    const-string v1, "VibrationThread terminated with unfinished vibration"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_25
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 156
    :try_start_29
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 157
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_48

    .line 165
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mVibratorManagerHooks:Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;

    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/server/vibrator/Vibration;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/server/vibrator/VibrationThread$VibratorManagerHooks;->onVibrationThreadReleased(J)V

    .line 166
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 167
    :try_start_3c
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3c .. :try_end_42} :catchall_45

    .line 169
    iput-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    goto :goto_4

    :catchall_45
    move-exception p0

    .line 168
    :try_start_46
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw p0

    :catchall_48
    move-exception p0

    .line 157
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public final runCurrentVibrationWithWakeLock()V
    .registers 4

    .line 234
    new-instance v0, Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v1}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v1

    iget v1, v1, Lcom/android/server/vibrator/Vibration;->uid:I

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 235
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 236
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v0, 0x0

    .line 239
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->runCurrentVibrationWithWakeLockAndDeathLink()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2d

    .line 241
    :try_start_1b
    sget-object v1, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v1}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_2b

    .line 244
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void

    :catchall_2b
    move-exception v1

    goto :goto_34

    :catchall_2d
    move-exception v1

    .line 241
    :try_start_2e
    sget-object v2, Lcom/android/server/vibrator/Vibration$Status;->FINISHED_UNEXPECTED:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v2}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V

    .line 242
    throw v1
    :try_end_34
    .catchall {:try_start_2e .. :try_end_34} :catchall_2b

    .line 244
    :goto_34
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 246
    throw v1
.end method

.method public final runCurrentVibrationWithWakeLockAndDeathLink()V
    .registers 6

    const-string v0, "Failed to unlink token"

    const-string v1, "VibrationThread"

    .line 254
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-virtual {v2}, Lcom/android/server/vibrator/VibrationStepConductor;->getVibration()Lcom/android/server/vibrator/Vibration;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/vibrator/Vibration;->token:Landroid/os/IBinder;

    .line 256
    :try_start_c
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_12} :catch_2c

    .line 265
    :try_start_12
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibrationThread;->playVibration()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_20

    .line 268
    :try_start_15
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1a
    .catch Ljava/util/NoSuchElementException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p0

    .line 270
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1f
    return-void

    :catchall_20
    move-exception v3

    .line 268
    :try_start_21
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mExecutingConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_26
    .catch Ljava/util/NoSuchElementException; {:try_start_21 .. :try_end_26} :catch_27

    goto :goto_2b

    :catch_27
    move-exception p0

    .line 270
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 272
    :goto_2b
    throw v3

    :catch_2c
    move-exception v0

    const-string v2, "Error linking vibration to token death"

    .line 258
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 259
    sget-object v0, Lcom/android/server/vibrator/Vibration$Status;->IGNORED_ERROR_TOKEN:Lcom/android/server/vibrator/Vibration$Status;

    invoke-virtual {p0, v0}, Lcom/android/server/vibrator/VibrationThread;->clientVibrationCompleteIfNotAlready(Lcom/android/server/vibrator/Vibration$Status;)V

    return-void
.end method

.method public runVibrationOnVibrationThread(Lcom/android/server/vibrator/VibrationStepConductor;)Z
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_11

    const-string p0, "VibrationThread"

    const-string p1, "Attempt to start vibration when one already running"

    .line 133
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 134
    monitor-exit v0

    return p0

    .line 136
    :cond_11
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    .line 137
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public waitForThreadIdle(J)Z
    .registers 7

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 183
    iget-object v2, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 185
    :goto_8
    :try_start_8
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-nez v3, :cond_f

    const/4 p0, 0x1

    .line 186
    monitor-exit v2

    return p0

    :cond_f
    cmp-long v3, v0, p1

    if-ltz v3, :cond_16

    const/4 p0, 0x0

    .line 189
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_2a

    return p0

    .line 192
    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    sub-long v0, p1, v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_1e
    .catchall {:try_start_16 .. :try_end_1d} :catchall_2a

    goto :goto_25

    :catch_1e
    :try_start_1e
    const-string v0, "VibrationThread"

    const-string v1, "VibrationThread interrupted waiting to stop, continuing"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_8

    :catchall_2a
    move-exception p0

    .line 198
    monitor-exit v2
    :try_end_2c
    .catchall {:try_start_1e .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final waitForVibrationRequest()Lcom/android/server/vibrator/VibrationStepConductor;
    .registers 4

    .line 205
    :goto_0
    iget-object v0, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_3
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mRequestedActiveConductor:Lcom/android/server/vibrator/VibrationStepConductor;

    if-eqz v1, :cond_9

    .line 207
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_18

    return-object v1

    .line 210
    :cond_9
    :try_start_9
    iget-object v1, p0, Lcom/android/server/vibrator/VibrationThread;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_18

    goto :goto_16

    :catch_f
    :try_start_f
    const-string v1, "VibrationThread"

    const-string v2, "VibrationThread interrupted waiting to start, continuing"

    .line 212
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_16
    monitor-exit v0

    goto :goto_0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw p0
.end method
