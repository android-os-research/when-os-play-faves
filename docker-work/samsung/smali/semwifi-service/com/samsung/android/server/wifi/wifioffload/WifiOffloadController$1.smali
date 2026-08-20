.class Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiOffloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/samsung/android/server/wifi/SemFrameworkFacade;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 115
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "wifi_state"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    const/4 p1, 0x4

    .line 117
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 118
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1f

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1e

    goto :goto_1f

    :cond_1e
    move v2, v3

    :cond_1f
    :goto_1f
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiEnabled:Z

    if-eqz v2, :cond_61

    .line 121
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsTimerRunning:Z

    goto :goto_61

    :cond_26
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    const-string p1, "networkInfo"

    .line 123
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 124
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_41

    goto :goto_42

    :cond_41
    move v2, v3

    :goto_42
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiConnected:Z

    goto :goto_61

    :cond_45
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    const/16 p1, 0xe

    .line 127
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 128
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController$1;->this$0:Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;

    const/16 p2, 0xc

    if-eq p1, p2, :cond_5f

    const/16 p2, 0xd

    if-ne p1, p2, :cond_5e

    goto :goto_5f

    :cond_5e
    move v2, v3

    :cond_5f
    :goto_5f
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/wifioffload/WifiOffloadController;->mIsWifiApEnabled:Z

    :cond_61
    :goto_61
    return-void
.end method
