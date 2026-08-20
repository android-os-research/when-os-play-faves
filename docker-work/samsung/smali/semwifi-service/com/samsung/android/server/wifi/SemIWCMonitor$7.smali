.class Lcom/samsung/android/server/wifi/SemIWCMonitor$7;
.super Ljava/lang/Object;
.source "SemIWCMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiConfigManager$NetworkRemovedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkRemoved(Landroid/net/wifi/WifiConfiguration;)V
    .registers 10

    if-eqz p1, :cond_147

    .line 527
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_147

    .line 528
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1, p1}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmRemovedConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiConfiguration;)V

    .line 529
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRemovedConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getProfileKey()Ljava/lang/String;

    move-result-object p1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v1, "CHANGE_REASON_REMOVED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", nid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRemovedConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ConfigKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 536
    :try_start_5b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgettimeStampConnected(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 537
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->removeConfigKey(Ljava/lang/String;)V

    .line 538
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_5b .. :try_end_72} :catchall_144

    .line 539
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msave_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 541
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getByConfigKey(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    if-eqz v0, :cond_106

    .line 542
    iget v3, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_106

    const-wide/16 v5, 0x4e20

    cmp-long v3, v1, v5

    if-gez v3, :cond_106

    .line 545
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v5, "Connection time is short"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms) the user may want to go back to previous networks: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v1

    .line 547
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getKeyList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 545
    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmRemoveUnwantedNetworkToGoBack(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 550
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_106

    .line 552
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getPreviousConnection(Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 554
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->getPreviousConnection(Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->bssid:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    const-string v0, "SemIWCMonitor"

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATED mLastConnBssWithoutRemove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 555
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_147

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentConfigKey(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_147

    .line 563
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x59d8

    cmp-long p1, v0, v2

    if-gez p1, :cond_147

    .line 564
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    .line 565
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$7;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto :goto_147

    :catchall_144
    move-exception p0

    .line 538
    :try_start_145
    monitor-exit v0
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw p0

    :cond_147
    :goto_147
    return-void
.end method

.method public onNetworkReset()V
    .registers 1

    return-void
.end method
