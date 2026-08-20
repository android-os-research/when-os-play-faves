.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 3422
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 3425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3426
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    .line 3427
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentNetwork(Landroid/net/Network;)V

    .line 3429
    :cond_2c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V

    const/4 v0, 0x0

    .line 3430
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmInitialResultSentToSystemUi(Z)V

    .line 3431
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3432
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3433
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIgnorableNetworkReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3434
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCaptivePortalExceptionReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3435
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmQai3InvalidAwaitFinished(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3436
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3437
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    const-string v3, "SCORE_QC_STATE_NONE"

    .line 3438
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQCInit()V

    .line 3441
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->stop()V

    .line 3442
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v1

    if-eqz v1, :cond_8b

    .line 3443
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->unregisterCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 3446
    :cond_8b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3448
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetWIFI_ONLY(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_c9

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    if-eqz v1, :cond_c9

    .line 3449
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(ZZ)V

    .line 3450
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterPedometer()V

    .line 3451
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->unregisterGeomagneticListener()V

    .line 3452
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 3453
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3456
    :cond_c9
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3458
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v3, 0x2112c

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3459
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v3, 0x21063

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3461
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 3462
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 3468
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2112e

    const v2, 0x2114d

    const/4 v3, 0x1

    if-eq v0, v1, :cond_15

    if-eq v0, v2, :cond_f

    const/4 p0, 0x0

    return p0

    .line 3486
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v3

    .line 3470
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    const-string v1, "WifiConnectivityMonitor"

    if-nez v0, :cond_29

    const-string p0, "HANDLE ON AVAILABLE, but Wi-Fi is off."

    .line 3471
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 3474
    :cond_29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 3475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-class v4, Landroid/net/Network;

    const-string v5, "Network"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V

    .line 3476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NEW NETWORK : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3477
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3478
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x2112c

    const-wide/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    .line 3479
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 3480
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentNetwork(Landroid/net/Network;)V

    .line 3481
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->handleConnected()V

    .line 3482
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    const/4 v0, 0x2

    iput v0, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 3483
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p0

    iput v3, p0, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTriggerTemp:I

    return v3
.end method
