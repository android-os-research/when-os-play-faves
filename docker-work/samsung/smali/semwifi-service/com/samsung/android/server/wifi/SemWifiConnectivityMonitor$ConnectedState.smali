.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 3494
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private inheritPolicy(Landroid/net/Network;)V
    .registers 4

    .line 3896
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "WifiConnectivityMonitor"

    const-string v1, "inheritPolicy - inherit AcceptUnvalidated Policy"

    .line 3897
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3898
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    :cond_1e
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 8

    .line 3497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3499
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3500
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmInitialResultSentToSystemUi(Z)V

    .line 3501
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3503
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misEthernetDefault(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3b

    .line 3504
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    goto :goto_48

    .line 3506
    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3507
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object v0

    iput-boolean v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->mWifiIconHideForEthernet:Z

    .line 3510
    :goto_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 3511
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->newLinkDetected()V

    .line 3512
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move-result-object v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v4

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getCurrentLoss(D)Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCurrentLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics$VolumeWeightedEMA;)V

    .line 3515
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3516
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3518
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v0

    const/4 v4, -0x1

    if-eqz v0, :cond_108

    .line 3519
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    if-eqz v5, :cond_b1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 3520
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b1

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    .line 3521
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    if-eq v5, v4, :cond_b1

    move v5, v3

    goto :goto_b2

    :cond_b1
    move v5, v2

    :goto_b2
    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsUsingProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3522
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsUsingProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 3523
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmProxyAddress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V

    .line 3524
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/LinkProperties;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmProxyPort(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HTTP Proxy is in use. Proxy: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmProxyAddress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmProxyPort(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10d

    .line 3528
    :cond_108
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsUsingProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3531
    :cond_10d
    :goto_10d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->getChipsetVendorName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiChipsetVendorName(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)V

    .line 3533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v5, 0x1f4

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3534
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 3535
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v5, 0x3e8

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3537
    :cond_130
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficPoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;

    move-result-object v0

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficStatsCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiTrafficPollerInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTrafficPoller;->registerCallback(Lcom/samsung/android/server/wifi/SemWifiTrafficPoller$SemWifiTrafficPollCallback;I)V

    .line 3539
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    if-eqz v0, :cond_156

    .line 3540
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->initStayingPoorRssi()V

    .line 3543
    :cond_156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastManualSelectionInput(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v5

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3544
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastManualSelectionInput(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network manually connect : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_18f

    .line 3551
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckAndUnsetNoInternetConfig(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V

    .line 3554
    :cond_18f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_19a

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 3556
    :cond_19a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    if-eqz v0, :cond_1fc

    .line 3557
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1c3

    goto :goto_1f5

    .line 3559
    :cond_1c3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21b

    .line 3560
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_21b

    .line 3558
    :cond_1f5
    :goto_1f5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v5, 0x0

    invoke-static {v0, v5, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    goto :goto_21b

    .line 3561
    :cond_1fc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_21b

    .line 3562
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    invoke-static {v0, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    .line 3565
    :cond_21b
    :goto_21b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetWIFI_ONLY(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_242

    .line 3567
    :try_start_223
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleCreateObjects(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_223 .. :try_end_228} :catch_229

    goto :goto_242

    :catch_229
    move-exception v0

    .line 3569
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eleCreateObjects exception happened! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    :cond_242
    :goto_242
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    if-eqz v0, :cond_26e

    .line 3573
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v4, 0x2

    if-eq v0, v4, :cond_25c

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_26e

    .line 3574
    :cond_25c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerPedometer()V

    .line 3575
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->clearEleMoving()V

    .line 3579
    :cond_26e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3580
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3582
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3583
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3584
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodEnoughRssiToRecover(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3586
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3588
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v4, 0x600

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    .line 3592
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiSwitchForIndividualAppsService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    move-result-object v0

    if-eqz v0, :cond_2db

    .line 3593
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmReportedPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3594
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmReportedPoorNetworkDetectionEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2b0

    const v0, 0x211fe

    goto :goto_2b3

    :cond_2b0
    const v0, 0x211ff

    .line 3597
    :goto_2b3
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiSwitchForIndividualAppsService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessage(I)Z

    .line 3598
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIwcCurrentQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v4

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmReportedQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3599
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiSwitchForIndividualAppsService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v5, 0x21200

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmReportedQai(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v6

    .line 3600
    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(II)Landroid/os/Message;

    move-result-object v4

    .line 3599
    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    .line 3605
    :cond_2db
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_38c

    :cond_2eb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 3606
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misLegacyMultiNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_38c

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCtsTestRunning(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_38c

    const-string v0, ""

    .line 3608
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCarrierWifi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_31f

    .line 3609
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by CarrierWifi"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3610
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3612
    :cond_31f
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misVzwNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_341

    .line 3613
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by VzwNetwork"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3614
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNeedInheritForAcceptUnvalidatedPolicy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3616
    :cond_341
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    if-eqz v4, :cond_35a

    .line 3617
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " by ExceptionList"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3619
    :cond_35a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38c

    .line 3620
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in ConnectedState. setAcceptUnvalidated true, always=false, reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/ConnectivityManager;->setAcceptUnvalidated(Landroid/net/Network;ZZ)V

    .line 3622
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->setWifiNetworkEnabled(Z)V

    .line 3626
    :cond_38c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x21063

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$500(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3627
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 3629
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossSampleCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3630
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmOvercomingCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3631
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3632
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3633
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;D)V

    return-void
.end method

.method public exit()V
    .registers 5

    .line 3638
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3639
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3640
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v3, 0x21049

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$600(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3641
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v3, 0x2103f

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$700(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3642
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 3643
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->init()V

    .line 3645
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3646
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckDisabledNetworks(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3647
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableDelayedNetworks(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3648
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 3653
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x21131

    const-string v4, "Network"

    const v5, 0x2112c

    const-string v6, "WifiConnectivityMonitor"

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch v2, :sswitch_data_576

    return v7

    .line 3871
    :sswitch_16
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3873
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 3874
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v0

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidLatestDnsResultType(I)V

    :cond_2e
    return v8

    .line 3865
    :sswitch_2f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3866
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_4f

    .line 3867
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    iget v3, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v0, v3, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnDnsResult(III)V

    :cond_4f
    return v8

    .line 3854
    :sswitch_50
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v2, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3855
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 3856
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "rssi"

    .line 3857
    invoke-virtual {v1, v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v2, "timeDelta"

    const-wide/16 v3, 0x0

    .line 3858
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    const-string v2, "diffTxBytes"

    .line 3859
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v13

    const-string v2, "diffRxBytes"

    .line 3860
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v15

    .line 3861
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v9

    invoke-virtual/range {v9 .. v16}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnTputUpdate(IJJJ)V

    :cond_84
    return v8

    .line 3887
    :sswitch_85
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->checkAlternativeNetworks()V

    return v8

    .line 3784
    :sswitch_8b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_143

    .line 3786
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMD_ROAM_START_COMPLETE - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mIsInRoamSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "start"

    .line 3788
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const v3, 0x21049

    if-eqz v2, :cond_d4

    .line 3789
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-static {v1, v8, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3790
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1200(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3791
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v3, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    goto :goto_143

    :cond_d4
    const-string v2, "complete"

    .line 3792
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_143

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_143

    .line 3794
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3795
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v3, v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    const-string v1, "Roaming completed. Wait for 5 seconds for DHCP to begin, or not begin"

    .line 3796
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3799
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-eqz v1, :cond_143

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_143

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v1

    .line 3800
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->getBssid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_143

    .line 3801
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)V

    :cond_143
    :goto_143
    return v8

    .line 3763
    :sswitch_144
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3764
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 3765
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_15d

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 3768
    :cond_15d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_18c

    .line 3770
    iget-object v2, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 3771
    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 3772
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 3773
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misCaptivePortalExceptionOnly(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_187

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misIgnorableNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_188

    :cond_187
    move v7, v8

    .line 3772
    :cond_188
    invoke-virtual {v3, v7}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyValidateState(Z)V

    goto :goto_191

    :cond_18c
    const-string v1, "VALIDATED_DETECTED but could not get WifiConfiguration"

    .line 3775
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    :goto_191
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    move-result-object v2

    if-ne v1, v2, :cond_1a4

    .line 3781
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckSCNTBigDataOnInitialQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_1a4
    return v8

    .line 3750
    :sswitch_1a5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3751
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 3752
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCaptivePortalState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 3755
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyCaptivePortalNetwork()V

    .line 3759
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    move-result-object v2

    if-ne v1, v2, :cond_1d3

    .line 3760
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckSCNTBigDataOnInitialQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_1d3
    return v8

    .line 3659
    :sswitch_1d4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1f8

    const-string v1, "HANDLE ON AVAILABLE, but Wi-Fi is off. Transit to NotConnectedState"

    .line 3660
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3661
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->init()V

    .line 3662
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v8

    .line 3665
    :cond_1f8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3666
    const-class v2, Landroid/net/Network;

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    .line 3667
    const-class v4, Landroid/net/NetworkCapabilities;

    const-string v9, "NC"

    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkCapabilities;

    .line 3668
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v4

    if-eq v4, v2, :cond_2e9

    .line 3669
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_2e9

    .line 3670
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NEW NETWORK : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, "OLD NETWORK : "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v4

    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    if-eqz v4, :cond_2c2

    if-eqz v1, :cond_2c2

    .line 3672
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2c2

    .line 3673
    invoke-virtual {v4}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getSsid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2c2

    .line 3677
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/Network;)V

    .line 3678
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentNetwork(Landroid/net/Network;)V

    .line 3679
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$800(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3680
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$900(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3681
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v2, 0x2112f

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3682
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v2, 0x21130

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1100(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3683
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3684
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3685
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->inheritPolicy(Landroid/net/Network;)V

    .line 3686
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    .line 3688
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2e9

    .line 3690
    :cond_2c2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v4, 0x2112d

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 3696
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v3, 0x2112e

    invoke-static {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    :cond_2e9
    :goto_2e9
    return v8

    .line 3702
    :sswitch_2ea
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 3703
    const-class v2, Landroid/net/Network;

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Network;

    .line 3704
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v2

    if-eqz v2, :cond_33c

    if-eqz v1, :cond_33c

    .line 3705
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Network;->hashCode()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/Network;->hashCode()I

    move-result v3

    if-eq v2, v3, :cond_33c

    .line 3707
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HANDLE_ON_LOST ignored"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v8

    .line 3712
    :cond_33c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->init()V

    .line 3713
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v8

    .line 3716
    :sswitch_34f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3719
    :sswitch_358
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3720
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result v2

    if-nez v2, :cond_3a6

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_3a6

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3a6

    .line 3721
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsMobileActiveNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v4

    xor-int/2addr v4, v8

    invoke-static {v2, v7, v7, v8, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 3722
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_3bc

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3bc

    .line 3723
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v4

    const/16 v9, 0x8

    invoke-static {v2, v4, v9, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    goto :goto_3bc

    .line 3726
    :cond_3a6
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMTestResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3727
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_3bc

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmUserSelectionConfirmed()Z

    move-result v2

    if-nez v2, :cond_3bc

    .line 3728
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfputmUserSelectionConfirmed(Z)V

    .line 3732
    :cond_3bc
    :goto_3bc
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-nez v2, :cond_3cd

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 3734
    :cond_3cd
    iget v2, v1, Landroid/os/Message;->what:I

    if-ne v2, v5, :cond_3fa

    .line 3735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected AP (Invalid) - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsManualSelection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 3736
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSkipInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3735
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_403

    .line 3737
    :cond_3fa
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_403

    .line 3738
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3740
    :cond_403
    :goto_403
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmInvalidationRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 3741
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v1

    const/16 v2, 0x11

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 3742
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 3743
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 3746
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;

    move-result-object v2

    if-ne v1, v2, :cond_449

    .line 3747
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckSCNTBigDataOnInitialQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_449
    return v8

    .line 3845
    :sswitch_44a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_455

    const-string v1, "CMD_REACHABILITY_LOST"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3847
    :cond_455
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v1

    if-eqz v1, :cond_46c

    .line 3848
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object v1

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnReachabilityLost(I)V

    :cond_46c
    return v8

    .line 3879
    :sswitch_46d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    .line 3881
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_483

    .line 3882
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiScoreMediator(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WifiScoreMediator;->updateWifiScore()V

    .line 3884
    :cond_483
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v1, 0x21063

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessageDelayed(IJ)V

    return v8

    .line 3841
    :sswitch_48e
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v8, :cond_493

    move v7, v8

    :cond_493
    if-nez v7, :cond_49e

    .line 3842
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNotConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NotConnectedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_49e
    return v8

    .line 3807
    :sswitch_49f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-static {v1, v7, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3808
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_ROAM_TIMEOUT - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3809
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    if-eqz v2, :cond_4bd

    const-string v2, "DHCP in progress"

    goto :goto_4bf

    :cond_4bd
    const-string v2, "DHCP did not begin"

    :goto_4bf
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3808
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3810
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    move-result-object v2

    if-eq v1, v2, :cond_4f1

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v2

    if-eq v1, v2, :cond_4f1

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkCallbackController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    move-result-object v1

    .line 3811
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->isCaptivePortal()Z

    move-result v1

    if-eqz v1, :cond_510

    .line 3812
    :cond_4f1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    move-result-object v2

    if-ne v1, v2, :cond_504

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3813
    :cond_504
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3814
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v1, 0x34

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    :cond_510
    return v8

    .line 3822
    :sswitch_511
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_544

    const-string v1, "EVENT_DHCP_SESSION_COMPLETE"

    .line 3823
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3824
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v2

    invoke-static {v1, v2, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3825
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-eqz v1, :cond_549

    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    if-nez v1, :cond_549

    .line 3826
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3827
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    goto :goto_549

    .line 3830
    :cond_544
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setLogOnlyTransitions(Z)V

    :cond_549
    :goto_549
    return v8

    :sswitch_54a
    const-string v1, "EVENT_DHCP_SESSION_STARTED"

    .line 3818
    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v1

    invoke-static {v0, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRoamAndDhcp(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    return v8

    .line 3837
    :sswitch_559
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1, v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 3838
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v8

    .line 3834
    :sswitch_564
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    return v8

    .line 3655
    :sswitch_56a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 3656
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    return v8

    nop

    :sswitch_data_576
    .sparse-switch
        0x21006 -> :sswitch_56a
        0x21008 -> :sswitch_564
        0x21009 -> :sswitch_559
        0x21044 -> :sswitch_54a
        0x21045 -> :sswitch_511
        0x21049 -> :sswitch_49f
        0x2104a -> :sswitch_48e
        0x21063 -> :sswitch_46d
        0x210e8 -> :sswitch_44a
        0x2112c -> :sswitch_34f
        0x2112d -> :sswitch_2ea
        0x2112e -> :sswitch_1d4
        0x2112f -> :sswitch_1a5
        0x21130 -> :sswitch_144
        0x21131 -> :sswitch_358
        0x21135 -> :sswitch_8b
        0x21139 -> :sswitch_85
        0x21140 -> :sswitch_50
        0x21141 -> :sswitch_2f
        0x21142 -> :sswitch_16
    .end sparse-switch
.end method
