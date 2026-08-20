.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 3903
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 3906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " enter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiConnectivityMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3907
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZ)V

    .line 3908
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZ)V

    .line 3910
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 3911
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentSemWifiConfiguration(Z)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v0

    .line 3912
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    if-eqz v0, :cond_72

    if-eqz v3, :cond_72

    .line 3913
    iget-boolean v4, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    const/4 v5, 0x5

    if-eqz v4, :cond_58

    iget v4, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eq v4, v5, :cond_72

    .line 3915
    :cond_58
    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 3916
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "sem_wifi"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    .line 3917
    invoke-virtual {v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 3918
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-static {v0, v1, v5, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 3921
    :cond_72
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidNoInternet(Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
