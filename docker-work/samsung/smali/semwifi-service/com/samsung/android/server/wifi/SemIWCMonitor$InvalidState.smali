.class Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InvalidState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 3316
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 7

    .line 3319
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "SemIWCMonitor"

    .line 3320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_48

    .line 3323
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "SemIWCMonitor"

    .line 3324
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentWifiInfo is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    :cond_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/16 v1, -0x53

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3329
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3330
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3332
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 3333
    :try_start_5d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    .line 3334
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_5d .. :try_end_69} :catchall_132

    .line 3336
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentConfigKey(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    .line 3337
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v1

    if-eqz v1, :cond_101

    if-eqz v0, :cond_101

    iget v0, v0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->connTriggeredBy:I

    if-ne v0, v2, :cond_101

    .line 3342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misVendorAp(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    .line 3343
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misSamsungSpecificAp(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)Z

    move-result v1

    .line 3344
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v3, "InvalidState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDisconnectToConnectNewNetwork: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDisconnectToConnectNewNetwork(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " vendor: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " samsung: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDisconnectToConnectNewNetwork(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v2

    if-nez v2, :cond_106

    if-nez v0, :cond_106

    if-nez v1, :cond_106

    .line 3349
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmConnectNetworkPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    .line 3350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mcheckAutojoinConfig(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 3351
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->cancelAlarmListener()V

    goto :goto_106

    .line 3353
    :cond_f7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto :goto_106

    .line 3357
    :cond_101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mdetectRewardEventAutoDisconnection(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 3360
    :cond_106
    :goto_106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3361
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_131

    const-string v0, "SemIWCMonitor"

    .line 3362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastInvalidEnterTimestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastInvalidEnterTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    return-void

    :catchall_132
    move-exception p0

    .line 3334
    :try_start_133
    monitor-exit v0
    :try_end_134
    .catchall {:try_start_133 .. :try_end_134} :catchall_132

    throw p0
.end method

.method public exit()V
    .registers 5

    .line 3367
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_20

    .line 3368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exit\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3370
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 3371
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastPoorLinkTimestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 9

    .line 3377
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x210cc

    if-eq v0, v1, :cond_9

    const/4 p0, 0x0

    return p0

    .line 3379
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    const-string p0, "SemIWCMonitor"

    const-string p1, "WifiInfo is null"

    .line 3380
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3383
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    .line 3386
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v2

    .line 3387
    :try_start_27
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v3

    add-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    .line 3388
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_b7

    .line 3389
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 3390
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3392
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3393
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3395
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetRSSI_DBG(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v4

    if-eqz v4, :cond_79

    const-string v4, "SemIWCMonitor"

    .line 3396
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Invalid] Fetch RSSI succeed, rssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mrssi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " txbad="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " txgood="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3399
    :cond_79
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPingEnabled(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v3

    if-eqz v3, :cond_97

    const/16 v3, -0x41

    if-ge v0, v3, :cond_97

    .line 3400
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_92

    const-string v3, "SemIWCMonitor"

    const-string v4, "Start ping to gateway"

    .line 3401
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_92
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->pingToGateway(Z)V

    .line 3405
    :cond_97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3407
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5, v3, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTimeSample(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3408
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxBad(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3409
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastTxGood(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3411
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter p1

    .line 3412
    :try_start_ad
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 3413
    monitor-exit p1

    return v1

    :catchall_b4
    move-exception p0

    monitor-exit p1
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_b4

    throw p0

    :catchall_b7
    move-exception p0

    .line 3388
    :try_start_b8
    monitor-exit v2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_b7

    throw p0
.end method
