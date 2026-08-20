.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectModeState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

.field private final wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;


# direct methods
.method public static synthetic $r8$lambda$0eGXEulfiIAXoCndARAGWiks_9g(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$new$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$CxqGfWq8YNtaJPylpmpLStE8U_U(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$processMessage$1(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EYMJCYjog0SLqOI9mZZP5fqyxss(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->lambda$processMessage$2(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1106
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 1143
    new-instance p1, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;)V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    return-void
.end method

.method private synthetic lambda$new$0(Z)V
    .registers 3

    .line 1145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const v0, 0x2006f

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessage(II)V

    return-void
.end method

.method private static synthetic lambda$processMessage$1(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V
    .registers 2

    .line 1468
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$processMessage$2(Ljava/util/List;Landroid/net/wifi/WifiConfiguration;)Z
    .registers 3

    .line 1475
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    iget-boolean p0, p1, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1111
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v2, "Failed to remove networks on entering connect mode"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 1113
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 1114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->registerListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    move-result-object v3

    .line 1116
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->isWifiSafeModeEnabled()Z

    move-result v3

    .line 1115
    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWsecInfo(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1117
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v2, "Failed to set safe Wi-Fi mode"

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 1120
    :cond_59
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->setupWifiCond(Ljava/lang/String;)V

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->start(Ljava/lang/String;)V

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->registerScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$menableB2bNetworks(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result v0

    if-eqz v0, :cond_af

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->setInterfaceName(Ljava/lang/String;)V

    .line 1127
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 1131
    :cond_af
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 1134
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmStrongRssiRoaming(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/strongrssiroaming/SemStrongRssiRoaming;->wifiStateChangeEvent(Ljava/lang/String;I)V

    .line 1138
    :cond_cf
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiDriverCommandHelper()Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;

    move-result-object p0

    .line 1140
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/driver/WifiDriverNativeCommandHelper;->updateWifiVersions()Z

    return-void
.end method

.method public exit()V
    .registers 3

    .line 1527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmOperationalMode(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    .line 1528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->stop(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->removeAllNetworks(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 1530
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v1, "Failed to remove networks on exiting connect mode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    .line 1532
    :cond_2e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1533
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiSafeModeObserver(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->wifiSafeModeListener:Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver;->unregisterListener(Lcom/samsung/android/server/wifi/util/WifiSafeModeObserver$Listener;)V

    .line 1535
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isMBOSupported()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5b

    .line 1536
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmCellularStateManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemCellularStateManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemCellularStateManager;->handleWifiStateChanged(I)V

    .line 1539
    :cond_5b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiCoexManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiCoexManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiCoexManager;->handleWifiStateChanged(I)V

    .line 1540
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->tearDown()V

    .line 1541
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanResultUpdatedListener(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/util/ScanPool;->unregisterScanResultUpdatedListener(Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    .line 1542
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->disableTracking()V

    .line 1543
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "Leaving ConnectMode state"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1154
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    const/4 v4, 0x3

    const-string v5, "any"

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    sparse-switch v2, :sswitch_data_870

    goto/16 :goto_867

    .line 1507
    :sswitch_15
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1508
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmRoamingAssistant(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemRoamingAssistant;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemRoamingAssistant;->onDriverEventReceived(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_866

    .line 1503
    :sswitch_2a
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1504
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->beaconAbort(Ljava/lang/String;I)V

    goto/16 :goto_866

    .line 1499
    :sswitch_3d
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 1500
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->beaconInterval(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_866

    .line 1423
    :sswitch_52
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    if-eqz v2, :cond_61

    .line 1424
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "ConnectModeState: Network added, clear targetNetworkId "

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1427
    :cond_61
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iput v8, v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1428
    invoke-static {v2, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1429
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_866

    .line 1430
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->disableTracking()V

    goto/16 :goto_866

    .line 1493
    :sswitch_7f
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1494
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_866

    .line 1495
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_NOT_FOUND_EVENT ssid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    goto/16 :goto_866

    .line 1333
    :sswitch_a1
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_866

    .line 1334
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1335
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1336
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_866

    .line 1342
    :sswitch_cc
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_da

    .line 1344
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iput-object v2, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1346
    :cond_da
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyAssociated(Ljava/lang/String;)V

    goto/16 :goto_867

    .line 1164
    :sswitch_eb
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1165
    iget v3, v1, Landroid/os/Message;->arg1:I

    if-lez v3, :cond_f5

    move v3, v10

    goto :goto_f6

    :cond_f5
    move v3, v9

    .line 1166
    :goto_f6
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 1167
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Association Rejection event: bssid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " reason code="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " timedOut="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "SemClientModeImpl"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_143

    .line 1169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_131

    goto :goto_143

    .line 1172
    :cond_131
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 1176
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    goto :goto_149

    .line 1171
    :cond_143
    :goto_143
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    .line 1178
    :cond_149
    :goto_149
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-nez v3, :cond_169

    .line 1179
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1180
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1183
    :cond_169
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_1f2

    .line 1184
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 1185
    invoke-static {v7}, Lcom/samsung/android/server/wifi/util/WifiUtils;->maybeWrongPassword(I)Z

    move-result v3

    if-eqz v3, :cond_1c9

    .line 1186
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v5, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 1188
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v5, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v3, v6, v2, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILjava/lang/String;I)V

    move v9, v10

    .line 1193
    :cond_1a3
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    .line 1194
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "association rejected SAE network : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v8, v8, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    :cond_1c9
    if-eqz v9, :cond_1df

    .line 1198
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    goto :goto_1f2

    .line 1201
    :cond_1df
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    :cond_1f2
    :goto_1f2
    if-nez v9, :cond_1fd

    .line 1206
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    add-int/lit16 v4, v7, 0x2710

    iget v5, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v3, v4, v2, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILjava/lang/String;I)V

    .line 1210
    :cond_1fd
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v4, 0xe

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-static {v5, v2, v7, v6}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForAssocReject(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    goto/16 :goto_866

    .line 1214
    :sswitch_214
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1215
    iget v7, v1, Landroid/os/Message;->arg1:I

    .line 1216
    iget v8, v1, Landroid/os/Message;->arg2:I

    .line 1217
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v9

    if-eqz v9, :cond_242

    .line 1218
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AUTHENTICATION_FAILURE_EVENT: reasonCode= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", errorCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_242
    const v9, 0x13953

    if-ne v8, v9, :cond_298

    .line 1222
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_298

    .line 1223
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v8

    if-nez v8, :cond_264

    .line 1224
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "errorCode is 80211 but targetWifiConfig is not EAP."

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_866

    .line 1227
    :cond_264
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 1228
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_298

    .line 1229
    iget v9, v8, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eqz v9, :cond_298

    .line 1232
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode is 80211 but targetWifiConfig is already disabled with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    goto/16 :goto_866

    :cond_298
    if-nez v7, :cond_2af

    .line 1238
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v8

    if-eqz v8, :cond_2af

    .line 1239
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->clearPendingNotification()V

    .line 1241
    :cond_2af
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    if-eqz v8, :cond_301

    .line 1242
    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misEapMethodServerCertUsed(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v8

    if-eqz v8, :cond_2ee

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-boolean v9, v8, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mIsAuthFailedWithTlsCertFail:Z

    if-eqz v9, :cond_2ee

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v9

    .line 1244
    invoke-static {v8, v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z

    move-result v8

    if-nez v8, :cond_2ee

    .line 1245
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v8, "set DISABLED_AUTHENTICATION_CA_CERTIFICATION_ERROR"

    invoke-virtual {v6, v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1246
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v6

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    goto :goto_301

    .line 1250
    :cond_2ee
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 1254
    :cond_301
    :goto_301
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_325

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_325

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    .line 1255
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_325

    .line 1256
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v2

    :cond_325
    if-ne v7, v4, :cond_37b

    .line 1258
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1259
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mshouldSuggestEapTofu(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v3

    if-eqz v3, :cond_37b

    .line 1260
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misTlsDomainMismatch(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)Z

    move-result v3

    if-eqz v3, :cond_33d

    const/4 v3, 0x5

    goto :goto_33e

    :cond_33d
    const/4 v3, 0x4

    :goto_33e
    move v7, v3

    .line 1265
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Switch reasonCode= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", because TLS cert error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReason(Lcom/samsung/android/server/wifi/SemClientModeImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTlsCertFailReasonString(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1267
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1269
    :cond_37b
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v4, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v3, v7, v2, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILjava/lang/String;I)V

    .line 1270
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v4, 0xf

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    invoke-static {v5, v2, v7, v6}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForAuthFail(Ljava/lang/String;Ljava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    goto/16 :goto_866

    .line 1274
    :sswitch_399
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleSupplicantStateChange(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v2

    .line 1275
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v4

    if-eqz v4, :cond_3bd

    .line 1276
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SUPPLICANT_STATE_CHANGE_EVENT: state= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1278
    :cond_3bd
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v5, v4, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    if-ne v5, v8, :cond_49f

    .line 1279
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v5

    if-eq v4, v5, :cond_49f

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1280
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$misSupplicantConnecting(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/SupplicantState;)Z

    move-result v4

    if-eqz v4, :cond_49f

    .line 1281
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;

    .line 1282
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget-object v6, v4, Lcom/samsung/android/server/wifi/halclient/SemStateChangeResult;->BSSID:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1283
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/util/ScanPool;->getConfigKeys(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3f6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_419

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1284
    iget-object v9, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_3f6

    .line 1286
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v9, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v9, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1287
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1291
    :cond_419
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v5

    if-eqz v5, :cond_459

    .line 1292
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SUPPLICANT_STATE_CHANGE_EVENT: target: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v11, v11, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " bssid: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " supplicantStateResult:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1297
    :cond_459
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v11

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v12

    .line 1301
    invoke-virtual {v2}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v13

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v14

    .line 1303
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v15

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v6

    .line 1304
    invoke-virtual {v5, v6}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    move-result v16

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v6, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move/from16 v17, v6

    .line 1298
    invoke-static/range {v11 .. v18}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForTryToConnect(Ljava/lang/String;Ljava/lang/String;IZIIILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v5

    .line 1297
    invoke-static {v4, v3, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1307
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mclearTlsCertErrorData(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1315
    :cond_49f
    sget-object v3, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_4cc

    .line 1316
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v3

    if-eqz v3, :cond_4b2

    .line 1317
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v4, "Missed CTRL-EVENT-DISCONNECTED, disconnect"

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1319
    :cond_4b2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1320
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iput v8, v3, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    .line 1321
    invoke-static {v3, v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/net/wifi/WifiConfiguration;)V

    .line 1323
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1324
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1327
    :cond_4cc
    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v2, v3, :cond_866

    .line 1328
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyL2Connected(Ljava/lang/String;)V

    goto/16 :goto_866

    .line 1394
    :sswitch_4e1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    if-eqz v2, :cond_4f0

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "ConnectModeState: Network connection lost "

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1395
    :cond_4f0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1396
    iget v2, v1, Landroid/os/Message;->arg2:I

    const/16 v3, 0x4d

    if-ne v2, v3, :cond_527

    .line 1398
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v4

    if-ne v3, v4, :cond_512

    .line 1399
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_518

    :cond_512
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    :goto_518
    if-eqz v3, :cond_527

    .line 1401
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v10}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 1405
    :cond_527
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v3, :cond_568

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v4

    if-eq v3, v4, :cond_568

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    .line 1406
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v4

    if-eq v3, v4, :cond_568

    .line 1407
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v4, 0xd

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v6

    iget v7, v1, Landroid/os/Message;->arg1:I

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 1408
    invoke-static {v5, v6, v7, v2, v8}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForL2ConnectFail(Ljava/lang/String;Ljava/lang/String;IILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v2

    .line 1407
    invoke-static {v3, v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1413
    :cond_568
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmSemMobileWipsFrameworkService(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/mobilewips/SemMobileWipsFrameworkService;->notifyDisconnect(Ljava/lang/String;)V

    .line 1414
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_866

    .line 1350
    :sswitch_582
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    if-eqz v2, :cond_591

    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "Network connection established"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1351
    :cond_591
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3, v10}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiInfo(Landroid/net/wifi/WifiInfo;)V

    .line 1352
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1353
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e2

    .line 1354
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLog(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "target bssid is different, prev. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getPrintableBssid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", new "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeImpl;->logw(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$000(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1357
    :cond_5e2
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->setCurrentBssid(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasNetworkIdInWifiInfo()Z

    move-result v3

    if-eqz v3, :cond_619

    .line 1359
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->wifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_62e

    .line 1361
    :cond_619
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mgetMatchedWifiConfig(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setWifiConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1363
    :goto_62e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->hasConfigKey()Z

    move-result v3

    if-eqz v3, :cond_66a

    .line 1364
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->clearDisableReason(I)V

    .line 1365
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    .line 1366
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getConfigKey()Ljava/lang/String;

    move-result-object v5

    .line 1365
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->setSemWifiConfig(Lcom/samsung/android/wifi/SemWifiConfiguration;)V

    .line 1368
    :cond_66a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v3

    if-eqz v3, :cond_6a0

    .line 1369
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ConnectMode: NETWORK_CONNECTION_EVENT, wifiInfo networkId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mLastSemWifiConfiguration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastSemConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    .line 1373
    :cond_6a0
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->getLastWifiConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 1374
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isBssidAllowNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_6b7

    .line 1375
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->checkAndUpdateAllowedBssidNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 1377
    :cond_6b7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iput-object v7, v2, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mLastRejectedSaeConfigKey:Ljava/lang/String;

    const/16 v3, 0xc

    .line 1378
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v5

    iget v5, v5, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->networkId:I

    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v7

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->bssid:Ljava/lang/String;

    .line 1381
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmLastInfo(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/WifiConnectionInfo;

    move-result-object v8

    iget-object v8, v8, Lcom/samsung/android/server/wifi/WifiConnectionInfo;->lastConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1379
    invoke-static {v4, v5, v6, v7, v8}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForL2Connected(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v4

    .line 1378
    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1383
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_866

    .line 1511
    :sswitch_6fd
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleAdvancedLogStateChanged(Lcom/samsung/android/server/wifi/SemClientModeImpl;I)V

    goto/16 :goto_866

    .line 1458
    :sswitch_706
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmIsPrimary(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_714

    goto/16 :goto_867

    .line 1462
    :cond_714
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->isConnected()Z

    move-result v2

    if-nez v2, :cond_77e

    .line 1463
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getLastScannedConfigKeys()Ljava/util/List;

    move-result-object v2

    .line 1464
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetworks()Ljava/util/List;

    move-result-object v3

    .line 1466
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->isSupported()Z

    move-result v4

    if-eqz v4, :cond_75a

    .line 1467
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1468
    new-instance v5, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda0;

    invoke-direct {v5, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1469
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1470
    invoke-interface {v5, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 1471
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNotificationController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->handleScanResults(Ljava/util/Set;)V

    .line 1473
    :cond_75a
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->isTracking()Z

    move-result v4

    if-eqz v4, :cond_77e

    .line 1474
    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda1;

    invoke-direct {v4, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda1;-><init>(Ljava/util/List;)V

    .line 1475
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_77e

    .line 1478
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmPickerDialogController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/ui/PickerDialogController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ui/PickerDialogController;->showPickerDialogIfNecessary()V

    .line 1482
    :cond_77e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->checkAndRecoveryNetwork()V

    goto/16 :goto_866

    .line 1420
    :sswitch_789
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setDtimInSuspendMode(Ljava/lang/String;I)Z

    goto/16 :goto_866

    .line 1417
    :sswitch_79c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->arg1:I

    if-ne v4, v10, :cond_7ad

    move v9, v10

    :cond_7ad
    invoke-virtual {v2, v3, v9}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setMaxDtimInSuspendMode(Ljava/lang/String;Z)Z

    goto/16 :goto_866

    .line 1446
    :sswitch_7b2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msetAdpsEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;Z)V

    goto/16 :goto_866

    .line 1159
    :sswitch_7c1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mhandleNetworkDisconnect(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 1161
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_866

    .line 1156
    :sswitch_7d1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "already started client mode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    goto/16 :goto_866

    .line 1449
    :sswitch_7da
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmFacade(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isSupported6Ghz()Z

    move-result v2

    if-eqz v2, :cond_867

    .line 1450
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_7ec

    move v2, v10

    goto :goto_7ed

    :cond_7ec
    move v2, v9

    .line 1451
    :goto_7ed
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNative(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->setWsecInfo(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_867

    .line 1452
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v3, "Failed to set safe Wi-Fi mode"

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->loge(Ljava/lang/String;)V

    goto :goto_867

    .line 1443
    :sswitch_807
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->update(Ljava/lang/String;)V

    goto :goto_866

    .line 1488
    :sswitch_817
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1489
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to connect network again. (b2b policy). networkId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeImpl;->logi(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->access$100(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/lang/String;)V

    .line 1490
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v2, v10}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->enableNetwork(IZ)Z

    goto :goto_866

    .line 1485
    :sswitch_839
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiNl80211Util(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/WifiNl80211Util;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/WifiNl80211Util;->disableRandomMac()V

    goto :goto_866

    .line 1434
    :sswitch_843
    iget v2, v1, Landroid/os/Message;->arg1:I

    if-ne v2, v10, :cond_848

    move v9, v10

    .line 1435
    :cond_848
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Z

    move-result v2

    if-eqz v2, :cond_866

    .line 1436
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetting EAP-SIM/AKA/AKA\' networks since SIM was changed. simPresent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->log(Ljava/lang/String;)V

    :cond_866
    :goto_866
    move v9, v10

    :cond_867
    :goto_867
    if-ne v9, v10, :cond_86e

    .line 1519
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    :cond_86e
    return v9

    nop

    :sswitch_data_870
    .sparse-switch
        0x20065 -> :sswitch_843
        0x2006a -> :sswitch_839
        0x2006b -> :sswitch_817
        0x2006d -> :sswitch_807
        0x2006e -> :sswitch_807
        0x2006f -> :sswitch_7da
        0x20070 -> :sswitch_807
        0x20088 -> :sswitch_7d1
        0x20089 -> :sswitch_7c1
        0x20137 -> :sswitch_7b2
        0x201f4 -> :sswitch_79c
        0x201f5 -> :sswitch_789
        0x201f6 -> :sswitch_706
        0x2020a -> :sswitch_6fd
        0x24003 -> :sswitch_582
        0x24004 -> :sswitch_4e1
        0x24006 -> :sswitch_399
        0x24007 -> :sswitch_214
        0x2402b -> :sswitch_eb
        0x2402d -> :sswitch_cc
        0x2402e -> :sswitch_a1
        0x2402f -> :sswitch_7f
        0x24052 -> :sswitch_52
        0x2406a -> :sswitch_3d
        0x2406b -> :sswitch_2a
        0x2406c -> :sswitch_15
    .end sparse-switch
.end method
