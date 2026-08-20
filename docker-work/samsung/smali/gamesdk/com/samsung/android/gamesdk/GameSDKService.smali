.class public final Lcom/samsung/android/gamesdk/GameSDKService;
.super Lcom/samsung/android/gamesdk/IGameSDKService$Stub;
.source "GameSDKService.java"

# interfaces
.implements Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDKService"

.field private static final lock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/gamesdk/GameSDKService;->lock:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .line 49
    const-string v0, "gamesdk_version"

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/IGameSDKService$Stub;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    .line 53
    :try_start_7
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/GameSDKService;->DecideDebugMode()V

    .line 54
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v1

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->initialize(Landroid/content/Context;Lcom/samsung/android/gamesdk/vrr/GameSDKVrrListener;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_58

    const-string v2, "3.6"

    if-eqz v1, :cond_2b

    :try_start_1d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 57
    :cond_2b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 58
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDKService"

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update Const.PROPERTY_GAMESDK_VERSION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_57} :catch_58

    .line 62
    :cond_57
    goto :goto_5c

    .line 60
    :catch_58
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5c
    :try_start_5c
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    .line 66
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.gamesdk.DEBUG_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/gamesdk/GameSDKService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gamesdk/GameSDKService$1;-><init>(Lcom/samsung/android/gamesdk/GameSDKService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_77} :catch_78

    .line 78
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_77
    goto :goto_7c

    .line 76
    :catch_78
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7c
    :try_start_7c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/gamesdk/GameSDKService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/gamesdk/GameSDKService$2;-><init>(Lcom/samsung/android/gamesdk/GameSDKService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8d} :catch_8f

    .line 91
    nop

    .end local v0    # "filter":Landroid/content/IntentFilter;
    goto :goto_93

    .line 89
    :catch_8f
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_93
    new-instance v0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 94
    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->onActivate()V

    .line 95
    return-void
.end method

