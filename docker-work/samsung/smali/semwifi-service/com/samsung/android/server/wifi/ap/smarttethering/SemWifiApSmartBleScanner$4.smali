.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;
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

    .line 1384
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 10

    .line 1386
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_ap_smart_tethering_settings"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wifi_client_smart_tethering_settings"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1388
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_ap_smart_d2d_mhs"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1389
    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "client_advanced_autohotspot_run"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1390
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->isNearByAutohotspotEnabled()Z

    move-result v4

    .line 1391
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiApSmart_Client_SwitchObserver is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Landroid/util/LocalLog;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":\t mWifiApSmart_Client_SwitchObserver  MST :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",CST: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",D2D:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",isNearByEnabled:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1393
    iget-object v5, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getSamsungAccountCount()I

    move-result v5

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-nez v5, :cond_ce

    if-eqz v4, :cond_ce

    .line 1394
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_102

    .line 1395
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    .line 1396
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p0

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v7, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_102

    :cond_ce
    if-nez v0, :cond_f1

    if-nez p1, :cond_f1

    const/4 p1, 0x1

    if-nez v2, :cond_d7

    move v0, p1

    goto :goto_d8

    :cond_d7
    move v0, v1

    :goto_d8
    if-nez v3, :cond_db

    move v1, p1

    :cond_db
    and-int p1, v0, v1

    if-eqz p1, :cond_f1

    .line 1400
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_102

    .line 1401
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    goto :goto_102

    .line 1403
    :cond_f1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p1

    if-eqz p1, :cond_102

    .line 1404
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$4;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;

    move-result-object p0

    invoke-virtual {p0, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartBleScanner$BleWorkHandler;->sendEmptyMessage(I)Z

    :cond_102
    :goto_102
    return-void
.end method
