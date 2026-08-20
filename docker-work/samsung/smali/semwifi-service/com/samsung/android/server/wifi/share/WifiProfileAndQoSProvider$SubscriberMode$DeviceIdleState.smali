.class Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;
.super Lcom/android/internal/util/State;
.source "WifiProfileAndQoSProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceIdleState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V
    .registers 2

    .line 1550
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;-><init>(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 1

    .line 1553
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    return-void
.end method

.method public exit()V
    .registers 1

    .line 1558
    invoke-super {p0}, Lcom/android/internal/util/State;->exit()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 7

    .line 1567
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_b5

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a4

    const/16 v1, 0x14

    if-eq v0, v1, :cond_c4

    const/16 v1, 0x17

    if-eq v0, v1, :cond_c4

    const-string v1, "WifiProfileShare.Sub"

    packed-switch v0, :pswitch_data_c6

    const/4 p0, 0x0

    return p0

    .line 1596
    :pswitch_1c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_22

    goto/16 :goto_c4

    .line 1599
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportWifiProfileRequest()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 1600
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fputmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;Ljava/lang/String;)V

    .line 1601
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmLastRequestedBssid(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 1602
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmPasswordReqState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_c4

    :cond_4c
    const-string p0, "request to share failed, target bssid is null"

    .line 1604
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    :cond_53
    const-string p0, "device unsupported profile request"

    .line 1607
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c4

    .line 1581
    :pswitch_5a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->isSupportSamsungNetworkScore()Z

    move-result p1

    const-string v0, "qos request ignored, feature unsupported"

    if-nez p1, :cond_6e

    .line 1582
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1585
    :cond_6e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$misEnableNetworkRecommendation(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Z

    move-result p1

    if-nez p1, :cond_7c

    .line 1586
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1589
    :cond_7c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->this$0:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_90

    const-string p0, "qos request ignored, Wi-Fi disabled"

    .line 1590
    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c4

    .line 1593
    :cond_90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmQoSReqState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c4

    .line 1569
    :pswitch_9a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_c4

    .line 1611
    :cond_a4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_ae

    .line 1613
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    goto :goto_c4

    .line 1615
    :cond_ae
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    const/4 p1, 0x3

    # invokes: Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->removeMessages(I)V
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->access$300(Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;I)V

    goto :goto_c4

    .line 1572
    :cond_b5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_bf

    .line 1574
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    goto :goto_c4

    .line 1576
    :cond_bf
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode$DeviceIdleState;->this$1:Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/share/WifiProfileAndQoSProvider$SubscriberMode;->sendMessage(I)V

    :cond_c4
    :goto_c4
    :pswitch_c4
    return v4

    nop

    :pswitch_data_c6
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_9a
        :pswitch_5a
        :pswitch_5a
        :pswitch_1c
        :pswitch_c4
    .end packed-switch
.end method
