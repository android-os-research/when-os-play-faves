.class Lcom/samsung/android/game/GosNotifyThread$2;
.super Landroid/content/BroadcastReceiver;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GosNotifyThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosNotifyThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/GosNotifyThread;

    .line 81
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$2;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "userId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent.ACTION_USER_REMOVED broadcast received, userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GosNotifyThread"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.game.gos"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v3, "type"

    const/16 v4, 0x11

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    const-string v3, "userId"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 92
    :try_start_38
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread$2;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    # getter for: Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/game/GosNotifyThread;->access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 93
    .local v3, "name":Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after send intent to GameIntentService. componentName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/SecurityException; {:try_start_38 .. :try_end_5a} :catch_5b
    .catch Ljava/lang/IllegalStateException; {:try_start_38 .. :try_end_5a} :catch_5b

    .line 97
    .end local v3    # "name":Landroid/content/ComponentName;
    goto :goto_64

    .line 94
    :catch_5b
    move-exception v3

    .line 95
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "failed to send intent to GameIntetService"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 98
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_64
    return-void
.end method
