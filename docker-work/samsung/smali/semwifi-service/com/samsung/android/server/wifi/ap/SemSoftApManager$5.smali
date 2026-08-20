.class Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SemSoftApManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)V
    .registers 2

    .line 740
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 742
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 743
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isDunCheckRequired:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemSoftApManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 744
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xd

    const-string v3, "networkInfo"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_7d

    .line 745
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    if-eqz p1, :cond_44

    .line 746
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    :cond_44
    if-eqz p1, :cond_4f

    .line 748
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object p2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, p2, :cond_4f

    goto :goto_50

    :cond_4f
    move v4, v5

    :goto_50
    if-eqz v4, :cond_239

    .line 750
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmCallbackSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    if-ne p1, v2, :cond_239

    .line 751
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object p1

    const/16 p2, 0x66

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_239

    .line 752
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetisDunCheckRequired(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    if-eqz p1, :cond_239

    .line 753
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmHostapdWorkHandler(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;

    move-result-object p0

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p2, v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$SemSoftApHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_239

    :cond_7d
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 758
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "wifi_state"

    if-eqz v0, :cond_125

    .line 759
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const/16 v0, 0xe

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    const-string p1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 760
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 761
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v2, "android.net.wifi.extra.WIFI_AP_MODE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmSoftApMode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onreceive WIFI_AP_STATE_CHANGED_ACTION] apState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const-string v1, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Ljava/lang/String;)V

    .line 764
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mhandleModemPowerBackoff(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 765
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NEWCO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f0

    const-string v0, "com.samsung.android.app.mhswrappermtr"

    const-string v1, "com.samsung.android.app.mhswrappermtr.MHSWidget"

    .line 766
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_10e

    .line 769
    :cond_f0
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TMO"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10e

    const-string v0, "com.samsung.android.app.mhswrappertmo"

    const-string v1, "com.samsung.android.app.mhswrappertmo.MHSWidget"

    .line 770
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 771
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 773
    :cond_10e
    :goto_10e
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApMode(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, v0, v1, p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$mhandleSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;IILjava/lang/String;I)V

    goto/16 :goto_239

    :cond_125
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 774
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 775
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "airplane_mode_on"

    invoke-static {p2, v0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_140

    goto :goto_141

    :cond_140
    move v4, v5

    :goto_141
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 777
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isAirplaneMode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmAirplaneModeOn(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->handleAirplaneMode(Z)V

    goto/16 :goto_239

    :cond_169
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 779
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f4

    .line 780
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    const/4 v0, 0x4

    invoke-virtual {p2, v6, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmWifiState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;I)V

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mSoftApState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "wifistate : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "mIsWifiSharingModeEnabled:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 784
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->addSemSoftApDumpLog(Ljava/lang/String;)V

    .line 786
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiInjector(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/server/wifi/SemWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharing()Z

    move-result p1

    if-eqz p1, :cond_239

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmIsWifiSharingModeEnabled(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p1

    if-nez p1, :cond_239

    .line 787
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_1e0

    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSoftApState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    if-ne p1, v2, :cond_239

    :cond_1e0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmWifiState(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_239

    .line 790
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v5}, Lcom/samsung/android/wifi/SemWifiManager;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    goto :goto_239

    :cond_1f4
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 793
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_239

    .line 794
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 795
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p2

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p2, v0, :cond_210

    const-string p0, "Ignore p2p CONNECTING state!!!!"

    .line 796
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 799
    :cond_210
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_21b

    goto :goto_21c

    :cond_21b
    move v4, v5

    :goto_21c
    invoke-static {p2, v4}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fputmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;Z)V

    .line 800
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "is P2pConnected: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemSoftApManager$5;->this$0:Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->-$$Nest$fgetmP2pConnected(Lcom/samsung/android/server/wifi/ap/SemSoftApManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_239
    :goto_239
    return-void
.end method
