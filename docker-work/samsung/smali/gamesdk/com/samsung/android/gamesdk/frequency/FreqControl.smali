.class Lcom/samsung/android/gamesdk/frequency/FreqControl;
.super Ljava/lang/Object;
.source "FreqControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;,
        Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@FreqControl"


# instance fields
.field private isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCpuBoost_TimerRunnable:Ljava/lang/Runnable;

.field private final mCpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

.field private final mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

.field private final mGpuBoost_TimerRunnable:Ljava/lang/Runnable;

.field private final mGpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

.field private final mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

.field private final mHandler:Landroid/os/Handler;

.field private final mSetFreqLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mSetFreqLock:Ljava/lang/Object;

    .line 24
    new-instance v1, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;-><init>(Lcom/samsung/android/gamesdk/frequency/FreqControl;Z)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuBoost_TimerRunnable:Ljava/lang/Runnable;

    .line 25
    new-instance v1, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl$TimerRunnable;-><init>(Lcom/samsung/android/gamesdk/frequency/FreqControl;Z)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuBoost_TimerRunnable:Ljava/lang/Runnable;

    .line 29
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    .line 30
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    monitor-enter v0

    .line 33
    :try_start_2d
    const-string v1, "GAME_SDK_CPU_MIN"

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    .line 34
    .local v1, "cpuFreqMinHelper":Lcom/samsung/android/os/SemDvfsManager;
    const-string v2, "GAME_SDK_CPU_MAX"

    const/16 v3, 0xd

    invoke-static {p1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v2

    .line 35
    .local v2, "cpuFreqMaxHelper":Lcom/samsung/android/os/SemDvfsManager;
    const-string v3, "GAME_SDK_GPU_MIN"

    const/16 v4, 0x10

    invoke-static {p1, v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    .line 36
    .local v3, "gpuFreqMinHelper":Lcom/samsung/android/os/SemDvfsManager;
    const-string v4, "GAME_SDK_GPU_MAX"

    const/16 v5, 0x11

    invoke-static {p1, v4, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    .line 38
    .local v4, "gpuFreqMaxHelper":Lcom/samsung/android/os/SemDvfsManager;
    new-instance v5, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const-string v6, "CpuMin"

    invoke-direct {v5, v1, v6}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;-><init>(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    .line 39
    new-instance v5, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const-string v6, "CpuMax"

    invoke-direct {v5, v2, v6}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;-><init>(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    .line 40
    new-instance v5, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const-string v6, "GpuMin"

    invoke-direct {v5, v3, v6}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;-><init>(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    .line 41
    new-instance v5, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const-string v6, "GpuMax"

    invoke-direct {v5, v4, v6}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;-><init>(Lcom/samsung/android/os/SemDvfsManager;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    .line 42
    .end local v1    # "cpuFreqMinHelper":Lcom/samsung/android/os/SemDvfsManager;
    .end local v2    # "cpuFreqMaxHelper":Lcom/samsung/android/os/SemDvfsManager;
    .end local v3    # "gpuFreqMinHelper":Lcom/samsung/android/os/SemDvfsManager;
    .end local v4    # "gpuFreqMaxHelper":Lcom/samsung/android/os/SemDvfsManager;
    monitor-exit v0

    .line 43
    return-void

    .line 42
    :catchall_73
    move-exception v1

    monitor-exit v0
    :try_end_75
    .catchall {:try_start_2d .. :try_end_75} :catchall_73

    throw v1
.end method


# virtual methods
.method public acquireCpuMinFrequencies(II)V
    .registers 8
    .param p1, "cpuPercentage"    # I
    .param p2, "duration"    # I

    .line 152
    const-string v0, "GameSDK@FreqControl"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    const/4 v1, -0x1

    if-eq p1, v1, :cond_13

    .line 155
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const v2, 0x12001001

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->acquireMin(II)V

    .line 157
    :cond_13
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireCpuMinFrequencies(): cpuPercentage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 159
    if-eqz p2, :cond_49

    .line 160
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuBoost_TimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuBoost_TimerRunnable:Ljava/lang/Runnable;

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    .line 165
    :cond_49
    goto :goto_69

    .line 163
    :catch_4a
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Fail] acquireCpuMinFrequencies(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public acquireGpuMinFrequencies(II)V
    .registers 8
    .param p1, "gpuPercentage"    # I
    .param p2, "duration"    # I

    .line 170
    const-string v0, "GameSDK@FreqControl"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 172
    const/4 v1, -0x1

    if-eq p1, v1, :cond_13

    .line 173
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    const v2, 0x20001001

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->acquireMin(II)V

    .line 175
    :cond_13
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquireGpuMinFrequencies(): gpuPercentage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 177
    if-eqz p2, :cond_49

    .line 178
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuBoost_TimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuBoost_TimerRunnable:Ljava/lang/Runnable;

    int-to-long v3, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_49} :catch_4a

    .line 183
    :cond_49
    goto :goto_69

    .line 181
    :catch_4a
    move-exception v1

    .line 182
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Fail] acquireGpuMinFrequencies(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_69
    return-void
.end method

.method public acquireMaxFrequencies(IIZ)Z
    .registers 10
    .param p1, "cpuPercentage"    # I
    .param p2, "gpuPercentage"    # I
    .param p3, "bReleaseBoostMode"    # Z

    .line 51
    const-string v0, "GameSDK@FreqControl"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_2b

    .line 52
    if-eqz p3, :cond_1d

    .line 53
    if-eq p1, v4, :cond_13

    move v2, v3

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    if-eq p2, v4, :cond_18

    move v5, v3

    goto :goto_19

    :cond_18
    move v5, v1

    :goto_19
    invoke-virtual {p0, v1, v2, v5}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->releaseMinFrequencies(ZZZ)V

    goto :goto_2b

    .line 55
    :cond_1d
    if-eq p1, v4, :cond_2b

    if-eq p2, v4, :cond_2b

    .line 57
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[Fail] acquireMaxFrequencies(): ignored by booster mode"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return v1

    .line 62
    :cond_2b
    :goto_2b
    if-eq p1, v4, :cond_32

    .line 63
    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->acquire(I)V

    .line 64
    :cond_32
    if-eq p2, v4, :cond_39

    .line 65
    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v2, p2}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->acquire(I)V

    .line 67
    :cond_39
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireMaxFrequencies(): cpuPercentage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuPercentage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5d} :catch_5e

    .line 68
    return v3

    .line 69
    :catch_5e
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Fail] acquireMaxFrequencies(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public callCpuBoostByTimeoutListener()V
    .registers 7

    .line 127
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getListener()Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v0

    .line 128
    .local v0, "mGameSDKListener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callCpuBoostByTimeoutListener(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDK@FreqControl"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 129
    if-eqz v0, :cond_4a

    .line 131
    :try_start_27
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKListener;->onReleasedCpuBoost()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 134
    goto :goto_4a

    .line 132
    :catch_2b
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Fail] callCpuBoostByTimeoutListener(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void
.end method

.method public callGpuBoostByTimeoutListener()V
    .registers 7

    .line 139
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getListener()Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v0

    .line 140
    .local v0, "mGameSDKListener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callGpuBoostByTimeoutListener(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDK@FreqControl"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 141
    if-eqz v0, :cond_4a

    .line 143
    :try_start_27
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKListener;->onReleasedGpuBoost()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 146
    goto :goto_4a

    .line 144
    :catch_2b
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Fail] callGpuBoostByTimeoutListener(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4a
    :goto_4a
    return-void
.end method

.method public initialize()V
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 47
    return-void
.end method

.method public isBoosterMode()Z
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public releaseFrequencies()V
    .registers 6

    .line 77
    const-string v0, "GameSDK@FreqControl"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "releaseFrequencies()"

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->release()V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMaxFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->release()V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1, v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->releaseMinFrequencies(ZZZ)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1b

    .line 84
    goto :goto_3a

    .line 82
    :catch_1b
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Fail] releaseMaxFrequency(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public releaseMinFrequencies(ZZZ)V
    .registers 9
    .param p1, "TimeOut"    # Z
    .param p2, "cpu"    # Z
    .param p3, "gpu"    # Z

    .line 88
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_9

    .line 89
    return-void

    .line 93
    :cond_9
    const-string v0, "GameSDK@FreqControl"

    if-eqz p2, :cond_27

    .line 94
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    # getter for: Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z
    invoke-static {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->access$000(Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 95
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuBoost_TimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->release()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->callCpuBoostByTimeoutListener()V

    goto :goto_27

    .line 121
    :catch_25
    move-exception v1

    goto :goto_6f

    .line 100
    :cond_27
    :goto_27
    if-eqz p3, :cond_40

    .line 101
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    # getter for: Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z
    invoke-static {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->access$000(Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 102
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuBoost_TimerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 103
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->release()V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->callGpuBoostByTimeoutListener()V

    .line 107
    :cond_40
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mCpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    # getter for: Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z
    invoke-static {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->access$000(Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_56

    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->mGpuMinFrequencySetter:Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;

    # getter for: Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->mEnable:Z
    invoke-static {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;->access$000(Lcom/samsung/android/gamesdk/frequency/FreqControl$FrequencySetter;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 108
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    :cond_56
    if-eqz p1, :cond_65

    .line 111
    const/4 v1, -0x1

    const/16 v3, 0x64

    if-eqz p2, :cond_60

    .line 113
    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireMaxFrequencies(IIZ)Z

    .line 115
    :cond_60
    if-eqz p3, :cond_65

    .line 117
    invoke-virtual {p0, v1, v3, v2}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireMaxFrequencies(IIZ)Z

    .line 120
    :cond_65
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v3, "releaseMinFrequencies()"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6e} :catch_25

    .line 123
    goto :goto_8d

    .line 122
    .local v1, "e":Ljava/lang/Exception;
    :goto_6f
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Fail] releaseMinFrequencies(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8d
    return-void
.end method
