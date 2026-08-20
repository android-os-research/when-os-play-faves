.class public Lcom/samsung/android/gamesdk/core/LifeCycleManager;
.super Ljava/lang/Object;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;,
        Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;,
        Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GameSDK@LifeCycle"


# instance fields
.field private forceAllowPackage:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private volatile mFocusedPackageName:Ljava/lang/String;

.field private volatile mFocusedPid:I

.field private final mGameSDKComponentsInverseList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gamesdk/GameSDKComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameSDKComponentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/gamesdk/GameSDKComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

.field private mGameSDKStateListener:Lcom/samsung/android/gamesdk/IGameSDKStateListener;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mLifeCycleLock:Ljava/lang/Object;

.field private final mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

.field private final mPidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackListener:Landroid/app/TaskStackListener;

.field private final mUsageWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

.field private final pidLock:Ljava/lang/Object;

.field private pkgNameForUsageStatsWatcher:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .line 101
    const-string v0, "GameSDK@LifeCycle"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;

    .line 59
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    .line 60
    const/16 v2, -0x3e7

    iput v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    .line 67
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 83
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKStateListener:Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    .line 92
    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;

    .line 717
    new-instance v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mContext:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mIActivityManager:Landroid/app/IActivityManager;

    .line 105
    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;

    .line 106
    new-instance v1, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;

    invoke-direct {v1, p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mUsageWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    .line 107
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 108
    new-instance v1, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-direct {v1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsList:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsInverseList:Ljava/util/ArrayList;

    .line 116
    :try_start_52
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 122
    invoke-static {v2}, Ljava/util/Collections;->reverse(Ljava/util/List;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6d} :catch_6e

    .line 125
    goto :goto_8d

    .line 123
    :catch_6e
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LifeCycleManager(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_8d
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pidLock:Ljava/lang/Object;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    .line 134
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 135
    .local v1, "b":Landroid/os/IBinder;
    if-eqz v1, :cond_d7

    .line 136
    invoke-static {v1}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v2

    .line 140
    .local v2, "usm":Landroid/app/usage/IUsageStatsManager;
    :try_start_a7
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mUsageWatcher:Lcom/samsung/android/app/usage/IUsageStatsWatcher;

    invoke-interface {v2, v3}, Landroid/app/usage/IUsageStatsManager;->registerUsageStatsWatcher(Lcom/samsung/android/app/usage/IUsageStatsWatcher;)V

    .line 141
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "[SUCCESS] Success to register UsageStatsWatcher"

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_b6
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_b6} :catch_b7
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_b6} :catch_b7

    .line 144
    goto :goto_d6

    .line 142
    :catch_b7
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[FAIL] Fail to register UsageStatsWatcher : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .end local v2    # "usm":Landroid/app/usage/IUsageStatsManager;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_d6
    goto :goto_e0

    .line 146
    :cond_d7
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[FAIL] Fail to register UsageStatsWatcher by null binder"

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_e0
    new-instance v0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/samsung/android/gamesdk/core/LifeCycleManager;ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleInitialize(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleResume(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/gamesdk/core/LifeCycleManager;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handlePause(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackageChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/gamesdk/core/LifeCycleManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p1, "x1"    # I

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFinalize(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mLifeCycleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private activateGameSDK(ILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 205
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activateGameSDK : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 206
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->onActivate()V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKStateListener:Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    if-eqz v1, :cond_2b

    .line 209
    invoke-interface {v1}, Lcom/samsung/android/gamesdk/IGameSDKStateListener;->onGameSDKInitialized()V

    .line 212
    :cond_2b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->start()V

    .line 214
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->start(I)V

    .line 215
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->setCurrentPkgName(Ljava/lang/String;)V

    .line 216
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->start()V

    .line 217
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->generateGameSDKVrr(Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 220
    goto :goto_6e

    .line 218
    :catch_4f
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] activateGameSDK(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method private checkFocusedPackageName(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 599
    const-string v0, "GameSDK@LifeCycle"

    const/4 v1, 0x0

    :try_start_3
    iget v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_3b

    .line 600
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 601
    iput p2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    .line 602
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkFocusedPackageName(): PackageName : mFocusedPid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    :cond_3b
    invoke-virtual {p0, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 608
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IGNORE] checkFocusedPackageName(): already initialized  pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 609
    return v1

    .line 612
    :cond_5c
    iget v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    if-eq p2, v2, :cond_87

    .line 613
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] checkFocusedPackageName(): Caller is not focused app, pid :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,FocusedPid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 614
    return v1

    .line 618
    :cond_87
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app.launcher"

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9b

    .line 619
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "[IGNORE] checkFocusedPackageName(): Focused package name is null"

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9a} :catch_9d

    .line 620
    return v1

    .line 622
    :cond_9b
    const/4 v0, 0x1

    return v0

    .line 623
    :catch_9d
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] checkFocusedPackageName(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method

.method private deactivateGameSDK(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 225
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deactivateGameSDK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->getInstance()Lcom/samsung/android/gamesdk/thermal/ThermalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/thermal/ThermalManager;->stop()V

    .line 227
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->onDeactivate()V

    .line 229
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->stop()V

    .line 231
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->releaseCurrentPkgName()V

    .line 232
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->getInstance()Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/CoreUsageChecker;->stop()V

    .line 233
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->getInstance()Lcom/samsung/android/gamesdk/subsystem/FrameCounter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/subsystem/FrameCounter;->stop()V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKStateListener:Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    if-eqz v1, :cond_4e

    .line 235
    invoke-interface {v1}, Lcom/samsung/android/gamesdk/IGameSDKStateListener;->onGameSDKFinalized()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4e} :catch_4f

    .line 239
    :cond_4e
    goto :goto_6e

    .line 237
    :catch_4f
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] deactivateGameSDK(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6e
    return-void
.end method

.method private handleFinalize(I)V
    .registers 6
    .param p1, "pid"    # I

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->removeContext(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 390
    goto :goto_31

    .line 388
    :catch_6
    move-exception v0

    .line 389
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[FAIL] handleFinalize(): pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDK@LifeCycle"

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_31
    return-void
.end method

.method private handleFocusedPackageChanged(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .line 365
    const-string v0, ":"

    const-string v1, "GameSDK@LifeCycle"

    :try_start_4
    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;

    .line 367
    if-eqz p1, :cond_6a

    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 368
    invoke-virtual {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v2

    .line 369
    .local v2, "pid":I
    iget v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackagePause(ILjava/lang/String;)V

    .line 370
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleFocusedPackageChanged(): transition from ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] to ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v4, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 371
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    .line 372
    iput v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    .line 373
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackageResume(Ljava/lang/String;)V

    .line 376
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_6a

    .line 377
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->initiateForceAllowPackage(Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6a} :catch_6b

    .line 382
    .end local v2    # "pid":I
    :cond_6a
    goto :goto_94

    .line 380
    :catch_6b
    move-exception v0

    .line 381
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handleFocusedPackageChanged(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_94
    return-void
.end method

.method private handleFocusedPackagePause(ILjava/lang/String;)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 335
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2e

    .line 336
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[IGNORE] handleFocusedPackagePause(): ignore, pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", package name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_2e
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->loadContext(I)Lcom/samsung/android/gamesdk/core/GameSDKContext;

    move-result-object v1

    .line 341
    .local v1, "gameSDKContext":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    if-nez v1, :cond_3c

    .line 342
    new-instance v3, Lcom/samsung/android/gamesdk/core/GameSDKContext;

    invoke-direct {v3}, Lcom/samsung/android/gamesdk/core/GameSDKContext;-><init>()V

    move-object v1, v3

    .line 344
    :cond_3c
    invoke-virtual {v1, v2}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setPidStatus(Z)V

    .line 345
    invoke-virtual {v1, p2}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setPackageName(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->setPid(I)V

    .line 349
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsInverseList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/gamesdk/GameSDKComponent;

    .line 350
    .local v4, "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    invoke-interface {v4, v1}, Lcom/samsung/android/gamesdk/GameSDKComponent;->onFocusedPackagePause(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V

    .line 351
    .end local v4    # "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    goto :goto_4b

    .line 352
    :cond_5b
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->storeContext(ILcom/samsung/android/gamesdk/core/GameSDKContext;)V

    .line 354
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->setPidStatusSynchronously(IZ)V

    .line 356
    invoke-direct {p0, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->deactivateGameSDK(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SUCCESS] handleFocusedPackagePause(): : package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Context : \n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getDumpString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_99} :catch_9a

    .line 360
    .end local v1    # "gameSDKContext":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    goto :goto_c3

    .line 358
    :catch_9a
    move-exception v1

    .line 359
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handleFocusedPackagePause(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_c3
    return-void
.end method

.method private handleFocusedPackageResume(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 292
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, "pid":I
    invoke-virtual {p0, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 296
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[IGNORE] handleFocusedPackageResume(): ignore, pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", package name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 297
    return-void

    .line 301
    :cond_32
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->loadContext(I)Lcom/samsung/android/gamesdk/core/GameSDKContext;

    move-result-object v2

    .line 302
    .local v2, "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    if-nez v2, :cond_44

    .line 303
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "[IGNORE] handleFocusedPackageResume(): Context is null"

    invoke-virtual {v4, v0, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 304
    return-void

    .line 307
    :cond_44
    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getGameSDKVersion()Ljava/lang/String;

    move-result-object v3

    .line 308
    .local v3, "version":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v4

    invoke-virtual {v4, p1, v3}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->validatePackageByGos(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 310
    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_58
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_68

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gamesdk/GameSDKComponent;

    .line 311
    .local v5, "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    invoke-interface {v5, v2}, Lcom/samsung/android/gamesdk/GameSDKComponent;->onFocusedPackageResume(Lcom/samsung/android/gamesdk/core/GameSDKContext;)V

    .line 312
    .end local v5    # "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    goto :goto_58

    .line 313
    :cond_68
    invoke-direct {p0, v1, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->activateGameSDK(ILjava/lang/String;)V

    .line 314
    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->setPidStatusSynchronously(IZ)V

    .line 315
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setMaxFrequency()V

    .line 316
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SUCCESS] handleFocusedPackageResume(): package name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Context :\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/core/GameSDKContext;->getDumpString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v4, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a8} :catch_a9

    .line 320
    .end local v1    # "pid":I
    .end local v2    # "context":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    .end local v3    # "version":Ljava/lang/String;
    :cond_a8
    goto :goto_d2

    .line 318
    :catch_a9
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handleFocusedPackageResume(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_d2
    return-void
.end method

.method private handleInitialize(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "version"    # Ljava/lang/String;

    .line 261
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    new-instance v1, Lcom/samsung/android/gamesdk/core/GameSDKContext;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p3, v2, p2}, Lcom/samsung/android/gamesdk/core/GameSDKContext;-><init>(ILjava/lang/String;ZLjava/lang/String;)V

    .line 262
    .local v1, "gameSDKContext":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->storeContext(ILcom/samsung/android/gamesdk/core/GameSDKContext;)V

    .line 266
    .end local v1    # "gameSDKContext":Lcom/samsung/android/gamesdk/core/GameSDKContext;
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->checkFocusedPackageName(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_55

    invoke-direct {p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->isDeviceInteractive()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 267
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->activateGameSDK(ILjava/lang/String;)V

    .line 268
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->setPidStatusSynchronously(IZ)V

    .line 269
    invoke-static {}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->getInstance()Lcom/samsung/android/gamesdk/frequency/FrequencyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/gamesdk/frequency/FrequencyManager;->setMaxFrequency()V

    .line 270
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SUCCESS] handleInitialize(): Initialized by Package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_55} :catch_56

    .line 275
    :cond_55
    goto :goto_7f

    .line 273
    :catch_56
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handleInitialize(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_7f
    return-void
.end method

.method private handlePause(ILjava/lang/String;)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 325
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePause(): packageName  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 326
    iput-object p2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackagePause(ILjava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_22} :catch_23

    .line 330
    goto :goto_4c

    .line 328
    :catch_23
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handlePause(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4c
    return-void
.end method

.method private handleResume(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 280
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 281
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleResume(): pkgNameForUsageStatsWatcher  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 282
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->handleFocusedPackageResume(Ljava/lang/String;)V

    .line 283
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pkgNameForUsageStatsWatcher:Ljava/lang/String;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_36} :catch_37

    .line 287
    :cond_36
    goto :goto_60

    .line 285
    :catch_37
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] handleResume(): packageName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_60
    return-void
.end method

.method private initiateForceAllowPackage(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 708
    const-string v0, "3.6"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;

    if-eqz v1, :cond_1f

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->getInstance()Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/gamesdk/subsystem/GameSDKJsonData;->validatePackageByGos(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 709
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendInitMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    .line 713
    :cond_1f
    goto :goto_24

    .line 711
    :catch_20
    move-exception v0

    .line 712
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    return-void
.end method

.method private isDeviceInteractive()Z
    .registers 7

    .line 244
    const-string v0, "GameSDK@LifeCycle"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 245
    .local v2, "powerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_20

    .line 246
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const-string v5, "[IGNORE] isDeviceInteractive(): Filtered by mPowerManager"

    invoke-virtual {v4, v0, v3, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_21

    .line 247
    return v1

    .line 249
    :cond_20
    return v3

    .line 250
    .end local v2    # "powerManager":Landroid/os/PowerManager;
    :catch_21
    move-exception v2

    .line 251
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] isDeviceInteractive(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .end local v2    # "e":Ljava/lang/Exception;
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 760
    const-string v0, "----------------------------"

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 761
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focused package name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focused Pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Focused Pid status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pids in mPidMap : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_95
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ca

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 768
    .local v2, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    .end local v2    # "pid":I
    goto :goto_95

    .line 771
    :cond_ca
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKContextManager:Lcom/samsung/android/gamesdk/core/GameSDKContextManager;

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/GameSDKContextManager;->dump(Ljava/io/PrintWriter;)V

    .line 773
    sget-boolean v1, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v1, :cond_109

    .line 774
    const-string v1, "GameSDKComponents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 775
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_de
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ee

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gamesdk/GameSDKComponent;

    .line 776
    .local v2, "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 777
    .end local v2    # "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    goto :goto_de

    .line 779
    :cond_ee
    const-string v1, "Reverse order GameSDKComponents:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKComponentsInverseList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_109

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/gamesdk/GameSDKComponent;

    .line 781
    .restart local v2    # "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 782
    .end local v2    # "component":Lcom/samsung/android/gamesdk/GameSDKComponent;
    goto :goto_f9

    .line 784
    :cond_109
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10c} :catch_10d

    .line 787
    goto :goto_111

    .line 785
    :catch_10d
    move-exception v0

    .line 786
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 788
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_111
    return-void
.end method

.method public getFocusedPid()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mFocusedPid:I

    return v0
.end method

.method public getPackageLifeCycleHandler()Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    .registers 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    return-object v0
.end method

.method public getPidFromPackageName(Ljava/lang/String;)I
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 634
    const-string v0, "GameSDK@LifeCycle"

    const/16 v1, -0x3e7

    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 635
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 637
    .local v3, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v3, :cond_1f

    .line 638
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    const/4 v5, 0x1

    const-string v6, "[FAIL] getPidFromPackageName() : processInfos are null"

    invoke-virtual {v4, v0, v5, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGW(Ljava/lang/String;ZLjava/lang/String;)V

    .line 639
    return v1

    .line 642
    :cond_1f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 643
    .local v5, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    if-eqz p1, :cond_62

    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 644
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPidFromPackageName() : pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget v0, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_61} :catch_64

    return v0

    .line 647
    .end local v5    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_62
    goto :goto_23

    .line 650
    .end local v2    # "am":Landroid/app/ActivityManager;
    .end local v3    # "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_63
    goto :goto_83

    .line 648
    :catch_64
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPidFromPackageName(): msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_83
    return v1
.end method

.method public getPidStatusSynchronously(I)Z
    .registers 8
    .param p1, "pid"    # I

    .line 584
    const/4 v0, 0x0

    .line 585
    .local v0, "activated":Z
    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pidLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_45

    .line 586
    :try_start_5
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    .line 587
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_42

    .line 588
    :try_start_1b
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "GameSDK@LifeCycle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPidStatusSynchronously(): pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", activate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_41} :catch_45

    .line 589
    return v0

    .line 587
    :catchall_42
    move-exception v3

    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .end local p1    # "pid":I
    :try_start_44
    throw v3
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_45} :catch_45

    .line 590
    .end local v0    # "activated":Z
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .restart local p1    # "pid":I
    :catch_45
    move-exception v0

    .line 591
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const-string v3, "GameSDK@LifeCycle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[FAIL] getPidStatusSynchronously(): pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", msg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .end local v0    # "e":Ljava/lang/Exception;
    return v1
.end method

.method public onActivate()V
    .registers 6

    .line 154
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    invoke-virtual {v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->start()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    .line 157
    goto :goto_27

    .line 155
    :catch_8
    move-exception v1

    .line 156
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] Thread PackageChange start failed. msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_27
    :try_start_27
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    if-eqz v1, :cond_3a

    .line 161
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    invoke-interface {v1, v2}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 162
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "[SUCCESS] Success to register MultiWindowEventListener"

    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3a} :catch_3b

    .line 166
    :cond_3a
    goto :goto_5a

    .line 164
    :catch_3b
    move-exception v1

    .line 165
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] Fail to register MultiWindowEventListener : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5a
    :try_start_5a
    new-instance v0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;)V

    .line 178
    .local v0, "gameSDKProcessObserver":Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, v0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_65} :catch_66

    .line 181
    .end local v0    # "gameSDKProcessObserver":Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;
    goto :goto_6a

    .line 179
    :catch_66
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6a
    :try_start_6a
    const-string v0, "user"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 185
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.gamesdk.allow"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_85} :catch_86

    .line 196
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_85
    goto :goto_8a

    .line 194
    :catch_86
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 197
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8a
    return-void
.end method

.method public setGameSDKStateListener(Lcom/samsung/android/gamesdk/IGameSDKStateListener;)V
    .registers 2
    .param p1, "gameSDKStateListener"    # Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mGameSDKStateListener:Lcom/samsung/android/gamesdk/IGameSDKStateListener;

    .line 87
    return-void
.end method

.method public setPidStatusSynchronously(IZ)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "activate"    # Z

    .line 566
    :try_start_0
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    const-string v1, "GameSDK@LifeCycle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPidStatusSynchronously(): pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", activate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    if-eqz p2, :cond_45

    .line 568
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pidLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_56

    .line 569
    :try_start_2b
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/TaskManager;->flushTask(I)V

    .line 570
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    monitor-exit v0

    goto :goto_52

    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .end local p1    # "pid":I
    .end local p2    # "activate":Z
    :try_start_44
    throw v1

    .line 573
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .restart local p1    # "pid":I
    .restart local p2    # "activate":Z
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->pidLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_56

    .line 574
    :try_start_48
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPidMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    monitor-exit v0

    .line 579
    :goto_52
    goto :goto_8b

    .line 575
    :catchall_53
    move-exception v1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_53

    .end local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .end local p1    # "pid":I
    .end local p2    # "activate":Z
    :try_start_55
    throw v1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_56} :catch_56

    .line 577
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .restart local p1    # "pid":I
    .restart local p2    # "activate":Z
    :catch_56
    move-exception v0

    .line 578
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] setPidStatusSynchronously(): pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", activate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_8b
    return-void
.end method
