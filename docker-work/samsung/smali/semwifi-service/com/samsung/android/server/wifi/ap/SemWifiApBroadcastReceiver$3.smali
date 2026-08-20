.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)V
    .registers 2

    .line 336
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5f

    const-string p2, "SemWifiApBroadcastReceiver"

    const-string v0, "soft reset settings"

    .line 340
    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "sem_wifi"

    .line 341
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    if-eqz p2, :cond_32

    .line 342
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingSupported()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 343
    invoke-virtual {p2}, Lcom/samsung/android/wifi/SemWifiManager;->isWifiSharingLiteSupported()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 344
    invoke-virtual {p2, v0}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSharingEnabled(Z)Z

    goto :goto_32

    :cond_2e
    const/4 v1, 0x1

    .line 346
    invoke-virtual {p2, v1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiSharingEnabled(Z)Z

    .line 348
    :cond_32
    :goto_32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$3;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetDEFAULT_TIMEOUT_MOBILEAP(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)I

    move-result p0

    div-int/lit8 p0, p0, 0x3c

    const-string v1, "wifi_ap_timeout_setting"

    invoke-static {p2, v1, p0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "wifi_ap_mobile_data_limit"

    invoke-static {p0, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p2, 0x0

    const-string v1, "wifi_ap_mobile_data_limit_value"

    invoke-static {p0, v1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "wifi_ap_pmf_checked"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5f
    return-void
.end method
