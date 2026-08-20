.class Lcom/samsung/android/gamesdk/GameSDKService$1;
.super Landroid/content/BroadcastReceiver;
.source "GameSDKService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/GameSDKService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/GameSDKService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/GameSDKService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/GameSDKService;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKService$1;->this$0:Lcom/samsung/android/gamesdk/GameSDKService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 70
    const-string v0, "debug"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, "bDebugMode":Z
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger;->getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received com.samsung.android.gamesdk.DEBUG_MODE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameSDKService"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->LOGI(Ljava/lang/String;ZLjava/lang/String;)V

    .line 72
    sput-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    .line 73
    return-void
.end method
