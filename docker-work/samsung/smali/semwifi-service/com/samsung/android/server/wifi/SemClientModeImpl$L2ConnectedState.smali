.class Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "L2ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1551
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 1554
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "entering L2ConnectedState"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 1627
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "Leaving L2Connected state"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 1560
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_192

    const/4 v0, 0x0

    goto/16 :goto_18a

    .line 1607
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_16

    .line 1608
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v2, "Associated command w/o BSSID"

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$200(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    goto/16 :goto_189

    .line 1611
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyRoamingStart(Ljava/lang/String;)V

    goto/16 :goto_189

    .line 1573
    :sswitch_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1574
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1575
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    .line 1576
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1577
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 1578
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_7e

    .line 1580
    :cond_6f
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1582
    :goto_7e
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v3

    if-eqz v3, :cond_bb

    .line 1583
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L2Connected: NETWORK_CONNECTION_EVENT, networkId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_a2

    const-string v5, ", roamingBssid="

    goto :goto_a4

    :cond_a2
    const-string v5, ", bssid="

    .line 1585
    :goto_a4
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v5

    .line 1586
    invoke-virtual {v5, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1583
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_bb
    if-eqz v0, :cond_189

    .line 1589
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->setCurrentBssid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_e2

    .line 1591
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 1594
    :cond_e2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtMonitor()Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiTwtMonitor;->renewTwtSession(Ljava/lang/String;)V

    .line 1596
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    .line 1597
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getFrequency()I

    move-result v6

    .line 1596
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1598
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_13b

    .line 1599
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    .line 1600
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object v5

    .line 1599
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 1602
    :cond_13b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 1603
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiLinkInfoCollector()Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkInfoCollector;->dongleRoamEvent()V

    goto :goto_189

    .line 1562
    :sswitch_152
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyL3Connected(Ljava/lang/String;)V

    .line 1563
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v2, 0x12c

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    .line 1564
    invoke-static {v3, v1, v4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDhcpResult(Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v3

    .line 1563
    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1567
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_189

    .line 1570
    :sswitch_180
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectingState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_189
    :goto_189
    move v0, v1

    :goto_18a
    if-ne v0, v1, :cond_191

    .line 1619
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$L2ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    :cond_191
    return v0

    :sswitch_data_192
    .sparse-switch
        0x20049 -> :sswitch_180
        0x2008a -> :sswitch_152
        0x24003 -> :sswitch_27
        0x2402d -> :sswitch_9
    .end sparse-switch
.end method
