.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;
.super Lcom/android/internal/util/State;
.source "AutoWifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UserControlState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1122
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 6

    .line 1125
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmTestSettings(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1126
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmFeature(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/diagnostics/WifiFeatureController;->getAutoWifiUserControlTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-static {v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;J)V

    .line 1128
    :cond_19
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v0, 0xb

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmUserControlTimeoutMs(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .registers 2

    .line 1157
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v0, 0xb

    # invokes: Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->removeMessages(I)V
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->access$100(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;I)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 6

    .line 1134
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_27

    const/16 p1, 0xb

    if-eq v0, p1, :cond_1d

    const/4 p1, 0x7

    if-eq v0, p1, :cond_37

    const/16 p1, 0x8

    if-eq v0, p1, :cond_13

    return v2

    .line 1136
    :cond_13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_37

    .line 1145
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmSearchFavoriteNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_37

    .line 1139
    :cond_27
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_2c

    move v2, v3

    :cond_2c
    if-eqz v2, :cond_37

    .line 1141
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$UserControlState;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmAutoWifiStartedState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_37
    :goto_37
    return v3
.end method
