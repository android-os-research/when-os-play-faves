.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Level1State"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4661
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 4664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V

    .line 4666
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4667
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 4668
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4669
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4670
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    .line 4673
    :cond_4d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4674
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartPoorLinkMonitor()V

    .line 4675
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4676
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    if-eqz v0, :cond_88

    .line 4677
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4678
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(ZZ)V

    .line 4679
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerPedometer()V

    .line 4682
    :cond_88
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_9c

    .line 4683
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x87015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4687
    :cond_9c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 4696
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_ec

    return v1

    .line 4700
    :pswitch_c
    iget p1, p1, Landroid/os/Message;->what:I

    const v0, 0x21073

    if-ne p1, v0, :cond_1e

    .line 4701
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x15

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    goto :goto_28

    .line 4703
    :cond_1e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/16 v0, 0x16

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 4705
    :goto_28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4706
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mpoorLinkDetected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;II)V

    .line 4708
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object p1

    if-eqz p1, :cond_59

    .line 4709
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleReason()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 4711
    :cond_59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 4712
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 4715
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    const-string v0, "SSIV"

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 4716
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 4719
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 4720
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_e2

    .line 4721
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v4, 0x9

    invoke-static {v3, p1, v4, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    move-result p1

    .line 4723
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v3

    if-eqz v3, :cond_c0

    .line 4724
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 4726
    :cond_c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable the current network temporarily. 2 min by ELE result: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4729
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    move-result-object p0

    const-string p1, "IUIE"

    invoke-virtual {p0, v0, p1, v2}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_eb

    .line 4732
    :cond_e2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_eb
    return v2

    :pswitch_data_ec
    .packed-switch 0x21073
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method
