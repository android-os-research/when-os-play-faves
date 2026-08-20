.class final Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyguardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .registers 9

    .line 842
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 843
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 844
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    # getter for: Lcom/samsung/android/game/FgCheckThread;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/FgCheckThread;->access$1000(Lcom/samsung/android/game/FgCheckThread;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 847
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 851
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 853
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/16 v2, 0x2718

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    goto :goto_4a

    .line 854
    :cond_14
    const-string v1, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 855
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$1100(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    .line 856
    # getter for: Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$1100(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    # getter for: Lcom/samsung/android/game/FgCheckThread;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v1}, Lcom/samsung/android/game/FgCheckThread;->access$1100(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 857
    :cond_3c
    const-string v1, "FgCheckThread"

    const-string v2, "com.samsung.keyguard.KEYGUARD_STATE. check for pause"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$KeyguardReceiver;->this$0:Lcom/samsung/android/game/FgCheckThread;

    const/16 v2, 0x2719

    invoke-virtual {v1, v2}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    .line 861
    :cond_4a
    :goto_4a
    return-void
.end method
