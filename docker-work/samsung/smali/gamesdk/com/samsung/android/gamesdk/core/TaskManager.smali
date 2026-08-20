.class public Lcom/samsung/android/gamesdk/core/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;,
        Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;,
        Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;,
        Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;,
        Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;,
        Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;,
        Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@TaskManager"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final mTaskMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/gamesdk/core/TaskManager$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 15
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/core/TaskManager$1;

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/core/TaskManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;
    .registers 1

    .line 202
    # getter for: Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;->instance:Lcom/samsung/android/gamesdk/core/TaskManager;
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager$Singleton;->access$200()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flushTask(I)V
    .registers 10
    .param p1, "pid"    # I

    .line 143
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_ee

    .line 144
    :try_start_3
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushTask(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 147
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_2f

    .line 148
    monitor-exit v0

    return-void

    .line 151
    :cond_2f
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    const/4 v3, 0x0

    if-eqz v2, :cond_5d

    .line 152
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    iget-boolean v2, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;->isUsed:Z

    .line 153
    .local v2, "isUsed":Z
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDK@TaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flushTask(): taskSetGameSDKVrrSetUsedTrue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 154
    if-eqz v2, :cond_5d

    .line 155
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setGameSDKVrrSetUsedTrue()V

    .line 159
    .end local v2    # "isUsed":Z
    :cond_5d
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    if-eqz v2, :cond_88

    .line 160
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    iget-object v2, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;->listener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 161
    .local v2, "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDK@TaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flushTask(): setGameSDKListener: listener: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->registerListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V

    .line 165
    .end local v2    # "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :cond_88
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    if-eqz v2, :cond_b3

    .line 166
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    iget v2, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;->refreshRate:I

    .line 167
    .local v2, "refreshRate":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "GameSDK@TaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "flushTask(): setRefreshRate: refreshRate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v3, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRate(I)Z

    .line 171
    .end local v2    # "refreshRate":I
    :cond_b3
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetCpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

    if-eqz v2, :cond_c9

    .line 172
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v4, "GameSDK@TaskManager"

    const-string v5, "flushTask(): setCpuBoostMode() "

    invoke-virtual {v2, v4, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setCpuBoostMode()Z

    .line 175
    :cond_c9
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

    if-eqz v2, :cond_df

    .line 176
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v4, "GameSDK@TaskManager"

    const-string v5, "flushTask(): setGpuBoostMode() "

    invoke-virtual {v2, v4, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setGpuBoostMode()Z

    .line 180
    :cond_df
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 184
    goto :goto_10f

    .line 181
    :catchall_eb
    move-exception v1

    monitor-exit v0
    :try_end_ed
    .catchall {:try_start_3 .. :try_end_ed} :catchall_eb

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    :try_start_ed
    throw v1
    :try_end_ee
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_ee} :catch_ee

    .line 182
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    :catch_ee
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "flushTask(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_10f
    return-void
.end method

.method public registerTaskRegisterListener(ILcom/samsung/android/gamesdk/IGameSDKListener;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 49
    :try_start_0
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskRegisterListener(): pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_5c

    .line 51
    :try_start_29
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 52
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_3e

    .line 53
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    move-object v1, v2

    .line 55
    :cond_3e
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    if-nez v2, :cond_49

    .line 56
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    invoke-direct {v2}, Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    .line 58
    :cond_49
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskRegisterListener:Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;

    iput-object p2, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskRegisterListener;->listener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 59
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 63
    goto :goto_7d

    .line 60
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_29 .. :try_end_5b} :catchall_59

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    .end local p2    # "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :try_start_5b
    throw v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 61
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    .restart local p2    # "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :catch_5c
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskRegisterListener(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method

.method public registerTaskSetCpuBoost(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 87
    :try_start_0
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskSetCpuBoost(): pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_4e

    .line 89
    :try_start_1f
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 90
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_34

    .line 91
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    move-object v1, v2

    .line 93
    :cond_34
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetCpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

    if-nez v2, :cond_3f

    .line 94
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

    invoke-direct {v2}, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetCpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetCpuBoost;

    .line 96
    :cond_3f
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 100
    goto :goto_6f

    .line 97
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_1f .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 98
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    :catch_4e
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskSetCpuBoost(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method

.method public registerTaskSetGameSDKVrrSetUsedTrue(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 123
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_53

    .line 124
    :try_start_3
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskSetGameSDKVrrSetUsedTrue(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 126
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_34

    .line 127
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    move-object v1, v2

    .line 130
    :cond_34
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    if-nez v2, :cond_3f

    .line 131
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    invoke-direct {v2}, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    .line 133
    :cond_3f
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGameSDKVrrSetUsedTrue:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGameSDKVrrSetUsedTrue;->isUsed:Z

    .line 134
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 138
    goto :goto_74

    .line 135
    :catchall_50
    move-exception v1

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    :try_start_52
    throw v1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_53} :catch_53

    .line 136
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    :catch_53
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskIsGameSDKVrrSupported(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_74
    return-void
.end method

.method public registerTaskSetGpuBoost(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 105
    :try_start_0
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerTaskSetGpuBoost(): pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_4e

    .line 107
    :try_start_1f
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 108
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_34

    .line 109
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    move-object v1, v2

    .line 111
    :cond_34
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

    if-nez v2, :cond_3f

    .line 112
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

    invoke-direct {v2}, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetGpuBoost:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetGpuBoost;

    .line 114
    :cond_3f
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 118
    goto :goto_6f

    .line 115
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_1f .. :try_end_4d} :catchall_4b

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    :try_start_4d
    throw v1
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4e} :catch_4e

    .line 116
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    :catch_4e
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskSetGpuBoost(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6f
    return-void
.end method

.method public registerTaskSetRefreshRate(II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "refreshRate"    # I

    .line 68
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5c

    .line 69
    :try_start_3
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskSetRefreshRate(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", refreshRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    .line 71
    .local v1, "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    if-nez v1, :cond_3e

    .line 72
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$Task;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/samsung/android/gamesdk/core/TaskManager$Task;-><init>(Lcom/samsung/android/gamesdk/core/TaskManager$1;)V

    move-object v1, v2

    .line 74
    :cond_3e
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    if-nez v2, :cond_49

    .line 75
    new-instance v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    invoke-direct {v2}, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;-><init>()V

    iput-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    .line 77
    :cond_49
    iget-object v2, v1, Lcom/samsung/android/gamesdk/core/TaskManager$Task;->taskSetRefreshRate:Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;

    iput p2, v2, Lcom/samsung/android/gamesdk/core/TaskManager$TaskSetRefreshRate;->refreshRate:I

    .line 78
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    nop

    .end local v1    # "task":Lcom/samsung/android/gamesdk/core/TaskManager$Task;
    monitor-exit v0

    .line 82
    goto :goto_7d

    .line 79
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_3 .. :try_end_5b} :catchall_59

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    .end local p2    # "refreshRate":I
    :try_start_5b
    throw v1
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 80
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    .restart local p2    # "refreshRate":I
    :catch_5c
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerTaskSetRefreshRate(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7d
    return-void
.end method

.method public removeTask(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 189
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/core/TaskManager;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 190
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/TaskManager;->mTaskMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    monitor-exit v0

    .line 194
    goto :goto_32

    .line 191
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .end local p1    # "pid":I
    :try_start_10
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_11} :catch_11

    .line 192
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/TaskManager;
    .restart local p1    # "pid":I
    :catch_11
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@TaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTask(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method
