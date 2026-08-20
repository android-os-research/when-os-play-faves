.class Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApSessionDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->registerBR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)V
    .registers 2

    .line 266
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "MAC"

    .line 269
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "DEVICE"

    .line 270
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IP"

    .line 271
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "EVENT"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mac:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApUtils;->getTruncatedMAC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemWifiApSessionDataUsage"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    if-eqz p1, :cond_62

    :try_start_46
    const-string v2, "sta_join"

    .line 275
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_58

    .line 276
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p2, p1, v1, v0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$mwifiApClientConnected(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    .line 278
    :cond_58
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$mwifiApClientDisconnected(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;Ljava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_5d} :catch_5e

    goto :goto_62

    :catch_5e
    move-exception p1

    .line 281
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    :cond_62
    :goto_62
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiManagerProxy()Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApDataUsageWidgetSupported()Z

    move-result p1

    if-eqz p1, :cond_9d

    .line 285
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.sec.mhs.smartmhswidget"

    const-string v0, "com.sec.mhs.smartmhswidget.ManageMobileHotspotWidget"

    .line 286
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 288
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    move-result-object p1

    const/16 p2, 0x67

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->removeMessages(I)V

    .line 289
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$1;->this$0:Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;->-$$Nest$fgetmWifiApDataUsageHandler(Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage;)Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;

    move-result-object p0

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/datausage/SemWifiApSessionDataUsage$SemWifiApDataUsageHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9d
    return-void
.end method
