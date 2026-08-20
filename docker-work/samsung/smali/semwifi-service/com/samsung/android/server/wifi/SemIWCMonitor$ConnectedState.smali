.class Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 3066
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 3069
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "SemIWCMonitor"

    .line 3070
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-nez v0, :cond_48

    .line 3073
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "SemIWCMonitor"

    .line 3074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentWifiInfo is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    :cond_48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 3078
    :try_start_4b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    .line 3079
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_4b .. :try_end_57} :catchall_5d

    .line 3081
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mregisterWifiMonitorHandler(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return-void

    :catchall_5d
    move-exception p0

    .line 3079
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public exit()V
    .registers 3

    .line 3086
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " exit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemIWCMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPoorLinkStateTesting(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 3090
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmOnlyThisTimeSelected(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 13

    .line 3096
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "SemIWCMonitor"

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_d6

    const/4 p0, 0x0

    return p0

    .line 3121
    :sswitch_a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, " ConnectedState: IWC_EVENT_TRANSIT_TO_INVALID"

    .line 3122
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3123
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    .line 3126
    :sswitch_1f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, " ConnectedState: IWC_EVENT_TRANSIT_TO_VALID"

    .line 3127
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3128
    :cond_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmGoodLinkState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v2

    .line 3098
    :sswitch_34
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "wifi_state"

    const/4 v3, 0x4

    .line 3099
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "previous_wifi_state"

    .line 3101
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 3103
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_67

    .line 3104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IWC_EVENT_WIFI_STATE_CHANGED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    if-eq v0, p1, :cond_c8

    .line 3107
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mwifiStateChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    if-ne v0, v2, :cond_c8

    .line 3111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v3

    const/4 v4, 0x2

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentNetworkId(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v6

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentConfigKey(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    .line 3112
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v8

    .line 3113
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_99

    move v10, v2

    goto :goto_9b

    :cond_99
    const/4 p1, 0x2

    move v10, p1

    .line 3111
    :goto_9b
    invoke-virtual/range {v3 .. v10}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->addOrUpdate(ILjava/lang/String;ILjava/lang/String;JI)V

    .line 3115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WiFi disconnected ==> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_b3

    const-string v0, "byUser"

    goto :goto_b5

    :cond_b3
    const-string v0, "byPhone"

    :goto_b5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_c8
    return v2

    .line 3131
    :sswitch_c9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_d4

    const-string p0, " ConnectedState: CMD_IWC_RSSI_FETCH_RESULT"

    .line 3132
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d4
    return v2

    nop

    :sswitch_data_d6
    .sparse-switch
        0x210cc -> :sswitch_c9
        0x87005 -> :sswitch_34
        0x87015 -> :sswitch_1f
        0x87016 -> :sswitch_a
    .end sparse-switch
.end method
