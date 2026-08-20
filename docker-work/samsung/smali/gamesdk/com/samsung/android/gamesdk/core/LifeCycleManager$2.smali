.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;
.super Landroid/app/TaskStackListener;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    .line 717
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTaskDescriptionChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 3
    .param p1, "taskInfo"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .line 754
    invoke-static {}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->getInstance()Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrrManager;->checkMultiWindowState()V

    .line 755
    return-void
.end method

.method public onTaskFocusChanged(IZ)V
    .registers 13
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 719
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTaskFocusChanged, taskId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focused :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 720
    if-nez p2, :cond_2a

    .line 721
    return-void

    .line 725
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$900(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Landroid/app/ActivityManager;

    move-result-object v0

    if-nez v0, :cond_33

    .line 726
    return-void

    .line 729
    :cond_33
    const/4 v0, 0x0

    .line 730
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 731
    .local v1, "userId":I
    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$900(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Landroid/app/ActivityManager;

    move-result-object v4

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 732
    .local v4, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_94

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_94

    .line 733
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_93

    .line 734
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 735
    .local v6, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v6, :cond_90

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_90

    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v7, :cond_90

    .line 736
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 737
    iget v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    move v1, v7

    .line 738
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onTaskFocusChanged(), pkgName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v3, v8}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 739
    goto :goto_93

    .line 733
    .end local v6    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_4b

    .end local v5    # "i":I
    :cond_93
    :goto_93
    goto :goto_9d

    .line 743
    :cond_94
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v5

    const-string v6, "ActivityManager.getRunningTasks is null."

    invoke-virtual {v5, v2, v3, v6}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 745
    :goto_9d
    if-eqz v0, :cond_a8

    .line 746
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$2;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    invoke-static {v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$800(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendFocusChangeMessage(Ljava/lang/String;)V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_a8} :catch_a9

    .line 750
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "userId":I
    .end local v4    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_a8
    goto :goto_ad

    .line 748
    :catch_a9
    move-exception v0

    .line 749
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 751
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_ad
    return-void
.end method
