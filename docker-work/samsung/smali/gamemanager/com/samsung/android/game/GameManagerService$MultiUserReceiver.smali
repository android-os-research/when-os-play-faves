.class final Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MultiUserReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 9

    .line 1543
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1544
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1545
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1546
    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1547
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1551
    const-string v0, "MultiUserReceiver, onReceive(), "

    .line 1552
    .local v0, "MSG_PREFIX":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1553
    .local v1, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1554
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1555
    .local v2, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MultiUserReceiver, onReceive(), MultiUserReceiver-Switched userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GameManager"

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    if-eq v2, v3, :cond_34

    .line 1557
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-virtual {v3, v2}, Lcom/samsung/android/game/GameManagerService;->onUserSwitched(I)V

    .line 1560
    .end local v2    # "userId":I
    :cond_34
    return-void
.end method
