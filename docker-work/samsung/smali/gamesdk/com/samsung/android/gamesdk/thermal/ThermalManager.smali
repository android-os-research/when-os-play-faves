.class public Lcom/samsung/android/gamesdk/thermal/ThermalManager;
.super Ljava/lang/Object;
.source "ThermalManager.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/GameSDKComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;,
        Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;,
        Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@ThermalManager"


# instance fields
.field private final ListenerLock:Ljava/lang/Object;

.field private mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

.field private volatile mStopThread:Z

.field private mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

.field private final mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    .line 19
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z

    .line 20
    iput-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 25
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    .line 26
    new-instance v1, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/gamesdk/thermal/ThermalManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .param p1, "x1"    # I

    .line 13
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->sendHighTempWarning(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    .line 13
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/gamesdk/thermal/ThermalManager;)Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    .line 13
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .registers 1

    .line 195
    # getter for: Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;->instance:Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$Singleton;->access$600()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v0

    return-object v0
.end method

.method private sendHighTempWarning(I)V
    .registers 8
    .param p1, "warningLevel"    # I

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_2c

    .line 68
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    if-eqz v1, :cond_27

    .line 69
    invoke-interface {v1, p1}, Lcom/samsung/android/gamesdk/IGameSDKListener;->onHighTempWarning(I)V

    .line 70
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendWarningLevel(): warning level: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    :cond_27
    monitor-exit v0

    .line 75
    goto :goto_59

    .line 72
    :catchall_29
    move-exception v1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .end local p1    # "warningLevel":I
    :try_start_2b
    throw v1
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_2c} :catch_2c

    .line 73
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .restart local p1    # "warningLevel":I
    :catch_2c
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendWarningLevel(): listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_59
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 182
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    const-string v0, "ThermalManager:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Listener : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Warning level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->getCurrentWarningLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_d .. :try_end_36} :catchall_3c

    .line 187
    const-string v0, "----------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    return-void

    .line 186
    :catchall_3c
    move-exception v1

    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public getListener()Lcom/samsung/android/gamesdk/IGameSDKListener;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    monitor-exit v0

    return-object v1

    .line 81
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public onFocusedPackagePause(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 7
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_10

    .line 33
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    invoke-virtual {p1, v1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 35
    monitor-exit v0

    .line 38
    goto :goto_31

    .line 35
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .end local p1    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :try_start_f
    throw v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_10} :catch_10

    .line 36
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .restart local p1    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :catch_10
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusedPackagePause(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method public onFocusedPackageResume(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V
    .registers 7
    .param p1, "context"    # Lcom/samsung/android/gamesdk/core/GameSDKContext;

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_f

    .line 45
    :try_start_3
    invoke-virtual {p1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getGameSDKListener()Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->registerListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V

    .line 46
    monitor-exit v0

    .line 49
    goto :goto_30

    .line 46
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .end local p1    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :try_start_e
    throw v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_f} :catch_f

    .line 47
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .restart local p1    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    :catch_f
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFocusedPackageResume(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public registerListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 54
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->ListenerLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_11

    .line 55
    :try_start_3
    iput-object p1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 56
    if-eqz p1, :cond_c

    .line 57
    iget-object v1, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->forceSendWarningLevel()V

    .line 59
    :cond_c
    monitor-exit v0

    .line 62
    goto :goto_32

    .line 59
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .end local p1    # "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :try_start_10
    throw v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_11} :catch_11

    .line 60
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    .restart local p1    # "listener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    :catch_11
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerListener(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_32
    return-void
.end method

.method public start()V
    .registers 6

    .line 86
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_2e

    .line 87
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mWarningLevelManager:Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$WarningLevelManager;->start()V

    .line 89
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z

    if-nez v0, :cond_10

    .line 90
    monitor-exit p0

    return-void

    .line 92
    :cond_10
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@ThermalManager"

    const-string v2, "[START] ThermalWorker"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 93
    iput-boolean v3, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z

    .line 94
    new-instance v0, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;-><init>(Lcom/samsung/android/gamesdk/thermal/ThermalManager;Lcom/samsung/android/gamesdk/thermal/ThermalManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    .line 95
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;->start()V

    .line 96
    monitor-exit p0

    .line 99
    goto :goto_4f

    .line 96
    :catchall_2b
    move-exception v0

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    :try_start_2d
    throw v0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2e} :catch_2e

    .line 97
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    :catch_2e
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] ThermalWorker:start(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4f
    return-void
.end method

.method public stop()V
    .registers 6

    .line 104
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1} :catch_1f

    .line 105
    :try_start_1
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@ThermalManager"

    const/4 v2, 0x0

    const-string v3, "[STOP] ThermalWorker"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mStopThread:Z

    .line 107
    iget-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    if-eqz v0, :cond_17

    .line 108
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;->interrupt()V

    .line 110
    :cond_17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->mThread:Lcom/samsung/android/gamesdk/thermal/ThermalManager$ThermalWorkerThread;

    .line 111
    monitor-exit p0

    .line 114
    goto :goto_40

    .line 111
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    .end local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    :try_start_1e
    throw v0
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1f} :catch_1f

    .line 112
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/thermal/ThermalManager;
    :catch_1f
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@ThermalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] ThermalWorker:stop(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_40
    return-void
.end method
