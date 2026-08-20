.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller$ISemWifiRssiBasePollerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 548
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyBaseTrafficDetected()V
    .registers 3

    .line 551
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    const-string v1, "WifiConnectivityMonitor"

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->isDnsCheckOnGoing()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3f

    .line 556
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_35

    const-string v0, "start WCM Poll."

    .line 557
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21051

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    return-void

    .line 561
    :cond_35
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->stop()V

    return-void

    :cond_3f
    :goto_3f
    const-string v0, "called startWcmPoll but already Ongoing"

    .line 552
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->stop()V

    return-void
.end method
