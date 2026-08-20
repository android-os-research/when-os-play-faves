.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Level2State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4742
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .line 4745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4746
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4747
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v3, 0x1

    invoke-static {v0, v2, v2, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 4748
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 4749
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4752
    :cond_37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 4753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isInEleMoving()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 4754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartRecoveryScoreCheck()V

    goto :goto_67

    .line 4756
    :cond_55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQCStopCheck()V

    .line 4757
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->limitMonitorTimeByLevel2()V

    .line 4762
    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_78

    goto :goto_a1

    .line 4766
    :cond_78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start scan to find alternative networks. "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentMode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 4763
    :cond_a1
    :goto_a1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do not start scan for alternative networks because mIsInRoamSession="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsInDhcpSession="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4771
    :goto_c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_dd

    .line 4772
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x87016

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4775
    :cond_dd
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodEnoughRssiToRecover(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4776
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4779
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnLevel2State(IZ)V

    .line 4783
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v1

    const-string v2, "wlan0"

    .line 4785
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    move-result v1

    const-string v2, "WFSN"

    const-string v3, "BFTY"

    .line 4783
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4786
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4787
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    const-string v3, "BFRS"

    .line 4786
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4788
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4789
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetTxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    const-string v4, "BFTS"

    .line 4788
    invoke-virtual {v0, v2, v4, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4790
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4791
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    .line 4790
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 4792
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 4793
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    return-void
.end method

.method public exit()V
    .registers 3

    .line 4799
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnLevel2State(IZ)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 4805
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4807
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_118

    return v1

    .line 4816
    :sswitch_e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21019

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {p1, v0, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4817
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v3

    .line 4821
    :sswitch_2c
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x21073

    if-ne p1, v0, :cond_3e

    .line 4822
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x15

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    goto :goto_48

    .line 4824
    :cond_3e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x16

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 4826
    :goto_48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4828
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 4829
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleReason()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 4831
    :cond_69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 4832
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 4835
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    const-string v0, "SSIV"

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 4836
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 4839
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_f0

    .line 4840
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 4841
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v4, 0x9

    invoke-static {v1, p1, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    move-result p1

    .line 4843
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    if-eqz v1, :cond_cf

    .line 4844
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 4846
    :cond_cf
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disable the current network temporarily. 2 min by ELE result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4849
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p0

    const-string p1, "IUIE"

    invoke-virtual {p0, v0, p1, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_f0
    return v3

    .line 4809
    :sswitch_f1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-eqz p1, :cond_116

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-eq p1, v2, :cond_108

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_116

    .line 4811
    :cond_108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 4812
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    :cond_116
    return v3

    nop

    :sswitch_data_118
    .sparse-switch
        0x21040 -> :sswitch_f1
        0x21073 -> :sswitch_2c
        0x21074 -> :sswitch_2c
        0x210de -> :sswitch_e
    .end sparse-switch
.end method
