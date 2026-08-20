.class Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;
.super Landroid/os/Handler;
.source "SemApeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeService;Landroid/os/Looper;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    .line 223
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 16

    .line 231
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, "Primary Wi-Fi ("

    const-string v3, "(v0.9.1) "

    const-string v4, "invalid"

    const-string v5, " mTrafficMonitor.mAppInfo.appUid="

    const/4 v6, 0x2

    const-wide/16 v7, 0x3e8

    const/4 v9, 0x0

    const/4 v10, 0x1

    packed-switch v0, :pswitch_data_438

    .line 405
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Not a option in Switch case: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 375
    :pswitch_29
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-eqz p1, :cond_437

    .line 376
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-eqz p1, :cond_5b

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_5b

    .line 377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 378
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    .line 379
    invoke-virtual {p0, v10, v7, v8}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const-string v0, "VPN Disconnected - APE rule added"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 381
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    goto :goto_65

    :cond_5b
    const-string p1, "VPN Disconnected - APE no action"

    .line 383
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 386
    :goto_65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0, v9}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    goto/16 :goto_437

    .line 358
    :pswitch_6c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-nez p1, :cond_437

    .line 359
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_93

    .line 360
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const-string v0, "VPN Connected - APE rule deleted"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 361
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 364
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    goto :goto_9d

    .line 366
    :cond_93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    const-string v0, "VPN Connected - APE no action"

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 367
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 369
    :goto_9d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    goto/16 :goto_437

    .line 399
    :pswitch_a4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 400
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_USER_SWITCHED: userid="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 392
    :pswitch_c7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PRIMARY_IFACE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 394
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    goto/16 :goto_437

    .line 297
    :pswitch_e6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 298
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeService;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeService;Landroid/net/Network;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_437

    .line 302
    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_437

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_437

    .line 304
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_13b

    .line 306
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 307
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    move-result p1

    int-to-double v1, p1

    mul-double/2addr v1, v3

    double-to-int p1, v1

    invoke-static {v10, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 309
    :cond_13b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Maximum deducted link capacity (Rx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Tx="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") Mbps ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 338
    :pswitch_178
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 339
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    .line 340
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1f1

    .line 341
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-nez p1, :cond_1f1

    .line 342
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v10

    const-string v0, "Wi-Fi disconnected: %s (%x)"

    invoke-static {p1, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1, v9}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_437

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 348
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 349
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    goto/16 :goto_437

    .line 352
    :cond_1f1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v10, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v9

    const-string v0, "Wi-Fi disconnected, but ignored for non primary interface (%x)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 315
    :pswitch_206
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    .line 316
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeService;Landroid/net/Network;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_437

    .line 318
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v3

    .line 319
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_295

    .line 322
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v0, v1, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v1, v10

    const-string v0, "Wi-Fi connected: %s (%x)"

    invoke-static {p1, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 323
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-nez p1, :cond_28e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-nez p1, :cond_28e

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_28e

    .line 324
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 325
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    .line 326
    invoke-virtual {p0, v10, v7, v8}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 327
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 329
    :cond_28e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;Z)V

    goto/16 :goto_437

    .line 331
    :cond_295
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p1, v6, [Ljava/lang/Object;

    aput-object v0, p1, v9

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, p1, v10

    const-string v0, "Wi-Fi connected, but ignored for non primary interface: %s (%x)"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 276
    :pswitch_2ac
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_STOP: mRulesApplied="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    if-nez v0, :cond_2cb

    goto :goto_2db

    :cond_2cb
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_2db
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_345

    .line 282
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-eqz p1, :cond_32d

    .line 283
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 284
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeService;->storeBgBandwidth(II)V

    .line 286
    :cond_32d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mupdateStatsFromSession(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 287
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1, v9}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 288
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 289
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    goto/16 :goto_437

    :cond_345
    const-string p0, "EVENT_STOP is called, but mTrafficMonitor is null"

    .line 291
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$smloge(Ljava/lang/String;)V

    goto/16 :goto_437

    .line 266
    :pswitch_34c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    if-eqz p1, :cond_437

    .line 267
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->periodicFunction()V

    .line 268
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    .line 269
    invoke-virtual {p0, v10, v7, v8}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_437

    .line 235
    :pswitch_365
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 236
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 237
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 238
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "EVENT_START: UID="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " package="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " type="

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v12, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v9

    const-string v9, "0x%02X"

    invoke-static {v11, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mRulesApplied="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v5

    if-nez v5, :cond_3b4

    goto :goto_3c4

    :cond_3b4
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;

    move-result-object v4

    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor$AppInfo;->appUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_3c4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemApeService;Ljava/lang/String;)V

    .line 242
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeService;)V

    const/4 v3, -0x1

    if-le v0, v3, :cond_432

    .line 245
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeService;I)V

    .line 246
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v2

    if-eqz v2, :cond_408

    .line 248
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 249
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 250
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    .line 253
    :cond_408
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    new-instance v2, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    invoke-direct {v2, v1, v0, p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeService;ILjava/lang/String;)V

    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 254
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeService;)Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeService$TrafficMonitor;)V

    .line 255
    invoke-virtual {p0, v10}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->removeMessages(I)V

    .line 256
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-eqz p1, :cond_437

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeService;)Z

    move-result p1

    if-nez p1, :cond_437

    .line 257
    invoke-virtual {p0, v10, v7, v8}, Lcom/samsung/android/server/wifi/SemApeService$ApeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_437

    :cond_432
    const-string p0, "The UID is NOT fetched from the SemApeController"

    .line 259
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->-$$Nest$smloge(Ljava/lang/String;)V

    :cond_437
    :goto_437
    return-void

    :pswitch_data_438
    .packed-switch 0x0
        :pswitch_365
        :pswitch_34c
        :pswitch_2ac
        :pswitch_206
        :pswitch_178
        :pswitch_e6
        :pswitch_c7
        :pswitch_a4
        :pswitch_6c
        :pswitch_29
    .end packed-switch
.end method
