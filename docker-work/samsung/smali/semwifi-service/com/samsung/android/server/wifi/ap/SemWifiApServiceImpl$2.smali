.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    const-string p1, "wifi_state"

    const/16 v0, 0xb

    .line 214
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string p1, "previous_wifi_state"

    .line 216
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string p1, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    .line 221
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "android.net.wifi.extra.WIFI_AP_MODE"

    const/4 v0, -0x1

    .line 222
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 224
    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mhandleWifiApStateChange(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;IIILjava/lang/String;I)V

    return-void
.end method
