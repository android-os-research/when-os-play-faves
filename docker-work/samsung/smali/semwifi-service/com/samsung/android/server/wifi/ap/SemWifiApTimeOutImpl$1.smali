.class Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiApTimeOutImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;


# direct methods
.method public static synthetic $r8$lambda$GqduIO2E6wdI-kxR3sZVuK2rs-Y(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V
    .registers 2

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .registers 4

    const-string v0, "STA_COUNT"

    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumClientsChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApTimeOutImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;I)V

    .line 102
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetNumOfClientsConnected(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)I

    move-result p1

    if-lez p1, :cond_30

    .line 103
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    goto :goto_35

    .line 105
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 98
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiThreadRunner()Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    goto :goto_62

    :cond_1d
    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "SemWifiApTimeOutImpl"

    if-eqz p2, :cond_38

    const-string p1, "unplugged --> plugged"

    .line 109
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Z)V

    .line 111
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mcancelTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    goto :goto_62

    :cond_38
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_51

    const-string p1, "plugged --> Unplugged"

    .line 114
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fputmUSBpuggedin(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;Z)V

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$mscheduleTimeoutMessage(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)V

    goto :goto_62

    :cond_51
    const-string p2, "com.samsung.settings.wifi.mobileap.TURNOFF_HOTSPOT"

    .line 118
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 119
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl$1;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApTimeOutImpl;->clearTimeoutNotification(Landroid/content/Context;)V

    :cond_62
    :goto_62
    return-void
.end method
