.class Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;
.super Lcom/android/internal/util/State;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ObtainingIpState"
.end annotation


# instance fields
.field private connectivityManager:Landroid/net/ConnectivityManager;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 1631
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private checkAndGetConnectivityManager()V
    .registers 3

    .line 1644
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_14

    .line 1645
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 1646
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    :cond_14
    return-void
.end method

.method private isL3ConnectedForEphemeralNetwork()Z
    .registers 8

    .line 1651
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->checkAndGetConnectivityManager()V

    .line 1652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_30

    aget-object v4, v0, v3

    .line 1653
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1654
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    .line 1655
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 1656
    invoke-virtual {v4}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result p0

    return p0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_30
    return v2
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1636
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v1, "entering ObtainingIpState"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1638
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const v0, 0x2008c

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessageDelayed(IJ)V

    :cond_25
    return-void
.end method

.method public exit()V
    .registers 2

    .line 1706
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-string v0, "Leaving ObtainingIp state"

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 11

    .line 1666
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const v2, 0x2008c

    const/4 v3, 0x1

    if-eq v0, v2, :cond_94

    const v2, 0x24004

    if-eq v0, v2, :cond_10

    goto/16 :goto_ac

    .line 1676
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmObtainingIpState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v2

    if-ne v0, v2, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1678
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isEnterprise()Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1679
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-nez v0, :cond_8e

    .line 1680
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->setDisableReason(Ljava/lang/String;I)V

    .line 1682
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v2, 0x4e20

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v5, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$msendNetworkConnectionFailEventToSettings(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILjava/lang/String;I)V

    .line 1684
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/16 v2, 0x12c

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    iget v6, v5, Lcom/samsung/android/server/wifi/SemClientModeImpl;->mTargetNetworkId:I

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/samsung/android/server/wifi/util/ScanPool;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetBssid(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Ljava/lang/String;

    move-result-object v8

    .line 1686
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/util/ScanPool;->getFrequency(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmTargetWifiConfiguration(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 1685
    invoke-static {v4, v6, v5, v7, v8}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForDhcpFailure(Ljava/lang/String;ILjava/lang/String;ILandroid/net/wifi/WifiConfiguration;)Landroid/os/Bundle;

    move-result-object v4

    .line 1684
    invoke-static {v0, v2, v4}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemClientModeImpl;ILandroid/os/Bundle;)V

    .line 1689
    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mretryConnectionForB2bNetwork(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    goto :goto_ac

    .line 1668
    :cond_94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->isL3ConnectedForEphemeralNetwork()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 1669
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/SemClientModeImpl;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_ab

    .line 1671
    :cond_a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v2, v4, v5}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->sendMessageDelayed(IJ)V

    :goto_ab
    move v1, v3

    :goto_ac
    if-ne v1, v3, :cond_b3

    .line 1698
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ObtainingIpState;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0, p1, p0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/SemClientModeImpl;Landroid/os/Message;Lcom/android/internal/util/State;)V

    :cond_b3
    return v1
.end method
