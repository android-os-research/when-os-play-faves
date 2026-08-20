.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReceiverHeadSarManager"
.end annotation


# instance fields
.field private mIsReceiverListenerEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 3

    .line 578
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 579
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p1, 0x0

    .line 576
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 4

    .line 596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-nez v0, :cond_22

    return-void

    :cond_22
    if-eqz p1, :cond_2d

    .line 601
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-nez p1, :cond_35

    const/4 p1, 0x1

    .line 602
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    goto :goto_35

    .line 605
    :cond_2d
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-eqz p1, :cond_35

    const/4 p1, 0x0

    .line 606
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    :cond_35
    :goto_35
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 4

    if-eqz p1, :cond_17

    .line 614
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    if-nez p1, :cond_29

    .line 615
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 616
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    goto :goto_29

    .line 619
    :cond_17
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    if-eqz p1, :cond_29

    .line 620
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 621
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    :cond_29
    :goto_29
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "ReceiverHeadSarManager"

    return-object p0
.end method

.method public triggerReceiverRoutine(Z)V
    .registers 2

    .line 584
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 585
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$ReceiverHeadSarManager;->checkAndSetBackoff(Z)V

    .line 586
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    return-void
.end method
