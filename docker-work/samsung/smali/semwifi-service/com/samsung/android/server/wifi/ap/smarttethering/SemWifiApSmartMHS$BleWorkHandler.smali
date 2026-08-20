.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;
.super Landroid/os/Handler;
.source "SemWifiApSmartMHS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Landroid/os/Looper;)V
    .registers 3

    .line 427
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    .line 428
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 432
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_d6

    goto/16 :goto_d4

    .line 448
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->isGotAutohotspotBleAdvFromClient()Z

    move-result p1

    .line 449
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop advertising which was started by handler message, autohotspotServer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiApSmartMHS"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Landroid/util/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SemWifiApSmartMHS:\tstop advertising which was started because by handler message, autohotspotServer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    if-nez p1, :cond_5e

    .line 453
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$mstopAdvertizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 454
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->unregisterAutoHotspotGattServer()V

    goto/16 :goto_d4

    .line 455
    :cond_5e
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)I

    move-result p1

    if-lez p1, :cond_d4

    .line 456
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)V

    .line 457
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetautohotspot_mhs_check_message(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v3, 0x9c40

    add-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    .line 458
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputautohotspot_mhs_check_scheduled(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;Z)V

    goto :goto_d4

    .line 441
    :pswitch_87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_9a

    .line 442
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->removeMessages(I)V

    .line 444
    :cond_9a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$mstopAdvertizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    .line 445
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->unregisterAutoHotspotGattServer()V

    goto :goto_d4

    .line 434
    :pswitch_ab
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_be

    .line 435
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->removeMessages(I)V

    .line 436
    :cond_be
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$fputmLimitTimesOfStopMhsAdv(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;I)V

    .line 437
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartBleScanner()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->registerAutoHotspotGattServer(Z)Z

    .line 438
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;->-$$Nest$mstartAdvertizing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartMHS;)V

    :cond_d4
    :goto_d4
    return-void

    nop

    :pswitch_data_d6
    .packed-switch 0xa
        :pswitch_ab
        :pswitch_87
        :pswitch_8
    .end packed-switch
.end method
