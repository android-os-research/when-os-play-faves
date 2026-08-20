.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;
.super Lcom/android/internal/util/State;
.source "SilentRoamingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
    .registers 2

    .line 1201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private calculateCandidateNetworkScore([Landroid/net/wifi/ScanResult;)V
    .registers 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1432
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 1433
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1434
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1436
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    .line 1437
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v15, 0x0

    invoke-static {v3, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    const-string v3, "SilentRoamingManager"

    if-nez v2, :cond_3f

    const-string v0, "calculateCandidateNetworkScore: current getconfig error"

    .line 1440
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1443
    :cond_3f
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_422

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_55

    goto/16 :goto_422

    .line 1447
    :cond_55
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    move-result-object v5

    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V

    .line 1448
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v4

    if-nez v4, :cond_76

    const-string v0, "mCapabilities is null"

    .line 1449
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1454
    :cond_76
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    const-string v14, ", PnoCandidate Network size = "

    if-eqz v3, :cond_149

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_149

    .line 1456
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iput v4, v3, Landroid/net/wifi/ScanResult;->level:I

    .line 1457
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget-object v5, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1458
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1459
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v8

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v4

    iget v9, v4, Landroid/net/wifi/ScanResult;->channelWidth:I

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1461
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mcalculateLastSelectionWeight(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)D

    move-result-wide v10

    const/4 v12, 0x1

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    iget-object v15, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v15

    .line 1464
    invoke-static {v4, v2, v6, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misEverMetered(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    move-result v15

    .line 1465
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$smisFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v17

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v6

    iget-object v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    move-result-object v13

    .line 1466
    invoke-virtual {v4, v6, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    move-result v18

    move-object v4, v3

    move-object v6, v2

    const/4 v13, 0x1

    move-object/from16 v19, v14

    move v14, v15

    move/from16 v15, v17

    move/from16 v16, v18

    invoke-direct/range {v4 .. v16}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZI)V

    .line 1467
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1468
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mhasInternetAccess(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    move-result-wide v4

    .line 1467
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 1469
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateCandidateNetworkScore: current candidate (from ScanResult) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v19

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v6

    .line 1470
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1469
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto/16 :goto_1d5

    :cond_149
    move-object v15, v14

    .line 1473
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1474
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v7

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1475
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v8

    const/4 v9, 0x0

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1477
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mcalculateLastSelectionWeight(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)D

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1480
    invoke-static {v2, v4}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    move-result v14

    .line 1481
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$smisFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v16

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1482
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMaxSupportedRxLinkSpeedMbps()I

    move-result v17

    move-object v4, v3

    move-object v6, v2

    move-object/from16 v20, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v4 .. v16}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZI)V

    .line 1483
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    move-result-object v4

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1484
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mhasInternetAccess(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    move-result-wide v4

    .line 1483
    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 1485
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateCandidateNetworkScore: current candidate (from WifiInfo) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v6

    .line 1486
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1485
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1489
    :goto_1d5
    array-length v4, v1

    const/4 v15, 0x0

    :goto_1d7
    if-ge v15, v4, :cond_283

    aget-object v5, v1, v15

    .line 1490
    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoWificonfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1e5
    :goto_1e5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_27f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 1491
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget v9, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v8, v9, :cond_1f8

    goto :goto_1e5

    .line 1494
    :cond_1f8
    iget-object v8, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v8}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1e5

    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1495
    invoke-static {v8, v7, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misSecurityMatch(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    move-result v8

    if-eqz v8, :cond_1e5

    .line 1496
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    iget-object v8, v5, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget v9, v5, Landroid/net/wifi/ScanResult;->level:I

    iget v10, v5, Landroid/net/wifi/ScanResult;->frequency:I

    iget v11, v5, Landroid/net/wifi/ScanResult;->channelWidth:I

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget-object v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v13

    .line 1503
    invoke-static {v12, v7, v13, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misEverMetered(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    move-result v30

    .line 1504
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$smisFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v31

    iget-object v12, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    move-result-object v13

    .line 1505
    invoke-virtual {v12, v13, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    move-result v32

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move-object/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move/from16 v25, v11

    invoke-direct/range {v20 .. v32}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZI)V

    .line 1506
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    move-result-object v5

    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 1507
    invoke-static {v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mhasInternetAccess(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    move-result-wide v7

    .line 1506
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 1508
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1509
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1d7

    :cond_283
    const/4 v1, 0x0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 1521
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_294
    :goto_294
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2ab

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 1522
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    move-result-wide v7

    cmpl-double v9, v7, v4

    if-lez v9, :cond_294

    move-object v1, v6

    move-wide v4, v7

    goto :goto_294

    .line 1529
    :cond_2ab
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calculateCandidateNetworkScore: currentWifiCandidate.score="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", bestCandidateScore="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1529
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    if-eqz v1, :cond_2f1

    .line 1534
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    move-result-wide v6

    cmpg-double v2, v6, v4

    if-gez v2, :cond_2f1

    .line 1536
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2, v3, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$moverrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    move-result-object v1

    .line 1538
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto :goto_2f7

    .line 1540
    :cond_2f1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 1542
    :goto_2f7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsNetworkSelectionNeeded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1545
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_418

    if-eqz v1, :cond_418

    .line 1546
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result v2

    .line 1547
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current_freq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", choice: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1550
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_35f

    .line 1551
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1554
    :cond_35f
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v4, :cond_37b

    .line 1555
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1557
    :cond_37b
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    move-result v1

    .line 1559
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1560
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1561
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v1

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 1563
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    move-object v3, v2

    :cond_3b2
    :goto_3b2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    .line 1564
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b2

    .line 1565
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v5

    iget v6, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v4, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3b2

    .line 1569
    :cond_3f6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_421

    .line 1570
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding extra channels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "for possible roaming."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto :goto_421

    .line 1573
    :cond_418
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_421
    :goto_421
    return-void

    :cond_422
    :goto_422
    const-string v0, "calculateCandidateNetworkScore: PnoCandidate network is empty"

    .line 1444
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 5

    .line 1205
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    const-string v0, "SilentRoamingManager"

    const-string v1, "Retry getInterfaceName "

    .line 1206
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 1208
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1209
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void

    .line 1213
    :cond_27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 1214
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1215
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 1217
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_58

    .line 1218
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v1, "Connected back again to the original network."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1219
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    goto :goto_7d

    .line 1220
    :cond_58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v0

    if-eq v0, v2, :cond_7d

    .line 1221
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v1, "Connected to a new target network. Check Internet validity in 10 seconds."

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1223
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v1, 0x10

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1224
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1226
    :cond_76
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(IJ)V

    :cond_7d
    :goto_7d
    return-void
.end method

.method public exit()V
    .registers 3

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v1, 0x10

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$300(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$400(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1236
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v0, 0xe

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$500(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1242
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 1243
    :cond_11
    iget v2, v1, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x1388

    const-string v5, ", rssi="

    const-string v6, ") freq= "

    const-string v7, " ("

    const-string v8, "Start Connecting Watchdog "

    const/4 v9, -0x1

    const/4 v10, 0x5

    const-string v11, "Received "

    const-string v12, "SilentRoamingManager"

    const/4 v13, 0x3

    const/4 v14, 0x0

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_4ac

    :pswitch_29
    return v14

    .line 1405
    :pswitch_2a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misInternetConnectionValidated(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1406
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "Internet connectivity is VALID on new target network."

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1407
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    goto/16 :goto_4ab

    .line 1409
    :cond_40
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "Internet connectivity is INVALID on new target network. Disable the network."

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1410
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 1412
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v1

    if-eqz v1, :cond_a9

    const/16 v2, 0xa

    .line 1414
    iput v2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 1415
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "sem_wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 1416
    invoke-virtual {v2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 1417
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 1418
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disable network - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1422
    :cond_a9
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    goto/16 :goto_4ab

    .line 1286
    :pswitch_b2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinGlobal()Z

    move-result v2

    if-nez v2, :cond_d4

    .line 1289
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "mIsAutoJoinGlobal is false, stop pno scan"

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1290
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1291
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return v15

    .line 1295
    :cond_d4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/wifi/ScanResult;

    .line 1296
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 1297
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pno scan results"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1298
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_147

    .line 1299
    array-length v2, v1

    :goto_108
    if-ge v14, v2, :cond_147

    aget-object v3, v1, v14

    .line 1300
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pno result: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v8

    iget-object v11, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v8, v11}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_108

    .line 1304
    :cond_147
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-eqz v2, :cond_188

    .line 1305
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v4, v2, v4

    if-gez v4, :cond_188

    .line 1309
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Too short since last pno network found: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ms. Skip silent roaming."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto/16 :goto_4ab

    .line 1314
    :cond_188
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 1315
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_271

    .line 1316
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateLinkLayerStateForCurrentNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1317
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    if-ne v2, v9, :cond_1b7

    const-string v0, "network is connected but wifi info is invalid"

    .line 1318
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4ab

    .line 1320
    :cond_1b7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->hasActiveStream()Z

    move-result v2

    .line 1321
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current network hasActiveStream= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " (hasInternetAccess/InternetAccessExpected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1322
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mhasInternetAccess(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 1323
    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    move-result v5

    xor-int/2addr v5, v15

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1321
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    if-nez v2, :cond_268

    .line 1325
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->calculateCandidateNetworkScore([Landroid/net/wifi/ScanResult;)V

    .line 1326
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    if-eqz v1, :cond_22d

    .line 1327
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 1328
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1329
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1331
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    return v15

    .line 1334
    :cond_22d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "current network is connected but candidate network no selected"

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1335
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v2

    add-int/2addr v2, v15

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1336
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v1

    if-le v1, v10, :cond_25c

    .line 1337
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "Connecting watchdog count over threshold, stop pno scan"

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1338
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1339
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    return v15

    .line 1342
    :cond_25c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1343
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    goto/16 :goto_4ab

    .line 1345
    :cond_268
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v1, "current network is connected but has active stream or no internet"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto/16 :goto_4ab

    .line 1349
    :cond_271
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v1, "Enabled state but current network is not connected"

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    goto/16 :goto_4ab

    .line 1399
    :pswitch_27a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "Received full scan failure"

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1400
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    if-eqz v1, :cond_4ab

    .line 1401
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto/16 :goto_4ab

    .line 1393
    :pswitch_290
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const-string v2, "Received partial scan failure"

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1394
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    if-eqz v1, :cond_4ab

    .line 1395
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0, v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    goto/16 :goto_4ab

    .line 1377
    :pswitch_2a6
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 1378
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full scan results. mAllowFrameworkRoaming is "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1380
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_315

    .line 1381
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v5

    add-int/2addr v5, v15

    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1382
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_2ff

    .line 1383
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_2ff
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z
    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$800(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    move-result v2

    if-eqz v2, :cond_30c

    .line 1386
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$900(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1388
    :cond_30c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v5, v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1390
    :cond_315
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_4ab

    .line 1355
    :pswitch_320
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 1356
    iget-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " partial scan results.  mAllowFrameworkRoaming is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v11}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1358
    iget-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v9

    if-eqz v9, :cond_391

    .line 1359
    array-length v9, v2

    :goto_350
    if-ge v14, v9, :cond_391

    aget-object v10, v2, v14

    .line 1360
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "partial result: "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v3

    iget-object v4, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v10, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    const-wide/16 v3, 0x1388

    goto :goto_350

    .line 1364
    :cond_391
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmAllowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_3db

    .line 1365
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v3

    add-int/2addr v3, v15

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1366
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v2

    if-eqz v2, :cond_3c3

    .line 1367
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    :cond_3c3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasMessages(I)Z
    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$600(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    move-result v2

    if-eqz v2, :cond_3d0

    .line 1370
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    # invokes: Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->removeMessages(I)V
    invoke-static {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$700(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1372
    :cond_3d0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v2, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1374
    :cond_3db
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    goto/16 :goto_4ab

    .line 1282
    :pswitch_3e6
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->queryAutojoinGlobal()V

    .line 1283
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/16 v2, 0xe

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_4ab

    .line 1276
    :pswitch_400
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v1

    if-eqz v1, :cond_4ab

    .line 1277
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1278
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_4ab

    .line 1267
    :pswitch_418
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_41d

    move v14, v15

    :cond_41d
    if-eqz v14, :cond_433

    .line 1269
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1270
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    goto/16 :goto_4ab

    .line 1272
    :cond_433
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    move-result v0

    if-eqz v0, :cond_4ab

    const-string v0, "Roaming connected "

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4ab

    .line 1259
    :pswitch_441
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_446

    move v14, v15

    :cond_446
    if-eqz v14, :cond_4ab

    .line 1261
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1262
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1263
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4ab

    .line 1245
    :pswitch_45d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting watchdog! , ConnectingWatchdogCount= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1246
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1, v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mallowFrameworkRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 1247
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    move-result v1

    if-le v1, v10, :cond_495

    .line 1248
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v1, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->sendMessage(I)V

    .line 1249
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_4ab

    .line 1252
    :cond_495
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1253
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1254
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 1256
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    add-int/2addr v1, v15

    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    :cond_4ab
    :goto_4ab
    :pswitch_4ab
    return v15

    :pswitch_data_4ac
    .packed-switch 0x3
        :pswitch_45d
        :pswitch_29
        :pswitch_441
        :pswitch_418
        :pswitch_400
        :pswitch_3e6
        :pswitch_320
        :pswitch_2a6
        :pswitch_290
        :pswitch_27a
        :pswitch_4ab
        :pswitch_b2
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method
