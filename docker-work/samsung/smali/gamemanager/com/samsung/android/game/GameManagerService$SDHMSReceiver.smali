.class final Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SDHMSReceiver"
.end annotation


# static fields
.field private static final MSG_PREFIX:Ljava/lang/String; = "SDHMSReceiver, "


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 9

    .line 1264
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1270
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1271
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.sdhms.action.INIT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1272
    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1273
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1277
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$300(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # invokes: Lcom/samsung/android/game/GameManagerService;->isMlPidModel()Z
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1000(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$1100(Lcom/samsung/android/game/GameManagerService;)I

    move-result v1

    # invokes: Lcom/samsung/android/game/GameManagerService;->deleteAllGamePolicies(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/GameManagerService;->access$1200(Lcom/samsung/android/game/GameManagerService;I)V

    .line 1280
    const-string v0, "GameManager"

    const-string v1, "SDHMSReceiver, onReceive(), the user\'s data was reset by disabling GOS"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1282
    :cond_20
    return-void
.end method
