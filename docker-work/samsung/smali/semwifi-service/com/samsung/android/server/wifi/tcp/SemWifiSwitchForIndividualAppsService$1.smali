.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerWifiNetworkCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .registers 2

    .line 437
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 6

    .line 440
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiNetworkCallback onAvailable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;J)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 445
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSsid(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 447
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 448
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->setAccumulatedConnectionCount(I)V

    .line 449
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 452
    :cond_7e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmWifiNetwork(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/net/Network;)V

    .line 453
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .registers 7

    .line 473
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 474
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiNetworkCallback onCapabilitiesChanged - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 474
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/16 v0, 0x10

    .line 477
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_64

    .line 478
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "mWifiNetworkCallback onCapabilitiesChanged - NET_CAPABILITY_VALIDATED"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 480
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 481
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateDnsInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V

    .line 482
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    if-eqz v0, :cond_5f

    goto :goto_69

    :cond_5f
    const/4 v0, 0x3

    move v2, v0

    goto :goto_69

    :cond_62
    move v2, v3

    goto :goto_69

    .line 486
    :cond_64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 489
    :goto_69
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateMonitoringOperation(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 492
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWaitForQCResult(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 493
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const v1, 0x2120a

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendEmptyMessage(I)Z

    .line 496
    :cond_83
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 8

    .line 458
    invoke-static {}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mWifiNetworkCallback onLost - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWifiConnected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 460
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiConnectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v0, v2

    const v2, 0xea60

    div-int/2addr v0, v2

    .line 461
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v2

    if-eqz v2, :cond_61

    .line 462
    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->setAccumulatedConnectionTime(I)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->updateWifiApInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V

    .line 465
    :cond_61
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmIsWifiValidState(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmWifiNetwork(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/net/Network;)V

    .line 467
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$1;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateMonitoringOperation(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 468
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    return-void
.end method
