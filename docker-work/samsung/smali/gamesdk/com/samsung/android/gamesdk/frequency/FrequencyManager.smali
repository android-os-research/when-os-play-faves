.class public Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
.super Ljava/lang/Object;
.source "FrequencyManager.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/GameSDKComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private isActivated:Z

.field private final isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    const-string v0, "GameSDK@FrequencyManager"

    sput-object v0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/frequency/FrequencyManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/frequency/FrequencyManager$1;

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    .registers 1

    .line 187
    # getter for: Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;->instance:Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager$Singleton;->access$100()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v0

    return-object v0
.end method

.method private setFreqWithLevelsByUser()I
    .registers 7

    .line 149
    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_3b

    .line 150
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 151
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    const-string v4, "[FAIL] setFreqWithLevelsByUser():  FrequencyManger didn\'t activate."

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 152
    monitor-exit p0

    return v0

    .line 155
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->isBoosterMode()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 156
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    const-string v4, "[FAIL] setFreqWithLevelsByUser():  FILTERED_BY_BOOSTMODE"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 157
    const/4 v1, 0x3

    monitor-exit p0

    return v1

    .line 161
    :cond_2a
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    const/16 v3, 0x64

    invoke-virtual {v1, v3, v3, v0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireMaxFrequencies(IIZ)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 162
    monitor-exit p0

    return v2

    .line 164
    :cond_36
    monitor-exit p0

    return v0

    .line 166
    :catchall_38
    move-exception v1

    monitor-exit p0
    :try_end_3a
    .catchall {:try_start_2 .. :try_end_3a} :catchall_38

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_3a
    throw v1
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3b} :catch_3b

    .line 167
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_3b
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFreqWithLevelsByUser(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 174
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    const-string v0, "GameSDK@FrequencyManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    monitor-enter p0

    .line 177
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FreqControl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_2a

    .line 179
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    return-void

    .line 178
    :catchall_2a
    move-exception v0

    :try_start_2b
    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v0
.end method

.method public initialize(Landroid/content/Context;)Z
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_15

    .line 38
    new-instance v0, Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-direct {v0, p1}, Lcom/samsung/android/gamesdk/frequency/FreqControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    .line 39
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 43
    :cond_15
    goto :goto_37

    .line 41
    :catch_16
    move-exception v0

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialize(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_37
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onActivate()V
    .registers 6

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isInitialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    if-eqz v0, :cond_18

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->initialize()V

    .line 51
    monitor-enter p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_19

    .line 52
    const/4 v0, 0x1

    :try_start_11
    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    .line 53
    monitor-exit p0

    goto :goto_18

    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_15

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_17
    throw v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_18} :catch_19

    .line 57
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :cond_18
    :goto_18
    goto :goto_3a

    .line 55
    :catch_19
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivate(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3a
    return-void
.end method

.method public onDeactivate()V
    .registers 6

    .line 62
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_c

    .line 63
    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->releaseFrequencies()V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    .line 65
    monitor-exit p0

    .line 68
    goto :goto_2d

    .line 65
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_b
    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_c} :catch_c

    .line 66
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_c
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeactivate(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method public onFocusedPackagePause(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 2
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 73
    return-void
.end method

.method public onFocusedPackageResume(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 2
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 77
    return-void
.end method

.method public releaseFrequencies()V
    .registers 6

    .line 81
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_11

    .line 82
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    if-nez v0, :cond_7

    .line 83
    monitor-exit p0

    return-void

    .line 85
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->releaseFrequencies()V

    .line 86
    monitor-exit p0

    .line 89
    goto :goto_32

    .line 86
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_10
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_11} :catch_11

    .line 87
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_11
    move-exception v0

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "releaseFrequencies(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public setCpuBoostMode()Z
    .registers 7

    .line 94
    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_28

    .line 95
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 96
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    const-string v4, "[FAIL] setCpuBoostMode() isActivated is false"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 97
    monitor-exit p0

    return v0

    .line 101
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    const/4 v3, -0x1

    const/16 v4, 0x64

    invoke-virtual {v1, v4, v3, v0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireMaxFrequencies(IIZ)Z

    .line 103
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireCpuMinFrequencies(II)V

    .line 104
    monitor-exit p0

    return v2

    .line 106
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 107
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_28
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCpuBoostMode(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public setGpuBoostMode()Z
    .registers 7

    .line 115
    const/4 v0, 0x0

    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2} :catch_28

    .line 116
    :try_start_2
    iget-boolean v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_14

    .line 117
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    const-string v4, "[FAIL] setGpuBoostMode() isActivated is false"

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 118
    monitor-exit p0

    return v0

    .line 122
    :cond_14
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    const/4 v3, -0x1

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4, v0}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireMaxFrequencies(IIZ)Z

    .line 124
    iget-object v1, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->mFreqControl:Lcom/samsung/android/gamesdk/frequency/FreqControl;

    const/16 v3, 0x2710

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/gamesdk/frequency/FreqControl;->acquireGpuMinFrequencies(II)V

    .line 125
    monitor-exit p0

    return v2

    .line 126
    :catchall_25
    move-exception v1

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_27
    throw v1
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_28} :catch_28

    .line 127
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_28
    move-exception v1

    .line 128
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGpuBoostMode(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public setMaxFrequency()V
    .registers 6

    .line 135
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_f

    .line 136
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->isActivated:Z

    if-nez v0, :cond_7

    .line 137
    monitor-exit p0

    return-void

    .line 140
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setFreqWithLevelsByUser()I

    .line 141
    monitor-exit p0

    .line 144
    goto :goto_30

    .line 141
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    .end local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :try_start_e
    throw v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_f

    .line 142
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/frequency/FrequencyManager;
    :catch_f
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMaxFrequency(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method
