.class Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V
    .registers 2

    .line 454
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 457
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6d

    const-string p1, "SemWifiApConfigStore"

    const-string p2, "Mobile Hotspot Reset Settings called"

    .line 458
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mgetTimeStamp(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":Mobile Hotspot Reset Settings called\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mdumpToLogFile(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;Ljava/lang/String;Z)V

    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "hotspot_enabled_history"

    const-string v1, ""

    invoke-static {p1, p2, v1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$mremoveDummyFile(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)V

    .line 462
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_last_2g_channel"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 463
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_ap_disable_random_mac"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 467
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApConfigStore;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "softap_modified"

    const-string p2, "1"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    return-void
.end method
