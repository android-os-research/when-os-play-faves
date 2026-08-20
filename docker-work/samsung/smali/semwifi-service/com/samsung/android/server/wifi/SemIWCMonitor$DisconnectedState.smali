.class Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 2993
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method checkManualReconnecCondition(Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;)Z
    .registers 6

    .line 3050
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_30

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    .line 3051
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v0, v0, v2

    if-gez v0, :cond_30

    if-eqz p1, :cond_26

    .line 3054
    iget p1, p1, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;->discTriggeredBy:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2e

    :cond_26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDisconnectToConnectNewNetwork(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p0

    if-eqz p0, :cond_30

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public enter()V
    .registers 5

    .line 2996
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "SemIWCMonitor"

    if-eqz v0, :cond_20

    .line 2997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enter\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3000
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3001
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 3002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastPoorLinkTimestampBeforeDisc = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    :cond_49
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;J)V

    .line 3004
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_70

    .line 3005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TS updated mLastPoorLinkTimestamp = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestamp(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_70
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_b6

    .line 3008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastPoorLinkTimestampBeforeDisc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastPoorLinkTimestampBeforeDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mDisconnectToConnectNewNetwork: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDisconnectToConnectNewNetwork(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLastConnBssWithoutRemove: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v3

    .line 3011
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3008
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    :cond_b6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmLastConnBssWithoutRemove(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->checkManualReconnecCondition(Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 3014
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualReconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    .line 3016
    :cond_d5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAutoDisconnectionPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 3017
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 3022
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " exit\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemIWCMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 4

    .line 3029
    iget p1, p1, Landroid/os/Message;->what:I

    const-string v0, "SemIWCMonitor"

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_40

    const/4 p0, 0x0

    return p0

    .line 3031
    :sswitch_a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_15

    const-string p1, " DisconnectedState: IWC_EVENT_TRANSIT_TO_INVALID"

    .line 3032
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$InvalidState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 3036
    :sswitch_1f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_2a

    const-string p1, " DisconnectedState: IWC_EVENT_TRANSIT_TO_VALID"

    .line 3037
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_2a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DisconnectedState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmGoodLinkState(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$GoodLinkState;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    .line 3041
    :sswitch_34
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_3f

    const-string p0, " DisconnectedState: CMD_IWC_RSSI_FETCH_RESULT"

    .line 3042
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    return v1

    :sswitch_data_40
    .sparse-switch
        0x210cc -> :sswitch_34
        0x87015 -> :sswitch_1f
        0x87016 -> :sswitch_a
    .end sparse-switch
.end method
