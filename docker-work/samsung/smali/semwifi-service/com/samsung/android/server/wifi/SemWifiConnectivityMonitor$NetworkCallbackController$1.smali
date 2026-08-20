.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->registerConnectionNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;


# direct methods
.method public static synthetic $r8$lambda$8X9qVVFfPx5B3_kAIBvKs3wWC3w(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->lambda$onLost$3(Landroid/net/Network;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WRJOpr_hz8-wst0vnCv-VE-j_-o(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->lambda$onCapabilitiesChanged$1(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lyrUah8RDHfjB8nIN2uSQ2m77z0(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->lambda$onAvailable$0(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static synthetic $r8$lambda$z0dehjdyzKWT6t46l6S2JLvTU6I(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/LinkProperties;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->lambda$onLinkPropertiesChanged$2(Landroid/net/LinkProperties;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V
    .registers 2

    .line 4951
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailable$0(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 5

    .line 4962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sNetworkCallback (oA): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.NCC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4963
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$mrestoreNetworkMonitorSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V

    .line 4964
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x2112e

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private synthetic lambda$onCapabilitiesChanged$1(ZZ)V
    .registers 6

    .line 4988
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 4989
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const v1, 0x21130

    if-nez v0, :cond_1d

    .line 4990
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_da

    .line 4991
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 4992
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p2, 0x2102b

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(II)V

    goto/16 :goto_da

    :cond_33
    if-nez p2, :cond_78

    if-eqz p1, :cond_38

    goto :goto_78

    .line 5012
    :cond_38
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    move-result p1

    if-eqz p1, :cond_da

    .line 5013
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p2, 0x21131

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 5014
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_59

    .line 5016
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->updateLinkInfoCollectorBigdata()V

    .line 5018
    :cond_59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    if-eqz p1, :cond_da

    .line 5019
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnQcResult(IZ)V

    goto :goto_da

    .line 4995
    :cond_78
    :goto_78
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v2, 0x2112c

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    if-eqz p2, :cond_8f

    .line 4997
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x2112f

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_da

    :cond_8f
    if-eqz p1, :cond_da

    .line 4999
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    .line 5000
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    if-eqz p1, :cond_b6

    .line 5001
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnQcResult(IZ)V

    .line 5003
    :cond_b6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$fgetmHasCaptivePortalCapa(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)Z

    move-result p1

    if-eqz p1, :cond_da

    .line 5004
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p1

    .line 5005
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-eqz p1, :cond_da

    .line 5007
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 p2, 0x5

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    :cond_da
    :goto_da
    return-void
.end method

.method private synthetic lambda$onLinkPropertiesChanged$2(Landroid/net/LinkProperties;)V
    .registers 4

    .line 5029
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21136

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onLost$3(Landroid/net/Network;)V
    .registers 4

    .line 5036
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x2112d

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 5

    .line 4955
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_27

    const/4 v1, 0x6

    .line 4956
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_27

    .line 4961
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 4957
    :cond_27
    :goto_27
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "sNetworkCallback(oA) ignore this network."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_36

    const-string p1, "true/false"

    goto :goto_38

    :cond_36
    const-string p1, "false/true"

    .line 4958
    :goto_38
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiConnectivityMonitor.NCC"

    .line 4957
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7

    const/16 v0, 0x10

    .line 4971
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/16 v1, 0x11

    .line 4972
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    .line 4973
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$fgetmHasCaptivePortalCapa(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)Z

    move-result v3

    or-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$fputmHasCaptivePortalCapa(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;Z)V

    .line 4974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sNetworkCallback(oCC) FULL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4975
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v3, v3, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v3

    .line 4976
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "WifiConnectivityMonitor.NCC"

    .line 4974
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_70

    if-nez v1, :cond_70

    .line 4978
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_70

    const-string p0, "Network replacement is in progress. Waiting for STOP_BLINKING_ICON or validated"

    .line 4979
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_70
    if-eqz v0, :cond_9a

    .line 4983
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object p2

    if-eqz p2, :cond_9a

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Network;->hashCode()I

    move-result p2

    invoke-virtual {p1}, Landroid/net/Network;->hashCode()I

    move-result p1

    if-ne p2, p1, :cond_9a

    .line 4984
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkReplacementInProgress(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4987
    :cond_9a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;ZZ)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .registers 4

    .line 5029
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/LinkProperties;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 4

    .line 5035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sNetworkCallback(oL) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor.NCC"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5036
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
