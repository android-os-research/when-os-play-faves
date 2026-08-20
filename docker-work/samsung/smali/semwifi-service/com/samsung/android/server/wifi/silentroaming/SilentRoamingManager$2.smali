.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;
.super Ljava/lang/Object;
.source "SilentRoamingManager.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 435
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .registers 1

    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .registers 10

    .line 438
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    if-ne v0, v1, :cond_27

    .line 439
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 441
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 442
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    :cond_26
    return-void

    .line 446
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/NetworkInfo$State;)V

    .line 449
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    const-string v1, ", mConnectingWatchdogCount= "

    const-string v2, "<none>"

    const/4 v3, -0x1

    if-ne p1, v0, :cond_d6

    .line 450
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 452
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-eq v0, v3, :cond_cf

    .line 453
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_cf

    .line 455
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 456
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_69

    goto :goto_77

    .line 457
    :cond_69
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    :goto_77
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 459
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Network connected : networkId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", configKey= "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", BSSID= "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frequency= "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenOn= "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 459
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 464
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x1

    invoke-static {p1, v0, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V

    .line 467
    :cond_cf
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    goto/16 :goto_1c6

    .line 468
    :cond_d6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    const-string v4, ", mScreenOn="

    if-ne p1, v0, :cond_17a

    .line 469
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    .line 471
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v0

    if-eq v0, v3, :cond_174

    .line 472
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_174

    .line 474
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 475
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v5

    if-eq v3, v5, :cond_116

    const-string v3, " "

    goto :goto_118

    :cond_116
    const-string v3, " roaming to "

    .line 477
    :goto_118
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11f

    goto :goto_12d

    .line 478
    :cond_11f
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 479
    :goto_12d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Network connecting : networkId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", config="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "BSSID= "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 487
    :cond_174
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    goto :goto_1c6

    .line 488
    :cond_17a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_1c6

    .line 489
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network disconnected : networkId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 492
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 493
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$2;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    :cond_1c6
    :goto_1c6
    return-void
.end method
