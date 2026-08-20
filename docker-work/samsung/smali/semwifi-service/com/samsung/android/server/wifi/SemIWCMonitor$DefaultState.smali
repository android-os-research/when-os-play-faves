.class Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;
.super Lcom/android/internal/util/State;
.source "SemIWCMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemIWCMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V
    .registers 2

    .line 2603
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 2

    .line 2606
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " enter\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemIWCMonitor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    return-void
.end method

.method public exit()V
    .registers 2

    .line 2612
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->getName()Ljava/lang/String;

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
    .registers 15

    .line 2620
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x210ce

    const/4 v2, 0x1

    if-eq v0, v1, :cond_776

    const v1, 0x24004

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_6ef

    const/4 v1, 0x4

    packed-switch v0, :pswitch_data_784

    const v5, 0x210c8

    const/4 v6, -0x1

    packed-switch v0, :pswitch_data_796

    packed-switch v0, :pswitch_data_7a0

    const/4 v7, 0x3

    packed-switch v0, :pswitch_data_7a8

    packed-switch v0, :pswitch_data_7b2

    packed-switch v0, :pswitch_data_7ba

    packed-switch v0, :pswitch_data_7d4

    const-string v0, "SemIWCMonitor"

    .line 2986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " in state "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_783

    .line 2973
    :pswitch_54
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 2974
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_783

    .line 2975
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v1, "SwitchTooShort"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User selection for reward : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p1, v3, :cond_7e

    if-ne p1, v7, :cond_8e

    .line 2977
    :cond_7e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    if-ne p1, v7, :cond_8e

    .line 2979
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmOnlyThisTimeSelected(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 2982
    :cond_8e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto/16 :goto_783

    .line 2950
    :pswitch_99
    iget p1, p1, Landroid/os/Message;->arg1:I

    const-string v0, "SemIWCMonitor"

    .line 2951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User wants to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v2, :cond_ac

    const-string v3, ""

    goto :goto_ae

    :cond_ac
    const-string v3, "not"

    :goto_ae
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "keep connection BSSID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v4

    .line 2952
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2951
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v2, :cond_d9

    .line 2954
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v5, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msendMessageToWCM(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Z

    goto/16 :goto_783

    .line 2956
    :cond_d9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result p1

    if-eqz p1, :cond_783

    .line 2957
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSwitchedTooShortPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    goto/16 :goto_783

    :pswitch_f0
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_SNS_ENABLE +"

    .line 2829
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableSNSEnable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2831
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_102
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_SNS_DISABLE --"

    .line 2824
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableSNSDisable(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2826
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_114
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MANUAL_DISCONNECT +++"

    .line 2803
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableManualDisc(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2805
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_126
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_AUTO_DISCONNECTION ==="

    .line 2784
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2785
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableAutoDisconnection(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_133
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MANUAL_RECONNECT ---"

    .line 2779
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableManualReconnect(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2781
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_145
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MOBILE_DATA_DISABLE ---"

    .line 2808
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2809
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableMobileDataChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2810
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_157
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_WIFI_DISABLE (Rewarding Pending) +++"

    .line 2818
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const p1, 0x8701d

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->sendMessageDelayed(IJ)V

    return v2

    :pswitch_169
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_SWITCHED_TOO_SHORT ---"

    .line 2813
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableSwitchedTooShort(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2815
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_17b
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MANUAL_SWITCH_L -"

    .line 2798
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2799
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_L:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableManualSwitch(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 2800
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_18f
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MANUAL_SWITCH_G +"

    .line 2793
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH_G:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableManualSwitch(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 2795
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    :pswitch_1a3
    const-string p1, "SemIWCMonitor"

    const-string v0, "REWARD_EVENT_MANUAL_SWITCH_M +++"

    .line 2788
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2789
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    sget-object v0, Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;->MANUAL_SWITCH:Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableManualSwitch(Lcom/samsung/android/server/wifi/SemIWCMonitor;Lcom/samsung/android/server/wifi/iwc/SemRewardEvent;)V

    .line 2790
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    return v2

    .line 2962
    :pswitch_1b7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 2963
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1c4

    move v4, v2

    :cond_1c4
    invoke-virtual {p0, v1, v4, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setConnectionAttemptInfo(IZLandroid/os/Bundle;)V

    goto/16 :goto_783

    .line 2920
    :pswitch_1c9
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v1, "IWC_EVENT_FORCE_ACTION"

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableForceAction(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto/16 :goto_783

    .line 2907
    :pswitch_1df
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-lt v0, v2, :cond_1f0

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ge v7, v0, :cond_1e8

    goto :goto_1f0

    .line 2910
    :cond_1e8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mresetLearningData(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    goto :goto_1f5

    .line 2908
    :cond_1f0
    :goto_1f0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mresetLearningData(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2912
    :goto_1f5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_20b

    .line 2914
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->algorithmStep()V

    .line 2915
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateDebugIntent(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2917
    :cond_20b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msave_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    goto/16 :goto_783

    .line 2865
    :pswitch_212
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_238

    const-string v0, "SemIWCMonitor"

    .line 2866
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IWC_EVENT_RESTORE_USER_PREFERENCE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    iget v8, p1, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 2867
    invoke-static {v6, v8, v9}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mgetBackupAndRestoreDebugMessage(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2866
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_238
    iget v0, p1, Landroid/os/Message;->arg1:I

    const v5, 0x8701f

    if-ne v0, v2, :cond_279

    .line 2870
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_25d

    .line 2874
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v0, "WIFI_IWC_USER_DATA_PREFERENCE"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2875
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v5, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_783

    :cond_25d
    if-nez p1, :cond_783

    .line 2878
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v0, "WIFI_IWC_USER_DATA_PREFERENCE"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2879
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v5, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_783

    .line 2881
    :cond_279
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v3, :cond_2b0

    .line 2883
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 2884
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 2885
    :try_start_282
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->getQtables()Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;

    move-result-object v1

    iget v1, v1, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;->mDefaultQAI:I

    .line 2886
    monitor-exit v0
    :try_end_28f
    .catchall {:try_start_282 .. :try_end_28f} :catchall_2ad

    if-ne v1, v3, :cond_783

    if-ne p1, v2, :cond_783

    .line 2890
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v0, "WIFI_IWC_USER_DATA_PREFERENCE"

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v5, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_783

    :catchall_2ad
    move-exception p0

    .line 2886
    :try_start_2ae
    monitor-exit v0
    :try_end_2af
    .catchall {:try_start_2ae .. :try_end_2af} :catchall_2ad

    throw p0

    .line 2893
    :cond_2b0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v7, :cond_2c1

    .line 2894
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string p1, "/data/misc/wifi_share_profile/qtables_restore.json"

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->readQtableFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->setQtables(Ljava/lang/String;Z)V

    goto/16 :goto_783

    .line 2895
    :cond_2c1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v1, :cond_783

    .line 2896
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    goto/16 :goto_783

    .line 2903
    :pswitch_2cc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateTableWifiOff(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2904
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    goto/16 :goto_783

    :pswitch_2d8
    const-string p1, "SemIWCMonitor"

    const-string v0, "sync factory reset"

    .line 2854
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->factoryReset()V

    .line 2858
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_783

    .line 2859
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msendDebugIntent(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 2860
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->algorithmStep()V

    .line 2861
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msave_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    goto/16 :goto_783

    .line 2629
    :pswitch_301
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_307

    move v0, v2

    goto :goto_308

    :cond_307
    move v0, v4

    .line 2630
    :goto_308
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v2, :cond_30d

    move v4, v2

    .line 2631
    :cond_30d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "package"

    .line 2632
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "calling_uid"

    .line 2633
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v3, "SemIWCMonitor"

    .line 2634
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IWC_EVENT_WIFI_TOGGLED: triggeredByUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_376

    .line 2637
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmWifiDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    if-nez v0, :cond_35e

    if-eqz v1, :cond_367

    .line 2638
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_367

    .line 2639
    :cond_35e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmConnectNetworkPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    .line 2642
    :cond_367
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v3

    .line 2643
    :try_start_36a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    .line 2644
    monitor-exit v3

    goto/16 :goto_783

    :catchall_373
    move-exception p0

    monitor-exit v3
    :try_end_375
    .catchall {:try_start_36a .. :try_end_375} :catchall_373

    throw p0

    .line 2646
    :cond_376
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2647
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "appwidget"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetManager;

    .line 2648
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmWifiDisablePackage(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    if-nez v0, :cond_3ee

    if-eqz v1, :cond_3a4

    .line 2650
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a4

    goto :goto_3ee

    .line 2653
    :cond_3a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmWifiDisablePackage(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {v4, v0, p1}, Landroid/appwidget/AppWidgetManager;->isBoundWidgetPackage(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3d3

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentPackageName(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object p1

    .line 2654
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->isHomeDefault(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z

    move-result p1

    if-eqz p1, :cond_3d3

    .line 2656
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_3cd

    const-string p1, "SemIWCMonitor"

    const-string v0, "Triggered by widget and current foreground package is default home launcher"

    .line 2657
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2659
    :cond_3cd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    goto :goto_3f3

    .line 2660
    :cond_3d3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misService(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3f3

    .line 2662
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p1

    if-eqz p1, :cond_3e8

    const-string p1, "SemIWCMonitor"

    const-string v0, "Triggered by visible process(not service)"

    .line 2663
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_3e8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    goto :goto_3f3

    .line 2652
    :cond_3ee
    :goto_3ee
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 2667
    :cond_3f3
    :goto_3f3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmIsWifiDisabledByUser(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_410

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAutoDisconnectionPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result p1

    if-eqz p1, :cond_410

    .line 2668
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmAutoDisconnectionPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->discard()V

    .line 2671
    :cond_410
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter v0

    .line 2672
    :try_start_413
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;Ljava/lang/String;)V

    const-string p1, "SemIWCMonitor"

    .line 2673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWC_EVENT_WIFI_TOGGLED - set prev bss "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmPreviousBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    monitor-exit v0

    goto/16 :goto_783

    :catchall_445
    move-exception p0

    monitor-exit v0
    :try_end_447
    .catchall {:try_start_413 .. :try_end_447} :catchall_445

    throw p0

    .line 2691
    :pswitch_448
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_470

    const-string v0, "SemIWCMonitor"

    .line 2692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IWC_EVENT_SNS_SETTINGS_CHANGED SNS Prev="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " AGG Prev="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    :cond_470
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_484

    move p1, v2

    goto :goto_485

    :cond_484
    move p1, v4

    .line 2701
    :goto_485
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-ne v0, v2, :cond_4e0

    if-ne p1, v2, :cond_498

    const-string v0, "SemIWCMonitor"

    const-string v1, "SNS Option changed 1->1"

    .line 2703
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_530

    :cond_498
    const-string v0, "SemIWCMonitor"

    .line 2706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SNS Option changed 1->3 mDoingRestore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2707
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-nez v0, :cond_4dc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSNSDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4dc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_4dc

    .line 2708
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSNSDisablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    move v0, v2

    move v1, v4

    goto :goto_4de

    :cond_4dc
    move v0, v4

    move v1, v0

    :goto_4de
    move v3, v1

    goto :goto_533

    :cond_4e0
    if-ne p1, v2, :cond_529

    const-string v0, "SemIWCMonitor"

    .line 2714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SNS Option changed 3->1 mDoingRestore: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-nez v0, :cond_525

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSNSEnablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->isValid()Z

    move-result v0

    if-eqz v0, :cond_525

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_525

    .line 2716
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmSNSEnablePolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->detect()V

    move v0, v2

    goto :goto_526

    :cond_525
    move v0, v4

    :goto_526
    move v3, v2

    move v1, v4

    goto :goto_533

    :cond_529
    const-string v0, "SemIWCMonitor"

    const-string v1, "SNS Option changed 3->3"

    .line 2721
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_530
    move v1, v2

    move v0, v4

    move v3, v0

    .line 2726
    :goto_533
    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v7, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    .line 2728
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetIntfSnsFlag(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    if-nez v0, :cond_552

    if-nez v1, :cond_552

    .line 2730
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-nez p1, :cond_552

    .line 2731
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI()V

    :cond_552
    if-ne v3, v2, :cond_5a6

    .line 2733
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-ne p1, v2, :cond_5a6

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-nez p1, :cond_5a6

    .line 2734
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string v0, "SNS option was enabled by user. reset training data"

    const-string v1, " NoVal"

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const v0, 0x8701b

    invoke-static {p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2737
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2738
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "wifi_iwc_last_time_switch_to_mobile_on"

    invoke-static {p1, v3, v0, v1}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string p1, "SemIWCMonitor"

    .line 2740
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WIFI_IWC_LAST_TIME_SWITCH_TO_MOBILE_ON is "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    :cond_5a6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getCurrentQAI()I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmCurrentQAI(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2744
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misExcludedBssid(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_5bd

    .line 2745
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v5, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msendMessageToWCM(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Z

    goto :goto_5d6

    .line 2747
    :cond_5bd
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurSNS(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5d3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$misConnectedWifi(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result v0

    if-eqz v0, :cond_5d3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentQAI(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v6

    :cond_5d3
    invoke-static {p1, v5, v6}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msendMessageToWCM(Lcom/samsung/android/server/wifi/SemIWCMonitor;II)Z

    :goto_5d6
    const-string p1, "SemIWCMonitor"

    .line 2750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current sns button toggle cnt = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Landroid/content/Context;

    move-result-object v1

    .line 2751
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_num_of_switch_to_mobile_data_toggle"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2750
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Z

    move-result p1

    if-eqz p1, :cond_783

    .line 2754
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmDoingRestore(Lcom/samsung/android/server/wifi/SemIWCMonitor;Z)V

    goto/16 :goto_783

    .line 2758
    :pswitch_60b
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_783

    const-string p0, "SemIWCMonitor"

    const-string p1, " DefaultState: IWC_EVENT_TRANSIT_TO_INVALID"

    .line 2759
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_783

    .line 2762
    :pswitch_61a
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_783

    const-string p0, "SemIWCMonitor"

    const-string p1, " DefaultState: IWC_EVENT_TRANSIT_TO_VALID"

    .line 2763
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_783

    .line 2771
    :pswitch_629
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "changeReason"

    .line 2772
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_783

    .line 2775
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmManualDisconnectPolicy(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor$RewardEventDetectionPolicy;->adopt()V

    goto/16 :goto_783

    .line 2900
    :pswitch_640
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBigDataMIWC(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    goto/16 :goto_783

    .line 2841
    :pswitch_647
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "wifi_state"

    .line 2842
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "previous_wifi_state"

    .line 2844
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 2846
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_67b

    const-string v1, "SemIWCMonitor"

    .line 2847
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

    :cond_67b
    if-eq v0, p1, :cond_682

    .line 2850
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mwifiStateChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    :cond_682
    return v2

    .line 2834
    :pswitch_683
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mload_model_obj(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2835
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetBroadcastReceiver(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2837
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$msetIntfSnsFlag(Lcom/samsung/android/server/wifi/SemIWCMonitor;)V

    .line 2838
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->setDefaultQAI()V

    goto/16 :goto_783

    .line 2682
    :pswitch_69d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const/16 v0, -0x40

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mupdateValidLastRssi(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2683
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2684
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLinkLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2685
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemIWCMonitor;I)V

    .line 2686
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemIWCMonitor;D)V

    .line 2687
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_783

    const-string p0, "SemIWCMonitor"

    const-string p1, "IWC_EVENT_SCREEN_OFF"

    .line 2688
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_783

    .line 2678
    :pswitch_6c9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_783

    const-string p0, "SemIWCMonitor"

    const-string p1, "IWC_EVENT_SCREEN_ON"

    .line 2679
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_783

    .line 2622
    :pswitch_6d8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    const-string v0, "networkInfo"

    .line 2623
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 2624
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    .line 2626
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$mnetworkStateChanged(Lcom/samsung/android/server/wifi/SemIWCMonitor;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_783

    .line 2925
    :cond_6ef
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2926
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 2927
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Ljava/lang/String;

    .line 2929
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    monitor-enter p1

    .line 2930
    :try_start_6fb
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmRLEngine(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;

    move-result-object v5

    iget-object v5, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLearningTop;->intf:Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;

    iput-boolean v4, v5, Lcom/samsung/android/server/wifi/iwc/rlengine/SemRFLInterface;->switchFlag:Z

    .line 2931
    monitor-exit p1
    :try_end_706
    .catchall {:try_start_6fb .. :try_end_706} :catchall_773

    .line 2933
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object p1

    invoke-virtual {p1, v7}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->get(Ljava/lang/String;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfo;

    move-result-object p1

    if-nez p1, :cond_72b

    .line 2935
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    const-string p1, "NETWORK_DISCONNECTION_EVENT"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no ConnDiscInfo for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->writeToLogFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_783

    :cond_72b
    if-nez v0, :cond_72e

    goto :goto_72f

    :cond_72e
    move v3, v2

    .line 2943
    :goto_72f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmConnDiscInfoHist(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;

    move-result-object v5

    const/4 v6, 0x2

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentNetworkId(Lcom/samsung/android/server/wifi/SemIWCMonitor;)I

    move-result v8

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$fgetmCurrentConfigKey(Lcom/samsung/android/server/wifi/SemIWCMonitor;)Ljava/lang/String;

    move-result-object v9

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemIWCMonitor$DefaultState;->this$0:Lcom/samsung/android/server/wifi/SemIWCMonitor;

    .line 2944
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->getTimeStamp()J

    move-result-wide v10

    move v12, v3

    .line 2943
    invoke-virtual/range {v5 .. v12}, Lcom/samsung/android/server/wifi/SemIWCMonitor$ConnDiscInfoHist;->addOrUpdate(ILjava/lang/String;ILjava/lang/String;JI)V

    const-string p0, "SemIWCMonitor"

    .line 2945
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WiFi disconnected [locally = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "] ==> "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_783

    :catchall_773
    move-exception p0

    .line 2931
    :try_start_774
    monitor-exit p1
    :try_end_775
    .catchall {:try_start_774 .. :try_end_775} :catchall_773

    throw p0

    .line 2766
    :cond_776
    invoke-static {}, Lcom/samsung/android/server/wifi/SemIWCMonitor;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_783

    const-string p0, "SemIWCMonitor"

    const-string p1, " DefaultState: CMD_IWC_DNS_CHECK_RESULT"

    .line 2767
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_783
    :goto_783
    return v2

    :pswitch_data_784
    .packed-switch 0x87001
        :pswitch_6d8
        :pswitch_6c9
        :pswitch_69d
        :pswitch_683
        :pswitch_647
        :pswitch_640
        :pswitch_629
    .end packed-switch

    :pswitch_data_796
    .packed-switch 0x87015
        :pswitch_61a
        :pswitch_60b
        :pswitch_448
    .end packed-switch

    :pswitch_data_7a0
    .packed-switch 0x8701a
        :pswitch_301
        :pswitch_2d8
    .end packed-switch

    :pswitch_data_7a8
    .packed-switch 0x8701d
        :pswitch_2cc
        :pswitch_212
        :pswitch_1df
    .end packed-switch

    :pswitch_data_7b2
    .packed-switch 0x87021
        :pswitch_1c9
        :pswitch_1b7
    .end packed-switch

    :pswitch_data_7ba
    .packed-switch 0x87032
        :pswitch_1a3
        :pswitch_18f
        :pswitch_17b
        :pswitch_169
        :pswitch_157
        :pswitch_145
        :pswitch_133
        :pswitch_126
        :pswitch_114
        :pswitch_102
        :pswitch_f0
    .end packed-switch

    :pswitch_data_7d4
    .packed-switch 0x8704d
        :pswitch_99
        :pswitch_54
    .end packed-switch
.end method
