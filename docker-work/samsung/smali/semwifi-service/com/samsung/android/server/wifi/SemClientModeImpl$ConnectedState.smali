.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method public static synthetic $r8$lambda$-zyHmZSlebOvTblNWEN_fw7a6ss(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$XuUvdsk7EFK0NOst637j7qIg7Vo(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->lambda$exit$0()V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1710
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private checkAndUpdateHiddenNetwork()V
    .registers 4

    .line 1722
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 1723
    iget-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->isHiddenSsid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 1724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " network maybe hidden."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemClientModeImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 1725
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1726
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_49
    return-void
.end method

.method private synthetic lambda$exit$0()V
    .registers 1

    .line 1883
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApBroadcastReceiver()Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    move-result-object p0

    .line 1884
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->checkProvisioningAfterWifiDisconnected()V

    return-void
.end method

.method private updateBigDataApInfo()V
    .registers 4

    .line 1712
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1713
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    move-result-object v2

    .line 1715
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 1713
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    .line 1716
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p0

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->addOrUpdateValue(II)V

    :cond_2d
    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 1732
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 1733
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1734
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1735
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/server/wifi/ClientModeImplStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 1737
    :cond_36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v2

    .line 1738
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 1737
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->setManagedConfigKeys(Ljava/util/Set;)V

    .line 1739
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->checkAndUpdateHiddenNetwork()V

    .line 1740
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getNetworkType()Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;Lcom/samsung/android/server/wifi/diagnostics/NetworkType;)V

    .line 1741
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "entering ConnectedState networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1743
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v2, -0x1

    iput v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    const/4 v2, 0x0

    .line 1744
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1746
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result v0

    const/4 v2, 0x3

    if-eqz v0, :cond_ab

    .line 1747
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 1751
    :cond_ab
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->startTimerDuringConnection(Ljava/lang/String;)V

    .line 1754
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastNetworkType(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/diagnostics/NetworkType;

    move-result-object v3

    .line 1756
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    .line 1755
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForConnectTransition(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x2

    .line 1754
    invoke-static {v0, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1757
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->updateBigDataApInfo()V

    .line 1758
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    move-result v0

    if-eqz v0, :cond_107

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v4

    .line 1760
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableSsid()Ljava/lang/String;

    move-result-object v4

    .line 1759
    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 1761
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v2, "applyB2BPolicy - Apply"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1763
    :cond_107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->notifyWifiConnection(Ljava/lang/String;Z)V

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v4

    .line 1767
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getFrequency()I

    move-result v5

    .line 1766
    invoke-virtual {v0, v2, v1, v4, v5}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;I)V

    .line 1768
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_163

    .line 1769
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v4

    .line 1770
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    .line 1769
    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->wifiStateChangeEvent(Ljava/lang/String;ILjava/lang/String;)V

    .line 1773
    :cond_163
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1a8

    .line 1774
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 1775
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "entering ConnectedState, creatorName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    const-string v2, "com.google.android.projection.gearhead"

    .line 1776
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 1777
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v2, "L2Connected: Android Auto AP, set Roam Triagger to -95"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setNCHOModeEnabled(Z)Z

    .line 1779
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v0, -0x5f

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->setRoamTrigger(I)Z

    :cond_1a8
    return-void
.end method

.method public exit()V
    .registers 7

    .line 1881
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v1, "Leaving Connected state"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 1885
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->clearWiFiB2BPolicy(Ljava/lang/String;)V

    .line 1886
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_3e

    .line 1887
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 1891
    :cond_3e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 1893
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v1, 0x1

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v3

    .line 1896
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    .line 1897
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    move-result v5

    if-eqz v5, :cond_7b

    .line 1898
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v5

    goto :goto_81

    .line 1899
    :cond_7b
    sget-object v5, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v5}, Landroid/net/IpConfiguration$IpAssignment;->ordinal()I

    move-result v5

    .line 1894
    :goto_81
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDisconnectTransition(Ljava/lang/String;ZII)Landroid/os/Bundle;

    move-result-object v2

    .line 1893
    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1900
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getOpBranding()Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    move-result-object v1

    if-ne v0, v1, :cond_a5

    .line 1901
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showDisconnectToast(Landroid/content/Context;)V

    .line 1903
    :cond_a5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->isConnected:Z

    .line 1904
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1905
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    move-result-object v0

    if-eqz v0, :cond_da

    .line 1906
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ClientModeImplStateListener;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/samsung/android/server/wifi/ClientModeImplStateListener;->onNetworkStateChanged(Ljava/lang/String;Lcom/samsung/android/server/wifi/WifiConnectionInfo;)V

    .line 1908
    :cond_da
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->notifyWifiConnection(Ljava/lang/String;Z)V

    .line 1910
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->wifiStateChangeEvent(Ljava/lang/String;I)V

    .line 1911
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_110

    .line 1912
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->wifiStateChangeEvent(Ljava/lang/String;I)V

    :cond_110
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1788
    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_1d6

    packed-switch v2, :pswitch_data_1ec

    goto/16 :goto_1cd

    :pswitch_10
    const-string v2, "SemClientModeImpl"

    const-string v3, "Leaky AP detected"

    .line 1865
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1cc

    .line 1860
    :pswitch_19
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiScheduledPmControl()Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiScheduledPmControl;->onScheduledPmTorndown(Ljava/lang/String;I)V

    goto/16 :goto_1cc

    .line 1856
    :pswitch_30
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onChannelSwitchCompleted(Ljava/lang/String;I)V

    goto/16 :goto_1cc

    .line 1852
    :pswitch_47
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    int-to-byte v5, v5

    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onTwtNotificationForReady(Ljava/lang/String;B)V

    goto/16 :goto_1cc

    .line 1848
    :pswitch_5f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v5, v1, Landroid/os/Message;->arg1:I

    int-to-byte v5, v5

    iget v6, v1, Landroid/os/Message;->arg2:I

    int-to-byte v6, v6

    invoke-virtual {v2, v3, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onTwtTorndown(Ljava/lang/String;BB)V

    goto/16 :goto_1cc

    .line 1833
    :pswitch_7a
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    const-string v3, "setup_id"

    .line 1834
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v7

    const-string v3, "status"

    .line 1835
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v8

    const-string v3, "reason"

    .line 1836
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v9

    const-string v3, "negotiation_type"

    .line 1837
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v10

    const-string v3, "flow_type"

    .line 1838
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v11

    const-string v3, "triggered"

    .line 1839
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v12

    const-string v3, "target_wake_time"

    .line 1840
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    const-string v3, "wake_duration"

    .line 1841
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    const-string v3, "wake_interval"

    .line 1842
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 1843
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiTwtControl()Lcom/samsung/android/server/wifi/SemWifiTwtControl;

    move-result-object v5

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v5 .. v16}, Lcom/samsung/android/server/wifi/SemWifiTwtControl;->onNegotiationCompleted(Ljava/lang/String;BBBBBBJII)V

    goto/16 :goto_1cc

    .line 1790
    :sswitch_c9
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getWifiInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 1791
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyRoaming(Ljava/lang/String;)V

    if-eqz v2, :cond_1cd

    .line 1793
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v6, 0x3

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v7

    .line 1797
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    .line 1798
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    const-string v10, "dongle"

    .line 1794
    invoke-static {v7, v10, v8, v9, v2}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForRoamingEnter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 1793
    invoke-static {v5, v6, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    goto/16 :goto_1cd

    .line 1803
    :sswitch_102
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 1804
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_DISCONNECTION_EVENT in connected state reason="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_1cd

    .line 1813
    :sswitch_124
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    .line 1814
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1815
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    move-result v3

    if-eqz v3, :cond_192

    .line 1816
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    if-eq v3, v2, :cond_177

    .line 1817
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "primary network changed, update networkId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$300(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1820
    :cond_177
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1821
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1820
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1823
    :cond_192
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->updateBigDataApInfo()V

    goto :goto_1cc

    .line 1810
    :sswitch_196
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v3, -0x5

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmMessageHandlingStatus(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    goto :goto_1cc

    .line 1826
    :sswitch_19d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    move-result v2

    if-eqz v2, :cond_1cc

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiB2BPolicyManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    .line 1828
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableSsid()Ljava/lang/String;

    move-result-object v5

    .line 1827
    invoke-virtual {v2, v3, v5}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->applyWiFiB2BPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1cc

    .line 1829
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "applyB2BPolicy - Updated"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_1cc
    :goto_1cc
    move v3, v4

    :cond_1cd
    :goto_1cd
    if-ne v3, v4, :cond_1d4

    .line 1873
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    :cond_1d4
    return v3

    nop

    :sswitch_data_1d6
    .sparse-switch
        0x2006c -> :sswitch_19d
        0x2008a -> :sswitch_196
        0x2008d -> :sswitch_124
        0x24004 -> :sswitch_102
        0x2402d -> :sswitch_c9
    .end sparse-switch

    :pswitch_data_1ec
    .packed-switch 0x2406d
        :pswitch_7a
        :pswitch_5f
        :pswitch_47
        :pswitch_30
        :pswitch_19
        :pswitch_10
    .end packed-switch
.end method
