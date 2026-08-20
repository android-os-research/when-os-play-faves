.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
    .registers 2

    .line 619
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 622
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 623
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 624
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21002

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_1d3

    :cond_16
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 625
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 626
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p1, 0x21005

    const/4 v0, 0x4

    const-string v1, "wifi_state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(II)V

    goto/16 :goto_1d3

    :cond_2f
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 628
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x21006

    if-eqz v0, :cond_41

    .line 629
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_1d3

    :cond_41
    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 630
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 631
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_1d3

    :cond_50
    const-string v0, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    .line 632
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetSHOW_DATA_SELECT_POPUP_ON_BOOTUP(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 634
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_1d3

    :cond_67
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 635
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "WifiConnectivityMonitor"

    if-eqz v0, :cond_b2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 636
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d3

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1d3

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCountryIso(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1d3

    .line 638
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Network country change is detected - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCountryIsoCode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    goto/16 :goto_1d3

    :cond_b2
    const-string v0, "android.intent.action.USER_BACKGROUND"

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_cc

    const-string p1, "OWNER is background"

    .line 642
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUserOwner(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 644
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdatePoorNetworkParameters(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    goto/16 :goto_1d3

    :cond_cc
    const-string v0, "android.intent.action.USER_FOREGROUND"

    .line 645
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_e6

    const-string p1, "OWNER is foreground"

    .line 646
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUserOwner(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 648
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdatePoorNetworkParameters(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    goto/16 :goto_1d3

    :cond_e6
    const-string v0, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 649
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 650
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    .line 651
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const-string v4, "VOWIFI"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 652
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IMS_REGISTRATION - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p2

    if-eq p1, p2, :cond_1d3

    .line 654
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto/16 :goto_1d3

    :cond_128
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 656
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_144

    const-string p1, "android.net.wifi.extra.LINK_PROPERTIES"

    .line 657
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    if-eqz p1, :cond_1d3

    .line 659
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p2, 0x21136

    invoke-virtual {p0, p2, v3, v3, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1d3

    :cond_144
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 661
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_175

    .line 662
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p2, 0x2103f

    # invokes: Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->removeMessages(I)V
    invoke-static {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 663
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    const p2, 0x2103e

    invoke-virtual {p1, p2, v3, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(Landroid/os/Message;)V

    .line 664
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p2

    invoke-virtual {p1, p2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setScanStartedOrDone(ZZ)V

    .line 665
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleScanFlag(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    goto :goto_1d3

    :cond_175
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 666
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_188

    const-string p1, "AIRPLANE_MODE_CHANGED"

    .line 667
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->sendMessage(I)V

    goto :goto_1d3

    :cond_188
    const-string v0, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    .line 669
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d3

    const/4 p1, -0x1

    const-string v0, "mode"

    .line 670
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x20

    if-ne p1, p2, :cond_1d3

    .line 672
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleDebug(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 673
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    move-result p1

    if-nez p1, :cond_1bc

    .line 674
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "Please turn on Wi-Fi"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1d3

    .line 676
    :cond_1bc
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misSupportEleDetection(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    move-result p1

    if-nez p1, :cond_1d3

    .line 677
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    move-result-object p0

    const-string p1, "Ele Detection is not supported. Ele doesn\'t work!"

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_1d3
    :goto_1d3
    return-void
.end method
