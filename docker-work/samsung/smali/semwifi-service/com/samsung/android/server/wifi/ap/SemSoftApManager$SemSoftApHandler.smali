.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;
.super Landroid/os/Handler;
.source "SemSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemSoftApHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Landroid/os/Looper;)V
    .registers 3

    .line 421
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 422
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 370
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "SemSoftApManager"

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_124

    goto/16 :goto_123

    .line 374
    :pswitch_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 375
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    :cond_24
    if-eqz v1, :cond_36

    .line 377
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetConnectivityManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/ConnectivityManager;

    move-result-object p1

    if-eqz p1, :cond_36

    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_36

    goto :goto_37

    :cond_36
    move v0, v3

    :goto_37
    if-nez v0, :cond_4e

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "SOFTAP_CELLULAR_DUN_TIME_OUT rcvd, isNetworkHasDunCapable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 384
    :cond_4e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DUN callback is not received, need to show popup message,mCallbackSoftApState:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isDunCheckRequired:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isUpstreamCellular:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isNetworkHasDunCapable:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/16 v0, 0xd

    if-ne p1, v0, :cond_123

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisUpstreamCellular(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_123

    .line 386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 387
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.wifi.mobileap.WifiApWarning"

    .line 388
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 389
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    .line 390
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3b

    const-string v1, "wifiap_warning_dialog_type"

    .line 391
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_123

    .line 396
    :pswitch_ca
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetmIsTurnOnScanMode()Z

    move-result p1

    if-eqz p1, :cond_123

    const-string p1, "TURN_OFF_SCAN_TIME_OUT"

    .line 397
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfputmIsTurnOnScanMode(Z)V

    .line 399
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mgetAOSPWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/net/wifi/WifiManager;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    goto :goto_123

    .line 403
    :pswitch_e2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_123

    const-string p1, "RESET_SOFTAP_TIME_OUT"

    .line 404
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmResetSoftAp(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 406
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/16 v3, 0xa

    if-eq p1, v3, :cond_112

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/16 v3, 0xb

    if-eq p1, v3, :cond_112

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/16 v3, 0xe

    if-ne p1, v3, :cond_123

    .line 409
    :cond_112
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    move-result p0

    if-nez p0, :cond_123

    const-string p0, "enabled startTetheredHotspot : failed"

    .line 410
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_123
    :goto_123
    return-void

    :pswitch_data_124
    .packed-switch 0x64
        :pswitch_e2
        :pswitch_ca
        :pswitch_c
    .end packed-switch
.end method