.method private DecideDebugMode()V
    .registers 5

    .line 640
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    .line 642
    :try_start_3
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/GameSDK_config.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 643
    .local v0, "debugGameSDKProperties":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 644
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    .line 648
    .end local v0    # "debugGameSDKProperties":Ljava/io/File;
    :cond_13
    goto :goto_35

    .line 646
    :catch_14
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DecideDebugMode(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKService"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_35
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/gamesdk/GameSDKService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/GameSDKService;

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/GameSDKService;->onLazyInitialize()Z

    move-result v0

    return v0
.end method

.method private filterApiCallings(Ljava/lang/String;)Z
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;

    .line 115
    const-string v0, "GameSDKService"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 116
    .local v2, "pid":I
    iget-object v3, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 117
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Success] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(): filterApiCallings, getPidStatusSync is true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    :cond_31
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(): failed by filterApiCallings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_52

    .line 121
    return v1

    .line 123
    .end local v2    # "pid":I
    :catch_52
    move-exception v2

    .line 124
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterApiCallings(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private filterApiCallingsWithPending(Ljava/lang/String;)Z
    .registers 8
    .param p1, "methodName"    # Ljava/lang/String;

    .line 131
    const-string v0, "GameSDKService"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 132
    .local v2, "pid":I
    iget-object v3, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 133
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Success] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(): filterApiCallings, getPidStatusSync is true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_31
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[PENDING] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(): pended to TaskManager"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_51} :catch_52

    .line 137
    return v1

    .line 139
    .end local v2    # "pid":I
    :catch_52
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "filterApiCallings(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private isDeviceSupportsLRP()Z
    .registers 6

    .line 603
    const/4 v0, 0x0

    .line 605
    .local v0, "bSupportLrp":Z
    const/16 v1, 0x9

    :try_start_3
    invoke-static {v1}, Lcom/samsung/android/os/SemTemperatureManager;->getThermistor(I)Lcom/samsung/android/os/SemTemperatureManager$Thermistor;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_b

    .line 606
    .local v1, "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    if-eqz v1, :cond_a

    .line 607
    const/4 v0, 0x1

    .line 611
    .end local v1    # "thermistor":Lcom/samsung/android/os/SemTemperatureManager$Thermistor;
    :cond_a
    goto :goto_f

    .line 609
    :catch_b
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 613
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_f
    const/4 v1, 0x1

    if-nez v0, :cond_1f

    .line 614
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "GameSDKService"

    const-string v4, "[FAIL] Lrp is not supported"

    invoke-virtual {v2, v3, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 615
    const/4 v1, 0x0

    return v1

    .line 617
    :cond_1f
    return v1
.end method

.method private onLazyInitialize()Z
    .registers 5

    .line 101
    :try_start_0
    sget-object v0, Lcom/samsung/android/gamesdk/GameSDKService;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_14

    .line 102
    const/4 v1, 0x1

    .line 103
    .local v1, "isInitialized":Z
    :try_start_4
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->initialize(Landroid/content/Context;)Z

    move-result v2

    and-int/2addr v1, v2

    .line 104
    monitor-exit v0

    return v1

    .line 105
    .end local v1    # "isInitialized":Z
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    .end local p0    # "this":Lcom/samsung/android/gamesdk/GameSDKService;
    :try_start_13
    throw v1
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 106
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/GameSDKService;
    :catch_14
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method private validateInitConditions(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/GameSDKService;->isDeviceSupportsLRP()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->validatePackageByGos(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method public callVrrListener()V
    .registers 6

    .line 496
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getListener()Lcom/samsung/android/gamesdk/IGameSDKListener;

    move-result-object v0

    .line 497
    .local v0, "mGameSDKListener":Lcom/samsung/android/gamesdk/IGameSDKListener;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callVrrListener(): listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKService"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 498
    if-eqz v0, :cond_2f

    .line 500
    :try_start_27
    invoke-interface {v0}, Lcom/samsung/android/gamesdk/IGameSDKListener;->onRefreshRateChanged()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 503
    goto :goto_2f

    .line 501
    :catch_2b
    move-exception v1

    .line 502
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 505
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial : can\'t dump gamesdk from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    return-void

    .line 659
    :cond_33
    :try_start_33
    const-string v0, "=== DUMP OF SERVICE gamesdk ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->dump(Ljava/io/PrintWriter;)V

    .line 662
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrLogger;->dump(Ljava/io/PrintWriter;)V

    .line 663
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->dump(Ljava/io/PrintWriter;)V

    .line 664
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->dump(Ljava/io/PrintWriter;)V

    .line 665
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->dump(Ljava/io/PrintWriter;)V

    .line 666
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->dump(Ljava/io/PrintWriter;)V

    .line 667
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->dump(Ljava/io/PrintWriter;)V

    .line 668
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->dump(Ljava/io/PrintWriter;)V

    .line 669
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->dump(Ljava/io/PrintWriter;)V

    .line 670
    const-string v0, "=== END OF DUMP gamesdk ==="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_7a} :catch_7b

    .line 673
    goto :goto_7f

    .line 671
    :catch_7b
    move-exception v0

    .line 672
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 674
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method

.method public finalGameSDK(Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 187
    const-string v0, "finalGameSDK"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 188
    return-void

    .line 191
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 194
    .local v0, "pid":I
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalGameSDK(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GameSDKService"

    invoke-virtual {v1, v4, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPackageLifeCycleHandler()Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendPauseMessage(ILjava/lang/String;)V

    .line 196
    return-void
.end method

.method public getCPULevelMax()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 336
    const/16 v0, -0x3e7

    return v0
.end method

.method public getClusterInfo()I
    .registers 3

    .line 481
    const-string v0, "getClustInfo"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_b

    .line 482
    return v1

    .line 486
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getClusterInfo()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 487
    :catch_14
    move-exception v0

    .line 488
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 489
    return v1
.end method

.method public getCpuJTLevel()I
    .registers 3

    .line 253
    const-string v0, "getCpuJTLevel"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_b

    .line 254
    return v1

    .line 258
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCpuJTLevel()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 259
    :catch_14
    move-exception v0

    .line 260
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getCpuLevelCurrent()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    const/16 v0, -0x3e7

    return v0
.end method

.method public getCpuLoad()D
    .registers 4

    .line 398
    const-string v0, "getCpuLoad"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 399
    return-wide v1

    .line 403
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getCpuUsage()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 404
    :catch_17
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 407
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getCurrentRefreshRate()I
    .registers 5

    .line 546
    :try_start_0
    const-string v0, "getCurrentRefreshRate"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 547
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKService"

    const-string v2, "getCurrentRefreshRate(): registerTaskSetGameSDKVrrSetUsedTrue to TaskManager"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetGameSDKVrrSetUsedTrue(I)V

    .line 549
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate(Z)I

    move-result v0

    return v0

    .line 551
    :cond_28
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getCurrentRefreshRate(Z)I

    move-result v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return v0

    .line 553
    :catch_32
    move-exception v0

    .line 554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    .end local v0    # "e":Ljava/lang/Exception;
    const/16 v0, 0x3c

    return v0
.end method

.method public getFrameworkFPS()D
    .registers 4

    .line 370
    const-string v0, "getFrameworkFPS"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 371
    return-wide v1

    .line 375
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getFps()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 376
    :catch_17
    move-exception v0

    .line 377
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 379
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getGPULevelMax()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 342
    const/16 v0, -0x3e7

    return v0
.end method

.method public getGpuFrameTime()D
    .registers 4

    .line 438
    const-string v0, "getGpuFrameTime"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 439
    return-wide v1

    .line 443
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getGpuFrameTime()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 444
    :catch_17
    move-exception v0

    .line 445
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 447
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getGpuJTLevel()I
    .registers 3

    .line 267
    const-string v0, "getGpuJTLevel"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_b

    .line 268
    return v1

    .line 272
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getGpuJTLevel()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 273
    :catch_14
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getGpuLevelCurrent()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 433
    const/16 v0, -0x3e7

    return v0
.end method

.method public getGpuLoad()D
    .registers 4

    .line 412
    const-string v0, "getGpuLoad"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 413
    return-wide v1

    .line 417
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getGpuUsage()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 418
    :catch_17
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getHighPrecisionSkinTempLevel()D
    .registers 4

    .line 239
    const-string v0, "getHighPrecisionSkinTempLevel"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 240
    return-wide v1

    .line 244
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCurrentHighLevelLRP()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 245
    :catch_17
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 248
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getPackageNameFromPid(I)Ljava/lang/String;
    .registers 9
    .param p1, "pid"    # I

    .line 622
    const-string v0, "GameSDKService"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 623
    .local v1, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 625
    .local v2, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_44

    .line 626
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 627
    .local v4, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_43

    .line 628
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageNameFromPid() : pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    iget-object v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_42} :catch_45

    return-object v0

    .line 631
    .end local v4    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_43
    goto :goto_16

    .line 635
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_44
    goto :goto_64

    .line 633
    :catch_45
    move-exception v1

    .line 634
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameFromPid(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_64
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrevFrameworkFPS()D
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    const-string v0, "getPrevFrameworkFPS"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const-wide v1, -0x3f70c80000000000L    # -999.0

    if-nez v0, :cond_e

    .line 385
    return-wide v1

    .line 389
    :cond_e
    :try_start_e
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getPrevFps()D

    move-result-wide v0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_17

    return-wide v0

    .line 390
    :catch_17
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    return-wide v1
.end method

.method public getSkinTempLevel()I
    .registers 3

    .line 225
    const-string v0, "getSkinTempLevel"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_b

    .line 226
    return v1

    .line 230
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCurrentLevelLRP()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 231
    :catch_14
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getSupportedRefreshRates()[I
    .registers 5

    .line 529
    :try_start_0
    const-string v0, "getSupportedRefreshRates"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 530
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKService"

    const-string v2, "getSupportedRefreshRates(): registerTaskSetGameSDKVrrSetUsedTrue to TaskManager"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 531
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetGameSDKVrrSetUsedTrue(I)V

    .line 532
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getSupportedRefreshRates(Z)[I

    move-result-object v0

    return-object v0

    .line 534
    :cond_28
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getSupportedRefreshRates(Z)[I

    move-result-object v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_32

    return-object v0

    .line 536
    :catch_32
    move-exception v0

    .line 537
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    .end local v0    # "e":Ljava/lang/Exception;
    sget-object v0, Lcom/samsung/android/gamesdk/Const;->mEmptyIntArray:[I

    return-object v0
.end method

.method public getTempLevel()I
    .registers 3

    .line 211
    const-string v0, "getTempLevel"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x3e7

    if-nez v0, :cond_b

    .line 212
    return v1

    .line 216
    :cond_b
    :try_start_b
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/thermal/ThermalGatherer;->getCurrentLevelPST()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_14

    return v0

    .line 217
    :catch_14
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 220
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public getVersion()Ljava/lang/String;
    .registers 5

    .line 205
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKService"

    const/4 v2, 0x0

    const-string v3, "getVersion(): version: 3.6"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 206
    const-string v0, "3.6"

    return-object v0
.end method

.method public initGameSDK()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    const-string v0, "1.0"

    invoke-virtual {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->initGameSDKWithVersion(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public initGameSDKWithJsonData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "inVersion"    # Ljava/lang/String;
    .param p2, "jsonData"    # Ljava/lang/String;

    .line 167
    const-string v0, "GameSDKService"

    const/4 v1, 0x0

    :try_start_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 168
    .local v2, "pid":I
    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/GameSDKService;->getPackageNameFromPid(I)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/samsung/android/gamesdk/GameSDKService;->onLazyInitialize()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-direct {p0, v3, p1}, Lcom/samsung/android/gamesdk/GameSDKService;->validateInitConditions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 171
    iget-object v4, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v4}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPackageLifeCycleHandler()Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v4

    invoke-virtual {v4, v2, v3, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendInitMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "initGameSDKWithJsonData(): send Init Message success"

    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 173
    const/4 v0, 0x1

    return v0

    .line 175
    :cond_2b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initGameSDKWithJsonData(): Failed to validate init conditions, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_4f} :catch_50

    .line 176
    return v1

    .line 178
    .end local v2    # "pid":I
    .end local v3    # "packageName":Ljava/lang/String;
    :catch_50
    move-exception v2

    .line 179
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    const-string v4, "[FAIL] initGameSDKWithJsonData(): Failed to get current game sdk version"

    invoke-virtual {v3, v0, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 180
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 182
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public initGameSDKWithVersion(Ljava/lang/String;)Z
    .registers 3
    .param p1, "inVersion"    # Ljava/lang/String;

    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->initGameSDKWithJsonData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGameSDKVrrSupported()Z
    .registers 5

    .line 511
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "isGameSDKVrrSupported"

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 512
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDKService"

    const-string v3, "isGameSDKVrrSupported(): registerTaskSetGameSDKVrrSetUsedTrue to TaskManager"

    invoke-virtual {v1, v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetGameSDKVrrSetUsedTrue(I)V

    .line 514
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported(Z)Z

    move-result v0

    return v0

    .line 516
    :cond_28
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->isGameSDKVrrSupported(Z)Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_31} :catch_32

    return v0

    .line 519
    :catch_32
    move-exception v1

    .line 520
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 522
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public isPMModeEnable()I
    .registers 7

    .line 452
    const-string v0, "isPMModeEnable"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallings(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_a

    .line 453
    return v1

    .line 456
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v2, "GameSDKService"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isPMModeEnable(): enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getGameSDKPMMode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getGameSDKPMMode()I

    move-result v0
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_37} :catch_38

    return v0

    .line 458
    :catch_38
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 461
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public isPackageInWhiteList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 200
    const/4 v0, 0x0

    return v0
.end method

.method public registerDebugBridgePid(I)Z
    .registers 8
    .param p1, "pid"    # I

    .line 593
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->setPidStatusSynchronously(IZ)V

    .line 594
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v3, "GameSDKService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerDebugBridgePid(): change pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v5}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getFocusedPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "to Focused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    .line 595
    return v2

    .line 596
    :catch_30
    move-exception v1

    .line 597
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 599
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public resetRefreshRate()V
    .registers 5

    .line 578
    :try_start_0
    const-string v0, "resetRefreshRate"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 579
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKService"

    const/4 v2, 0x0

    const-string v3, "setRefreshRate(): registerTaskSetRefreshRate to TaskManager, targetRefreshRate: 0"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetRefreshRate(II)V

    goto :goto_29

    .line 582
    :cond_22
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->resetRefreshRate()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 586
    :goto_29
    goto :goto_2e

    .line 584
    :catch_2a
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 587
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method public setCpuBoostMode(I)Z
    .registers 8
    .param p1, "mode"    # I

    .line 293
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "GameSDKService"

    if-eq p1, v1, :cond_21

    .line 294
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] setCpuBoostMode() invalid mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 295
    return v0

    .line 299
    :cond_21
    :try_start_21
    const-string v3, "setCpuBoostMode"

    invoke-direct {p0, v3}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 300
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCpuBoostMode(): registerTaskSetCPUBoost to TaskManager, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetCpuBoost(I)V

    .line 308
    goto :goto_91

    .line 303
    :cond_4f
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCpuBoostMode : mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 304
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setCpuBoostMode()Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_71} :catch_72

    return v0

    .line 306
    :catch_72
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCpuBoostMode(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_91
    return v1
.end method

.method public setDisableTMLevel(I)Z
    .registers 6
    .param p1, "stepLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 468
    const/4 v0, 0x7

    const/4 v1, 0x1

    if-gt p1, v0, :cond_8

    if-ge p1, v1, :cond_7

    goto :goto_8

    .line 474
    :cond_7
    goto :goto_19

    .line 469
    :cond_8
    :goto_8
    :try_start_8
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v2, "GameSDKService"

    const-string v3, "setDisableTMLevel(): stepLevel is not suitable"

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_13} :catch_15

    .line 470
    const/4 v0, 0x0

    return v0

    .line 472
    :catch_15
    move-exception v0

    .line 473
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 476
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_19
    return v1
.end method

.method public setFreqLevels(II)I
    .registers 4
    .param p1, "cpuLevel"    # I
    .param p2, "gpuLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 348
    const-string v0, "GameSDKService"

    :try_start_2
    const-string v1, "setGameSDKListener"

    invoke-direct {p0, v1}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_31

    .line 349
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGameSDKListener(): registerTaskRegisterListener to TaskManager, listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskRegisterListener(ILcom/samsung/android/gamesdk/IGameSDKListener;)V

    goto :goto_52

    .line 352
    :cond_31
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGameSDKListener : listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 353
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->registerListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_52} :catch_53

    .line 357
    :goto_52
    goto :goto_72

    .line 355
    :catch_53
    move-exception v1

    .line 356
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGameSDKListener(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_72
    const/4 v0, 0x1

    return v0
.end method

.method public setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    .line 363
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGameSDKDebugListener : listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSDKService"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKService;->mLifeCycleManager:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)V

    .line 365
    const/4 v0, 0x1

    return v0
.end method

.method public setGpuBoostMode(I)Z
    .registers 8
    .param p1, "mode"    # I

    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "GameSDKService"

    if-eq p1, v1, :cond_21

    .line 315
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] setGpuBoostMode() invalid mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 316
    return v0

    .line 320
    :cond_21
    :try_start_21
    const-string v3, "setGpuBoostMode"

    invoke-direct {p0, v3}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4f

    .line 321
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGpuBoostMode(): registerTaskSetGpuBoost to TaskManager, mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 322
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetGpuBoost(I)V

    .line 329
    goto :goto_91

    .line 324
    :cond_4f
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGpuBoostMode : mode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setGpuBoostMode()Z

    move-result v0
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_71} :catch_72

    return v0

    .line 327
    :catch_72
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setGpuBoostMode(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_91
    return v1
.end method

.method public setLevelWithScene(Ljava/lang/String;II)Z
    .registers 5
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "cpuLevel"    # I
    .param p3, "gpuLevel"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public setRefreshRate(I)V
    .registers 7
    .param p1, "targetRefreshRate"    # I

    .line 563
    :try_start_0
    const-string v0, "setRefreshRate"

    invoke-direct {p0, v0}, Lcom/samsung/android/gamesdk/GameSDKService;->filterApiCallingsWithPending(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 564
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDKService"

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRefreshRate(): registerTaskSetRefreshRate to TaskManager, targetRefreshRate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 565
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/gamesdk/core/TaskManager;->registerTaskSetRefreshRate(II)V

    goto :goto_38

    .line 567
    :cond_31
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->setRefreshRate(I)Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    .line 571
    :goto_38
    goto :goto_3d

    .line 569
    :catch_39
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3d
    return-void
.end method
