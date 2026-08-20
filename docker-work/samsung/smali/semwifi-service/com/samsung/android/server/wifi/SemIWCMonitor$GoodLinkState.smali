.class Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodLinkState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 3431
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .line 3434
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "SemIWCMonitor"

    .line 3435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetMISC_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    .line 3438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v0

    const-string v2, "IWC enter GoodLink State"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3440
    :cond_38
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 3441
    :try_start_3b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputtimeStampPoorLinkTrig(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3442
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_66

    const-string v2, "SemIWCMonitor"

    .line 3443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TS updated timeStampPoorLinkTrig = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgettimeStampPoorLinkTrig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    :cond_66
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v1, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    .line 3446
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    .line 3447
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v2

    iget-object v2, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v3

    iput v3, v2, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 3448
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v3, "Good Link, timestamp ="

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgettimeStampPoorLinkTrig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", RSSI:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->capRSSI:I

    .line 3449
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", AP:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->currentApBssid_IN:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3448
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3450
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->updateQAI()I

    .line 3451
    monitor-exit v0
    :try_end_df
    .catchall {:try_start_3b .. :try_end_df} :catchall_125

    .line 3453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualSwitchPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 3454
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 3455
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3456
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3457
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_11f

    const-string v0, "SemIWCMonitor"

    .line 3458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TS updated mLastInvalidEnterTimestamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    :cond_11f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msendDebugIntent(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    return-void

    :catchall_125
    move-exception p0

    .line 3451
    :try_start_126
    monitor-exit v0
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    throw p0
.end method

.method public exit()V
    .registers 2

    .line 3465
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemIWCMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
