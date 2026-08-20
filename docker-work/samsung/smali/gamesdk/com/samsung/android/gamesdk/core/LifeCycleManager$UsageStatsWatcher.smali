.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsWatcher"
.end annotation


# instance fields
.field private mPrevPackageName:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)V
    .registers 3

    .line 659
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    .line 660
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, ""

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->mPrevPackageName:Ljava/util/concurrent/atomic/AtomicReference;

    .line 661
    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 12
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 682
    const-string v0, "GameSDK@LifeCycle"

    if-nez p1, :cond_5

    .line 683
    return-void

    .line 687
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 689
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidFromPackageName(Ljava/lang/String;)I

    move-result v2

    .line 690
    .local v2, "pid":I
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-virtual {v3, v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->getPidStatusSynchronously(I)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 691
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v3

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notePauseComponent(): package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 692
    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    invoke-static {v3}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$800(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendPauseMessage(ILjava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3e

    .line 697
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "pid":I
    :cond_3d
    goto :goto_5d

    .line 695
    :catch_3e
    move-exception v1

    .line 696
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] notePauseComponent(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_5d
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 11
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 665
    const-string v0, "GameSDK@LifeCycle"

    if-nez p1, :cond_5

    .line 666
    return-void

    .line 670
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_37

    const-string v2, ""

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 672
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "noteResumeComponent(): package name  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$UsageStatsWatcher;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->mPackageLifeCycleHandler:Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;
    invoke-static {v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$800(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager$PackageLifeCycleHandler;->sendResumeMessage(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    .line 677
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_37
    goto :goto_57

    .line 675
    :catch_38
    move-exception v1

    .line 676
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[FAIL] noteResumeComponent(): msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGE(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_57
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I

    .line 702
    return-void
.end method
