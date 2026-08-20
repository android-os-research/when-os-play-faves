.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;
.super Landroid/database/ContentObserver;
.source "SemWifiApSmartBleScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;Landroid/os/Handler;)V
    .registers 3

    .line 1342
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 11

    .line 1344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_smart_tethering_settings"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1345
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_client_smart_tethering_settings"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1346
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_smart_d2d_mhs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1347
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "client_advanced_autohotspot_run"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1348
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v5

    .line 1349
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_8f

    if-ne p1, v7, :cond_8f

    .line 1351
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1353
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mWifiApSmart_AutoHotSpot_SwitchObserver , not logged in but MST 1"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":\t mWifiApSmart_AutoHotSpot_SwitchObserver , not logged in but MST 1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void

    .line 1358
    :cond_8f
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mWifiApSmart_AutoHotSpot_SwitchObserver is ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "],adv_CST:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":\t mWifiApSmart_AutoHotSpot_SwitchObserver  MST :"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",CST: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",D2D:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",isNearByEnabled:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.samsung.android.server.wifi.softap.smarttethering.changed"

    .line 1361
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1362
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x3

    if-ne p1, v7, :cond_112

    .line 1364
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "autohotspot_saved_state"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1365
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fputAesKeyRetryNumber(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;I)V

    .line 1367
    :cond_112
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v1

    const/4 v5, 0x2

    if-eqz v1, :cond_13c

    .line 1368
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_167

    .line 1369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1370
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v5, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_167

    :cond_13c
    if-nez v2, :cond_156

    if-nez v4, :cond_156

    if-nez p1, :cond_156

    if-nez v3, :cond_156

    .line 1374
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_167

    .line 1375
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_167

    .line 1377
    :cond_156
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_167

    .line 1378
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1380
    :cond_167
    :goto_167
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoHotspot state changed. sendBroadcastForMDE"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$3;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->sendBroadcastForMDE(Landroid/content/Context;)V

    return-void
.end method
