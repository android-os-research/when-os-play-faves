.class Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;
.super Lcom/android/internal/util/State;
.source "SemClientModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartedState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V
    .registers 2

    .line 1096
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .registers 4

    .line 1099
    invoke-super {p0}, Lcom/android/internal/util/State;->enter()V

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->isReady()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "SemClientModeManager"

    const-string v1, "retry to get Wi-Fi version"

    .line 1101
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiDriverInfo(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/driver/WifiDriverVersionProvider;->checkAndUpdate()V

    .line 1104
    :cond_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$minitializeSoftApChipInfo(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)V

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1107
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1109
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v2

    .line 1107
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1113
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v0, 0xe

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method

.method public exit()V
    .registers 6

    .line 1191
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/16 v1, 0xe

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$200(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    .line 1192
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fputmPrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    .line 1193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndGetConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1195
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkCallback(Lcom/samsung/android/server/wifi/SemClientModeManager;)Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 1196
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmClientModes(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4c
    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "SemClientModeManager"

    if-eqz v1, :cond_8e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1197
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    invoke-interface {v3}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1198
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear remained ClientModeImpl iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v2, v2, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mremoveClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    goto :goto_4c

    .line 1202
    :cond_8e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmScanningEnable(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_a7

    const-string v0, "recovery auto join flag"

    .line 1203
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->setScanningEnable(ZLjava/lang/String;)V

    :cond_a7
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .registers 8

    .line 1119
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xe

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v2, :cond_110

    const/16 v5, 0x8

    if-eq v0, v5, :cond_107

    const/16 v5, 0x10

    if-eq v0, v5, :cond_fb

    const/4 v5, 0x4

    if-eq v0, v5, :cond_e9

    const/4 v5, 0x5

    if-eq v0, v5, :cond_e1

    const-string v5, "SemClientModeManager"

    packed-switch v0, :pswitch_data_116

    packed-switch v0, :pswitch_data_124

    goto/16 :goto_115

    :pswitch_21
    const-string p0, "already started"

    .line 1180
    invoke-static {v5, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10e

    .line 1122
    :pswitch_28
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetPrimaryClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/ISemClientModeImpl;

    move-result-object p1

    if-eqz p1, :cond_62

    .line 1123
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/ISemClientModeImpl;->isActive()Z

    move-result p1

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    .line 1124
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 1125
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmBigDataManager(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/samsung/android/server/wifi/bigdata/WifiBigDataLogManager;->increaseEventCounter(I)V

    .line 1126
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p1, p1, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const/16 v0, 0x11

    .line 1127
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->getPrimaryInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForHidlDeath(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 1126
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->report(ILandroid/os/Bundle;)V

    .line 1130
    :cond_62
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$fgetmIdleState(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)Lcom/android/internal/util/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto/16 :goto_10e

    .line 1137
    :pswitch_6d
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->-$$Nest$mdetermineInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;)I

    move-result v0

    if-nez v0, :cond_10e

    .line 1138
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_89

    const-string p1, "Force start CMI for wlan0"

    .line 1139
    invoke-static {v5, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    const-string p1, "wlan0"

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$maddClientModeImpl(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    goto/16 :goto_10e

    .line 1142
    :cond_89
    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr p1, v4

    .line 1143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is no active interfaces, retry "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->sendMessageDelayed(IIJ)V

    goto :goto_10e

    .line 1171
    :pswitch_a8
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/ServiceState;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyTelephonyServiceStateChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/telephony/ServiceState;)V

    goto :goto_10e

    .line 1168
    :pswitch_b4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_bd

    move v3, v4

    :cond_bd
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyAirplaneModeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Z)V

    goto :goto_10e

    .line 1162
    :pswitch_c1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 1164
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiInfo;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyCapabilitiesChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;Landroid/net/wifi/WifiInfo;)V

    goto :goto_10e

    .line 1150
    :pswitch_d5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mcheckAndUpdatePrimaryInterface(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)V

    goto :goto_10e

    .line 1159
    :cond_e1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyLinkConfiguredChangedEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    goto :goto_10e

    .line 1153
    :cond_e9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1154
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_10e

    .line 1155
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyNetworkConnectionEvent(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    goto :goto_10e

    .line 1174
    :cond_fb
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyTelephonyCountryCodeChanged(Lcom/samsung/android/server/wifi/SemClientModeManager;Ljava/lang/String;)V

    goto :goto_10e

    .line 1177
    :cond_107
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mnotifyDisableRandomMacForTest(Lcom/samsung/android/server/wifi/SemClientModeManager;)V

    :cond_10e
    :goto_10e
    move v3, v4

    goto :goto_115

    .line 1133
    :cond_110
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine$StartedState;->this$1:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    # invokes: Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->removeMessages(I)V
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;->access$100(Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;I)V

    :goto_115
    return v3

    :pswitch_data_116
    .packed-switch 0xa
        :pswitch_d5
        :pswitch_c1
        :pswitch_b4
        :pswitch_a8
        :pswitch_6d
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x24066
        :pswitch_28
        :pswitch_21
        :pswitch_28
    .end packed-switch
.end method
