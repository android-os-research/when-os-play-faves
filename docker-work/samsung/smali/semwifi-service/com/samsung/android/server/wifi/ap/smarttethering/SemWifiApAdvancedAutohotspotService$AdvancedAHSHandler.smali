.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;
.super Landroid/os/Handler;
.source "SemWifiApAdvancedAutohotspotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdvancedAHSHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;


# direct methods
.method public static synthetic $r8$lambda$dunFec55G3_lkOMHYiAYMafvV6g(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->lambda$handleMessage$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/os/Looper;)V
    .registers 3

    .line 916
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 917
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0(Ljava/lang/String;)V
    .registers 3

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetSemFrameworkFacade(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 922
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetStateString(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiApAdvancedAutohotspotService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-static {v5, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetStateString(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  ,isAutoHotspotConnected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",AHWakeup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 925
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",AdvHtDiscover: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 926
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isMobileDataEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",LCD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",Wifi: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",WifiCont :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",NO WiFiScan :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", WaitToConnt  :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",hasHistory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 930
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mhasPreviousAutohotspotGattConnetionHistory(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",AttemptConnectAH :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isAHConnectionIntiatedFromAAH:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isAHDiscontLCDOff :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",HotspotVersion :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getHotspotVersion()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 924
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    .line 935
    iget v2, v0, Landroid/os/Message;->what:I

    const-wide/16 v8, 0x3e8

    const-string v10, "Never option is chosen"

    const-wide/16 v11, 0x1400

    const-string v13, ",getAdvnacedConnectionLcdOffSetting():"

    const-string v14, "isAHConnectionIntiatedFromAAH:"

    const/16 v5, 0x13

    const/4 v6, 0x2

    const/4 v15, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_c78

    packed-switch v2, :pswitch_data_c90

    const-wide/32 v8, 0x1d4c0

    const-string v5, " default option ,disconnecting Autohotspot because of LCD is off"

    const-string v7, " Never option is LCD OFF settings"

    packed-switch v2, :pswitch_data_c9c

    .line 1438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c77

    .line 1256
    :pswitch_149
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_254

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_254

    .line 1259
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getTrafficinBytes()J

    move-result-wide v6

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default option ,Autohotspot raffic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_1ca

    .line 1262
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    :cond_1ca
    cmp-long v0, v6, v11

    if-gez v0, :cond_207

    .line 1265
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1f2

    const-string v0, "AAH  disabling autojoin2"

    .line 1267
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    goto :goto_1f7

    :cond_1f2
    const-string v0, "mAutohotspotWifiInfo is null, so not disabling autojoin_2"

    .line 1270
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :goto_1f7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1273
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto/16 :goto_c77

    .line 1275
    :cond_207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will check autohotspot traffic after 120000milli secs, PacketCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getCountPacketCheck()I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 1277
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->resetCircularBufferOnly()V

    .line 1278
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1279
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const-string v1, "schedule autohotspot_traffic_check_message 2 mins"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    goto/16 :goto_c77

    .line 1281
    :cond_254
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v15, :cond_c77

    .line 1282
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c77

    .line 1221
    :pswitch_261
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_39f

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_39f

    .line 1224
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getTrafficinBytes()J

    move-result-wide v6

    .line 1225
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1226
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1227
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 1228
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    .line 1230
    :cond_2dc
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getCountPacketCheck()I

    move-result v0

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " default option ,Autohotspot traffic: "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " currentPacketCount : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " gap : "

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v10

    sub-int v10, v0, v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v2, v6, v11

    if-ltz v2, :cond_366

    .line 1233
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v2

    sub-int v2, v0, v2

    const/16 v6, 0x14

    if-ge v2, v6, :cond_325

    goto :goto_366

    .line 1244
    :cond_325
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 1245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lcd is off, Will check autohotspot traffic after 120000milli secs, PacketCount"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->resetCircularBufferOnly()V

    .line 1247
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1248
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const-string v1, "schedule autohotspot_traffic_check_message"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    goto/16 :goto_c77

    .line 1234
    :cond_366
    :goto_366
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_38a

    const-string v0, "AAH  disabling autojoin_6"

    .line 1236
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    goto :goto_38f

    :cond_38a
    const-string v0, "mAutohotspotWifiInfo is null, so not disabling autojoin_6"

    .line 1239
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :goto_38f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1242
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto/16 :goto_c77

    .line 1250
    :cond_39f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v15, :cond_c77

    .line 1251
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c77

    .line 946
    :pswitch_3ac
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 937
    :pswitch_3b3
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_3d4

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v0

    if-lez v0, :cond_3d4

    .line 938
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)I

    move-result v2

    sub-int/2addr v2, v15

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 939
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 941
    :cond_3d4
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 942
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 1030
    :pswitch_3e0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1031
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1032
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    goto/16 :goto_c77

    .line 1352
    :pswitch_3fc
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1353
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1354
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_436

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_436

    const-string v0, "enabled autojoin of AAH network"

    .line 1355
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2, v15}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    .line 1358
    :cond_436
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v0

    if-ne v0, v15, :cond_442

    .line 1359
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1362
    :cond_442
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_4f0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_4f0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_4f0

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_4f0

    .line 1364
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getHotspotVersion()I

    move-result v0

    if-ne v0, v6, :cond_4f0

    .line 1365
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_515

    .line 1366
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_4a8

    .line 1367
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    const-wide/16 v5, 0x64

    .line 1369
    :try_start_49f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4a2
    .catch Ljava/lang/InterruptedException; {:try_start_49f .. :try_end_4a2} :catch_4a3

    goto :goto_4a8

    :catch_4a3
    move-exception v0

    move-object v2, v0

    .line 1371
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1374
    :cond_4a8
    :goto_4a8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 1375
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    const-string v0, "start wakeup client advertisement"

    .line 1376
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1378
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1379
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->startAdvancedAutohotspotWakeup()I

    const/16 v0, 0x1b

    .line 1380
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    const-wide/16 v2, 0xc8

    .line 1381
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1382
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1383
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v5, 0x7530

    add-long/2addr v2, v5

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    goto :goto_515

    .line 1385
    :cond_4f0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_515

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_515

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_515

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_515

    .line 1386
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    .line 1388
    :cond_515
    :goto_515
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto/16 :goto_c77

    .line 1298
    :pswitch_51c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_53a

    .line 1299
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    const/16 v0, 0x1c

    .line 1300
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    .line 1301
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const/16 v2, 0x28

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputNumberOfTimeWiFiScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 1302
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1304
    :cond_53a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_64f

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_64f

    .line 1307
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getTrafficinBytes()J

    move-result-wide v5

    .line 1308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default option ,Autohotspot traffic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1310
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1311
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_5c9

    .line 1312
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    :cond_5c9
    cmp-long v0, v5, v11

    if-gez v0, :cond_628

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " default option ,disconnecting Autohotspot because of LCD is off, traffic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xbb8

    const-string v5, "wifi_ap_delay_scan_lcd_on"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1318
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_613

    const-string v0, "AAH  disabling autojoin_3"

    .line 1319
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    goto :goto_618

    :cond_613
    const-string v0, "mAutohotspotWifiInfo is null, so not disabling autojoin_3"

    .line 1322
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :goto_618
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1325
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto/16 :goto_c77

    :cond_628
    const-string v0, "lcd is off, Will check autohotspot traffic after 10000milli secs"

    .line 1327
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1329
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1330
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const-string v1, "schedule autohotspot_traffic_check_message 10 seconds"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    goto/16 :goto_c77

    .line 1332
    :cond_64f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v15, :cond_c77

    .line 1333
    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c77

    .line 1023
    :pswitch_65c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v0

    if-ne v0, v15, :cond_668

    .line 1024
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1027
    :cond_668
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 1036
    :pswitch_66f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1037
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckToStopAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 1391
    :pswitch_682
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_690

    const-string v0, "Wifi already connected, so return in CMD_GET_AUTOHOTSPOT_SCAN_RESULT"

    .line 1392
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1395
    :cond_690
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getWifiApBleScanResults()Ljava/util/List;

    move-result-object v0

    .line 1396
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6a9

    const-wide/16 v2, 0x1f4

    .line 1397
    invoke-virtual {v1, v5, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c77

    .line 1399
    :cond_6a9
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotBleUtil()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->getSmartMHSFromScanResults(Ljava/util/List;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    if-nez v0, :cond_6bb

    .line 1401
    invoke-virtual {v1, v5, v8, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 1404
    :cond_6bb
    iget v2, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mBLERssi:I

    const/16 v4, 0x64

    if-lt v2, v4, :cond_6c7

    const-string v0, "Hotspot device is far from client"

    .line 1405
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1408
    :cond_6c7
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-eqz v2, :cond_740

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckMobileDataEnabled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-nez v2, :cond_740

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-eqz v2, :cond_740

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-nez v2, :cond_740

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mhasPreviousAutohotspotGattConnetionHistory(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-eqz v2, :cond_740

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v2

    if-ne v2, v6, :cond_740

    const-string v2, "confirmation option is chosen"

    .line 1409
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 1411
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1412
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcloseWifiApWarningDialogIfOpen(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    .line 1413
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 1414
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    .line 1415
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 1416
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v3, 0x37

    const-string v4, "wifiap_warning_dialog_type"

    .line 1417
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1418
    iget-object v3, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mWifiMac:Ljava/lang/String;

    const-string v4, "wifiap_adv_autohotspot_mac"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1419
    iget-object v0, v0, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    const-string v3, "wifiap_adv_autohotspot_ssid"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1423
    :cond_740
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_c77

    const-string v2, "automatic option is chosen"

    .line 1424
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->connectToSmartMHS(Lcom/samsung/android/wifi/SemWifiApBleScanResult;)Z

    move-result v2

    if-eqz v2, :cond_76c

    .line 1426
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1427
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Lcom/samsung/android/wifi/SemWifiApBleScanResult;)V

    .line 1428
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto :goto_774

    :cond_76c
    const-string v0, "connectToSmartMHS is failed"

    .line 1430
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    invoke-virtual {v1, v5, v8, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    :goto_774
    return-void

    .line 1287
    :pswitch_775
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetscreen_off_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/16 v0, 0x19

    .line 1288
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 1289
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckToStopAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    .line 1290
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    .line 1291
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    const-string v0, " screen_off_timeout_message is scheduled"

    .line 1292
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetscreen_off_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x1770

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1294
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->resetCircularBufferOnly()V

    goto/16 :goto_c77

    .line 1338
    :pswitch_7d2
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetscreen_off_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/16 v0, 0x19

    .line 1339
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 1340
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v2

    if-ne v2, v15, :cond_7f1

    .line 1341
    invoke-static {v3, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    return-void

    .line 1345
    :cond_7f1
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    if-eqz v2, :cond_800

    const-wide/16 v2, 0xa

    .line 1346
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c77

    :cond_800
    const-wide/16 v2, 0x4650

    .line 1348
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c77

    .line 962
    :pswitch_807
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v0

    if-eqz v0, :cond_c77

    const-string v0, "BLE disabled, stopping adv"

    .line 963
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V

    goto/16 :goto_c77

    .line 968
    :pswitch_823
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v0

    if-eqz v0, :cond_c77

    const-string v0, "nearby disabled, stopping adv"

    .line 969
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotDiscovery()V

    goto/16 :goto_c77

    .line 953
    :pswitch_83f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionSetting()I

    move-result v0

    if-ne v0, v15, :cond_84d

    const-string v0, "BLE enabled/NearbyShare Enabled, but Never option is chosen"

    .line 954
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_84d
    const/16 v0, 0x16

    .line 957
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c77

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_c77

    .line 958
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto/16 :goto_c77

    .line 974
    :pswitch_864
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 975
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputAttemptToConnectWifi(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 976
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmPacketCheck(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;I)V

    .line 977
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatedAutohotspotConnected(Z)V

    .line 978
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_8ac

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetSemWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8ac

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_8ac

    const-string v0, "no Wifi saved networks"

    .line 979
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    const-wide/16 v2, 0xa

    .line 980
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c77

    .line 981
    :cond_8ac
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_8d5

    const-string v0, "Autohotspot disconnected"

    .line 982
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    const/16 v0, 0x15

    const-wide/16 v2, 0x4650

    .line 984
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 985
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler$1;

    invoke-direct {v2, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;)V

    invoke-virtual {v0, v2, v8, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c77

    :cond_8d5
    const/16 v0, 0x15

    const-wide/16 v2, 0x4650

    .line 1002
    iget-object v4, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisWifiOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v4

    if-eqz v4, :cond_c77

    .line 1003
    invoke-virtual {v1, v0, v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_c77

    :pswitch_8e6
    const/16 v0, 0x15

    .line 1041
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisUserCancelledPopUp(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1042
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_discovery_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1043
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_8ff

    .line 1044
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    :cond_8ff
    const/16 v0, 0x16

    .line 1046
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_90a

    .line 1047
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 1049
    :cond_90a
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_913

    .line 1050
    invoke-virtual {v1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 1052
    :cond_913
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotDiscoveryRunning()Z

    move-result v0

    if-eqz v0, :cond_924

    .line 1053
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mcheckToStopAdvancedAutohotspotDiscovery(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    .line 1055
    :cond_924
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_939

    .line 1056
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    .line 1058
    :cond_939
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->clearFailedMHSConnectionHistory()V

    .line 1059
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    const/4 v0, 0x0

    .line 1063
    :try_start_948
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    if-eqz v2, :cond_972

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_972

    .line 1064
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2
    :try_end_967
    .catch Ljava/lang/Exception; {:try_start_948 .. :try_end_967} :catch_974

    .line 1065
    :try_start_967
    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0
    :try_end_971
    .catch Ljava/lang/Exception; {:try_start_967 .. :try_end_971} :catch_975

    goto :goto_975

    :cond_972
    move-object v2, v0

    goto :goto_97a

    :catch_974
    move-object v2, v0

    :catch_975
    :goto_975
    move-object/from16 v16, v2

    move-object v2, v0

    move-object/from16 v0, v16

    .line 1070
    :goto_97a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b35

    .line 1071
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatus(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_a1a

    .line 1072
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1073
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_9ce

    .line 1074
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1075
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v0

    if-eqz v0, :cond_9ce

    .line 1076
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040f36

    new-array v5, v15, [Ljava/lang/Object;

    iget-object v7, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmLastAttemptedBleScanResult(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/wifi/SemWifiApBleScanResult;

    move-result-object v7

    iget-object v7, v7, Lcom/samsung/android/wifi/SemWifiApBleScanResult;->mSSID:Ljava/lang/String;

    aput-object v7, v5, v4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1077
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    :cond_9ce
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatedAutohotspotConnected(Z)V

    .line 1081
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/wifi/WifiInfo;)V

    .line 1083
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_b35

    .line 1084
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApClientMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1085
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setLastConnectedMHSMac(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    const-string v0, "Autohotspot connected"

    .line 1086
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b35

    .line 1088
    :cond_a1a
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_a91

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_a2b

    goto :goto_a91

    .line 1109
    :cond_a2b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetAttemptToConnectWifi(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_b35

    .line 1110
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputAttemptToConnectWifi(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1111
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1112
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1113
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatedAutohotspotConnected(Z)V

    .line 1114
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/wifi/WifiInfo;)V

    .line 1115
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApClientMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1116
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setLastConnectedMHSMac(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    const-string v0, "Autohotspot connected, through AdvHotspot"

    .line 1117
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x38

    invoke-static {v0, v2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mlaunchWiFiApWarning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Ljava/lang/String;I)V

    goto/16 :goto_b35

    .line 1089
    :cond_a91
    :goto_a91
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1090
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_b35

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b35

    const-string v0, "Autohotspot connected, not through AdvHotspot"

    .line 1091
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_ad5

    .line 1093
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1094
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->isAdvHotspotWakeupRunning()Z

    move-result v0

    if-eqz v0, :cond_ad5

    .line 1095
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->stopAdvancedAutohotspotWakeup()V

    .line 1098
    :cond_ad5
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x38

    invoke-static {v0, v2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mlaunchWiFiApWarning(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Ljava/lang/String;I)V

    .line 1099
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1100
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1101
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1102
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1103
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->updatedAutohotspotConnected(Z)V

    .line 1104
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmConnectedInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Landroid/net/wifi/WifiInfo;)V

    .line 1105
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartGattClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApClientMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAutohotspotBleUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;

    move-result-object v2

    iget-object v5, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotBleUtil;->setLastConnectedMHSMac(Ljava/lang/String;Landroid/net/wifi/WifiInfo;)V

    .line 1187
    :cond_b35
    :goto_b35
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputWaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1188
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAttemptedToConnectToAutohotspot(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1189
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputautohotspot_wakeup_message_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    .line 1190
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_wakeup_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/16 v0, 0x1c

    .line 1191
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessage(I)Z

    .line 1192
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisLCDOn(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-nez v0, :cond_c77

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAutoHotspotConnected(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c77

    .line 1193
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSemWifiApAdvancedAutohotspotTraffic()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotTraffic;->getTrafficinBytes()J

    move-result-wide v7

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v6, :cond_c27

    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetisAHConnectionIntiatedFromAAH(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Z

    move-result v0

    if-eqz v0, :cond_c27

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Wifi is connected, but LCD is OFF. As default option ,disconnecting Autohotspot,traffic:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v0, v7, v11

    if-gez v0, :cond_c01

    .line 1199
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xbb8

    const-string v5, "wifi_ap_delay_scan_lcd_on"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1200
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_bec

    const-string v0, "AAH  disabling autojoin_5"

    .line 1201
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetmAutohotspotWifiInfo(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/net/wifi/WifiManager;->allowAutojoin(IZ)V

    goto :goto_bf1

    :cond_bec
    const-string v0, "mAutohotspotWifiInfo is null, so not disabling autojoin_5"

    .line 1204
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_bf1
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mgetAospWifimanager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 1207
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fputisAutohotspotDisconnectedBecauseOfLCDOff(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;Z)V

    goto/16 :goto_c77

    :cond_c01
    const-string v0, " Autohotspot connected in lcd is off, Will check autohotspot traffic after 10000milli secs"

    .line 1209
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1211
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetautohotspot_lcdoff_added_traffic_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 1212
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    const-string v1, "schedule autohotspot_traffic_check_message 10 seconds"

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->addAdvAHDumpLog(Ljava/lang/String;)V

    goto :goto_c77

    .line 1215
    :cond_c27
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getAdvnacedConnectionLcdOffSetting()I

    move-result v0

    if-ne v0, v15, :cond_c77

    const-string v0, " Never option "

    .line 1216
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c77

    .line 949
    :pswitch_c35
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$mresetAutohotspotBecauseOfWiFiShutDown(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)V

    goto :goto_c77

    .line 1007
    :pswitch_c3b
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    const/16 v2, 0x15

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c52

    .line 1008
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    .line 1011
    :cond_c52
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->-$$Nest$fgetscreen_off_timeout_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    .line 1013
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_c72

    .line 1014
    iget-object v0, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService;->getBleHandler()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->removeMessages(I)V

    :cond_c72
    const-wide/16 v3, 0x4650

    .line 1016
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApAdvancedAutohotspotService$AdvancedAHSHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_c77
    :goto_c77
    return-void

    :pswitch_data_c78
    .packed-switch 0x2
        :pswitch_c3b
        :pswitch_c35
        :pswitch_8e6
        :pswitch_864
        :pswitch_83f
        :pswitch_823
        :pswitch_83f
        :pswitch_807
        :pswitch_7d2
        :pswitch_775
    .end packed-switch

    :pswitch_data_c90
    .packed-switch 0x13
        :pswitch_682
        :pswitch_66f
        :pswitch_65c
        :pswitch_65c
    .end packed-switch

    :pswitch_data_c9c
    .packed-switch 0x18
        :pswitch_51c
        :pswitch_3fc
        :pswitch_3e0
        :pswitch_3b3
        :pswitch_3ac
        :pswitch_261
        :pswitch_149
    .end packed-switch
.end method
