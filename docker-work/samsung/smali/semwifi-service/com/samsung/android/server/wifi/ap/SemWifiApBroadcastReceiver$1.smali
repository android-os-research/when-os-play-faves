.class Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;
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

    .line 316
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 319
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.unifiedtp.PROVISION_HOTSPOT_TRIGGER_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x0

    const-string v0, "provision_hotspot_enable"

    .line 320
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 321
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApBroadcastReceiver;)Landroid/content/Context;

    move-result-object p0

    const-string p2, "sem_wifi"

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 p2, 0x0

    .line 322
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    :cond_25
    return-void
.end method
