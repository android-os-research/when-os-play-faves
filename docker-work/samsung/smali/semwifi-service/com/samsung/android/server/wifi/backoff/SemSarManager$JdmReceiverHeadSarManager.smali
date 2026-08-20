.class Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;
.super Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;
.source "SemSarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/SemSarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JdmReceiverHeadSarManager"
.end annotation


# instance fields
.field private mIsReceiverListenerEnabled:Z

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V
    .registers 3

    .line 1702
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    .line 1703
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;-><init>(Lcom/samsung/android/server/wifi/backoff/SemSarManager;Lcom/samsung/android/server/wifi/backoff/SemSarManager$Observable;)V

    const/4 p1, 0x0

    .line 1700
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    return-void
.end method


# virtual methods
.method public checkAndSetBackoff(Z)V
    .registers 9

    .line 1720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : checkAndSetBackoff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Sar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mWifiEnabled:Z

    if-nez v0, :cond_22

    return-void

    :cond_22
    const/4 v0, 0x1

    if-eqz p1, :cond_2e

    .line 1725
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-nez p1, :cond_a9

    .line 1726
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    goto/16 :goto_a9

    .line 1729
    :cond_2e
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->mPrevBackoffEnabled:Z

    if-eqz p1, :cond_a9

    .line 1730
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Receiver stopped at : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->mSarManagerList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :cond_5b
    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_85

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;

    .line 1734
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmProximityHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 1735
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "JdmReceiverHeadSarManager"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5b

    .line 1736
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->getBackOffState()Z

    move-result v4

    or-int/2addr v3, v4

    goto :goto_5b

    .line 1739
    :cond_85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : checkAndSetBackoff : isBodySar:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_a6

    .line 1741
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffMode(I)V

    goto :goto_a9

    .line 1744
    :cond_a6
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPowerBackoffEnabled(Z)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public checkAndSetListener(Z)V
    .registers 4

    if-eqz p1, :cond_17

    .line 1753
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    if-nez p1, :cond_29

    .line 1754
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 1755
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    goto :goto_29

    .line 1758
    :cond_17
    iget-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    if-eqz p1, :cond_29

    .line 1759
    iget-object p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->this$0:Lcom/samsung/android/server/wifi/backoff/SemSarManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/backoff/SemSarManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseHeadSarManager;->mBaseHeadSarReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 1760
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->mIsReceiverListenerEnabled:Z

    :cond_29
    :goto_29
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    const-string p0, "JdmReceiverHeadSarManager"

    return-object p0
.end method

.method public triggerReceiverRoutine(Z)V
    .registers 2

    .line 1708
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setBackoffState(Z)V

    .line 1709
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$JdmReceiverHeadSarManager;->checkAndSetBackoff(Z)V

    .line 1710
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/backoff/SemSarManager$BaseSarManager;->setPrevBackoffState(Z)V

    return-void
.end method
