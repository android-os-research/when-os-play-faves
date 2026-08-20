.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;
.super Ljava/lang/Object;
.source "SemWifiConnectivityMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;


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

    .line 490
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needInternetCheck(II)V
    .registers 4

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 494
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    :cond_d
    return-void
.end method

.method public notifyActivityCheckPoll()V
    .registers 2

    .line 513
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setIsChinaNetwork(Z)V

    return-void
.end method

.method public notifyAnalyticsDisconnectReason(S)V
    .registers 2

    .line 518
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    return-void
.end method

.method public notifyDnsCheckResult(I)V
    .registers 5

    .line 500
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_14

    const/4 v2, 0x2

    if-ne p1, v2, :cond_d

    goto :goto_14

    .line 504
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    goto :goto_19

    .line 502
    :cond_14
    :goto_14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 506
    :goto_19
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    move-result p1

    if-eq v0, p1, :cond_29

    .line 507
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21006

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    :cond_29
    return-void
.end method

.method public notifyDnsResult(II)V
    .registers 4

    .line 523
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21141

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(III)V

    return-void
.end method

.method public notifyDnsResultType(II)V
    .registers 4

    .line 528
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const v0, 0x21142

    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(III)V

    return-void
.end method

.method public notifyThroughputUpdate(IJJJ)V
    .registers 11

    .line 533
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 534
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "rssi"

    .line 535
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "timeDelta"

    .line 536
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "diffTxBytes"

    .line 537
    invoke-virtual {v1, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "diffRxBytes"

    .line 538
    invoke-virtual {v1, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const p1, 0x21140

    .line 539
    iput p1, v0, Landroid/os/Message;->what:I

    .line 540
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 541
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$4;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    return-void
.end method
