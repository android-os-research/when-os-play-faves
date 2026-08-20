.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameSDKProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V
    .registers 2

    .line 541
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;
    .param p2, "x1"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;

    .line 541
    invoke-direct {p0, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;-><init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 545
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 549
    return-void
.end method

.method public onProcessDied(II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 554
    const-string v0, "GameSDK@LifeCycle"

    :try_start_2
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProcessDied  PID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lcom/samsung/android/gamesdk/core/TaskManager;->getInstance()Lcom/samsung/android/gamesdk/core/TaskManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/TaskManager;->removeTask(I)V

    .line 556
    iget-object v1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$GameSDKProcessObserver;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    invoke-static {v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$800(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendFinalizeMessage(I)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_2d

    .line 559
    goto :goto_56

    .line 557
    :catch_2d
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onProcessDied(): pid: "

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

    .line 560
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_56
    return-void
.end method
