.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvaluatedState"
.end annotation


# instance fields
.field private mCheckFastDisconnection:I

.field private mRxPkts:J

.field private mTxPkts:J

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 3931
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    const/4 p1, 0x0

    .line 3933
    iput p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mCheckFastDisconnection:I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 3

    .line 3940
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3942
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodLinkLastRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3952
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3954
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v4, "Fetch Detect Mode : "

    const/4 v5, 0x2

    const v6, 0x21019

    const v7, 0x21014

    const/4 v8, 0x3

    const-string v9, "WifiConnectivityMonitor"

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_4a4

    return v3

    .line 4159
    :sswitch_1d
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->start()V

    return v10

    .line 4152
    :sswitch_27
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4153
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4154
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v1

    if-ne v1, v10, :cond_4a

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->getTxBadOnGoing()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 4155
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_4a
    return v10

    .line 4100
    :sswitch_4b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4101
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 4102
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    return v10

    .line 4055
    :sswitch_69
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_72

    return v10

    .line 4056
    :cond_72
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    if-nez v2, :cond_7b

    return v10

    .line 4057
    :cond_7b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-nez v2, :cond_84

    return v10

    .line 4058
    :cond_84
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-eq v2, v5, :cond_94

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-ne v2, v8, :cond_9b

    :cond_94
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v2

    if-nez v2, :cond_9b

    return v10

    .line 4061
    :cond_9b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4062
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    const-wide/16 v7, 0xbb8

    if-ne v2, v4, :cond_cc

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_ba

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result v2

    if-nez v2, :cond_cc

    .line 4063
    :cond_ba
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_ff

    .line 4065
    :cond_cc
    iget v1, v1, Landroid/os/Message;->arg1:I

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-eq v1, v2, :cond_ff

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_e4

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result v1

    if-nez v1, :cond_ff

    :cond_e4
    const-string v1, "mTrafficPollToken MisMatch!!!"

    .line 4066
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4067
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1600(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4068
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    add-int/2addr v2, v10

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v1, v6, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4072
    :cond_ff
    :goto_ff
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v1

    if-nez v1, :cond_10d

    const-string v0, "traffic mSemTrafficStats null."

    .line 4073
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    .line 4077
    :cond_10d
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    .line 4083
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v5

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    .line 4084
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v5

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    .line 4086
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v5

    iget-wide v12, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 4087
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v5

    iget-wide v14, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 4088
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v5

    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 4089
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v7

    iget-wide v7, v7, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 4091
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    cmp-long v1, v1, v10

    if-nez v1, :cond_153

    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_153

    const/4 v1, 0x1

    return v1

    .line 4093
    :cond_153
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/app/ActivityManager;

    move-result-object v1

    if-nez v1, :cond_16c

    .line 4094
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/app/ActivityManager;)V

    .line 4097
    :cond_16c
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    invoke-static/range {v11 .. v19}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetTrafficPollHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;JJJJ)V

    const/4 v1, 0x1

    return v1

    :sswitch_177
    move v1, v10

    .line 3956
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_181

    return v1

    .line 3957
    :cond_181
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_190

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result v2

    if-eqz v2, :cond_190

    return v1

    .line 3958
    :cond_190
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    const/4 v1, 0x0

    .line 3961
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_1a4

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result v2

    if-nez v2, :cond_1c8

    .line 3962
    :cond_1a4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 3963
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getTxPacketCounters()Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;

    move-result-object v1

    .line 3965
    :cond_1ba
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v2, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3966
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSamplingIntervalMS(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    move-result-wide v10

    invoke-virtual {v2, v7, v10, v11}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    .line 3968
    :cond_1c8
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    if-nez v1, :cond_1d1

    return v4

    .line 3973
    :cond_1d1
    iget v2, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    if-eq v2, v5, :cond_364

    if-ne v2, v8, :cond_1d9

    goto/16 :goto_364

    .line 3978
    :cond_1d9
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    if-nez v2, :cond_1e2

    return v4

    .line 3982
    :cond_1e2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v2

    if-nez v2, :cond_1f0

    const-string v0, "Rssi fetch, mSemTrafficStats null."

    .line 3983
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 3987
    :cond_1f0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v2

    iput v8, v2, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 3988
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v2

    iput v8, v2, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    .line 3989
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3991
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-nez v2, :cond_213

    const/4 v2, 0x1

    return v2

    .line 3994
    :cond_213
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v2

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v4

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v6

    invoke-virtual {v2, v1, v4, v6}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcIsRequired(Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;IZ)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_235

    .line 3996
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 3999
    :cond_235
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetUpdatedRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    .line 4002
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-eq v4, v5, :cond_24b

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-ne v4, v8, :cond_252

    .line 4003
    :cond_24b
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v6, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    invoke-static {v4, v6, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 4007
    :cond_252
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v4, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastTxBad(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v6

    sub-int v11, v4, v6

    iget v4, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastTxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v6

    sub-int v12, v4, v6

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v4

    iget-wide v13, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    move v15, v2

    invoke-static/range {v10 .. v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckIdleAndStopPoll(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIJI)Z

    move-result v4

    if-eqz v4, :cond_290

    .line 4010
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4011
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1500(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4012
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x21052

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    const/4 v4, 0x1

    return v4

    :cond_290
    const/4 v4, 0x1

    .line 4016
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v6

    if-eqz v6, :cond_2f9

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v6

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    move-result-object v7

    if-ne v6, v7, :cond_2f9

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v6

    if-ne v6, v4, :cond_2f9

    .line 4017
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmp-long v4, v6, v10

    if-lez v4, :cond_2f9

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-nez v4, :cond_2f9

    .line 4018
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v4

    iget-wide v6, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    move-result-wide v10

    sub-long/2addr v6, v10

    long-to-int v4, v6

    const/16 v6, 0xa

    if-lt v4, v6, :cond_2f9

    .line 4020
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_2e2

    const-string v4, "check Internet connectivity - reportNetworkConnectivity"

    .line 4021
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4022
    :cond_2e2
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v6, 0xb

    invoke-static {v4, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4023
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v6, 0x1

    invoke-static {v4, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4024
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v6, 0x21025

    const-wide/16 v9, 0x7530

    invoke-virtual {v4, v6, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    .line 4030
    :cond_2f9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_32a

    .line 4031
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-eq v4, v8, :cond_322

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-eq v4, v5, :cond_318

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    if-ne v4, v8, :cond_322

    .line 4033
    :cond_318
    iget v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mCheckFastDisconnection:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_31e

    goto :goto_31f

    :cond_31e
    move v3, v5

    :goto_31f
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mCheckFastDisconnection:I

    goto :goto_325

    :cond_322
    const/4 v5, 0x1

    .line 4035
    iput v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mCheckFastDisconnection:I

    .line 4038
    :goto_325
    iget v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mCheckFastDisconnection:I

    if-ne v3, v5, :cond_32a

    return v5

    .line 4043
    :cond_32a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misAggressiveModeSupported(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v3

    if-eqz v3, :cond_352

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v3

    if-eqz v3, :cond_352

    .line 4044
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    if-eqz v3, :cond_352

    .line 4045
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v3

    const v4, 0x210cc

    iget v5, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    iget v6, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 4049
    :cond_352
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v12, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    iget v13, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    move-result-object v0

    iget-wide v14, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    move v11, v2

    invoke-static/range {v10 .. v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mevaluateLinkLayerStatus(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIIJ)V

    const/4 v0, 0x1

    return v0

    .line 3974
    :cond_364
    :goto_364
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_380

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RSSI_FETCH_FAILED reason : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_380
    const/4 v0, 0x1

    return v0

    .line 4135
    :sswitch_382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4136
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4137
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4138
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4139
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v4, 0x0

    invoke-static {v1, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;D)V

    .line 4140
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4141
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4142
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1700(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4143
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1800(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4145
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->stop()V

    .line 4147
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v1

    if-eqz v1, :cond_3dc

    .line 4148
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    :cond_3dc
    const/4 v0, 0x1

    return v0

    .line 4105
    :sswitch_3de
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    if-eqz v1, :cond_443

    .line 4106
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4107
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_423

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v2

    if-eq v1, v2, :cond_423

    .line 4108
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v1

    if-eqz v1, :cond_41c

    .line 4109
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_41c

    .line 4110
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    goto :goto_41d

    :cond_41c
    const/4 v2, 0x1

    .line 4112
    :goto_41d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleCheckStart(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    goto :goto_424

    :cond_423
    const/4 v2, 0x1

    .line 4114
    :goto_424
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    if-eq v1, v2, :cond_432

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v1

    if-ne v1, v2, :cond_443

    .line 4115
    :cond_432
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v1, v6, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4119
    :cond_443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46b

    .line 4121
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossSampleCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4122
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmOvercomingCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    goto :goto_49c

    .line 4124
    :cond_46b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodTargetCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4125
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_49c

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidBlockState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    move-result-object v2

    if-ne v1, v2, :cond_49c

    .line 4126
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    const/16 v2, -0x42

    if-lt v1, v2, :cond_49c

    .line 4127
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4128
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v2, 0x1c

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4132
    :cond_49c
    :goto_49c
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v1

    nop

    :sswitch_data_4a4
    .sparse-switch
        0x21008 -> :sswitch_3de
        0x21009 -> :sswitch_382
        0x21014 -> :sswitch_177
        0x21019 -> :sswitch_69
        0x2101a -> :sswitch_4b
        0x21051 -> :sswitch_27
        0x21052 -> :sswitch_1d
    .end sparse-switch
.end method
