.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 4456
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 4459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4462
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 4463
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIWCChannel(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v0

    const v1, 0x87015

    invoke-virtual {v0, v1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 4467
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 4468
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4469
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x21083

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4470
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 4471
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-eqz v0, :cond_85

    .line 4474
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v2, 0x21014

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4475
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v2, 0x21019

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4476
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartPoorLinkMonitor()V

    .line 4477
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 4479
    :cond_85
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_a3

    .line 4483
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v3, 0x8

    invoke-static {v2, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 4487
    :cond_a3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidNoInternet(Z)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 4493
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 4499
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 4501
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x3

    const-string v2, "WifiConnectivityMonitor"

    const/4 v3, 0x1

    sparse-switch p1, :sswitch_data_14a

    return v1

    :sswitch_10
    const-string p1, "CMD_PROVISIONING_FAIL"

    .line 4549
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4550
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object p1

    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    invoke-virtual {p0, v3, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    return v3

    .line 4545
    :sswitch_21
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_2c

    const-string p1, "CMD_REACHABILITY_LOST"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4546
    :cond_2c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 p1, 0x4

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    return v3

    .line 4555
    :sswitch_33
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 p1, 0x1b

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    return v3

    .line 4503
    :sswitch_3b
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-nez p1, :cond_4d

    .line 4504
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNoCheckState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_68

    .line 4505
    :cond_4d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-ne p1, v3, :cond_5f

    .line 4506
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNonSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_68

    .line 4508
    :cond_5f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :goto_68
    :sswitch_68
    return v3

    .line 4512
    :sswitch_69
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4514
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    .line 4515
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4517
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-eq p1, v2, :cond_149

    if-nez p1, :cond_c0

    .line 4519
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x21014

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 4520
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x21019

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    invoke-virtual {v2, v4, v5, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 4522
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 4523
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4524
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    goto :goto_100

    .line 4526
    :cond_c0
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-eqz v2, :cond_100

    sget-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->SKT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetOP_BRANDING(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v4

    if-eq v2, v4, :cond_e6

    sget-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->KTT:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetOP_BRANDING(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v4

    if-eq v2, v4, :cond_e6

    sget-object v2, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->LGU:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetOP_BRANDING(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v4

    if-ne v2, v4, :cond_100

    .line 4529
    :cond_e6
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4530
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_100

    .line 4531
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4534
    :cond_100
    :goto_100
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    if-ne v2, v3, :cond_112

    .line 4535
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNonSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_149

    :cond_112
    if-ne p1, v3, :cond_12f

    .line 4536
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_125

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-ne p1, v0, :cond_12f

    .line 4537
    :cond_125
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_149

    .line 4538
    :cond_12f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-nez p1, :cond_149

    .line 4539
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 4540
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNoCheckState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_149
    :goto_149
    return v3

    :sswitch_data_14a
    .sparse-switch
        0x21006 -> :sswitch_69
        0x21024 -> :sswitch_68
        0x21083 -> :sswitch_3b
        0x210dc -> :sswitch_33
        0x210e8 -> :sswitch_21
        0x210e9 -> :sswitch_10
    .end sparse-switch
.end method
