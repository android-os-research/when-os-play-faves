.class Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LifeCycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/core/LifeCycleManager;->onActivate()V
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

    .line 186
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    const-string v1, "package"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$102(Lcom/samsung/android/gamesdk/core/LifeCycleManager;Ljava/lang/String;)Ljava/lang/String;

    .line 190
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(): receive com.samsung.android.gamesdk.allow for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/core/LifeCycleManager$1;->this$0:Lcom/samsung/android/gamesdk/core/LifeCycleManager;

    # getter for: Lcom/samsung/android/gamesdk/core/LifeCycleManager;->forceAllowPackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/gamesdk/core/LifeCycleManager;->access$100(Lcom/samsung/android/gamesdk/core/LifeCycleManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameSDK@LifeCycle"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 191
    return-void
.end method
