.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->setupBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
    .registers 2

    .line 611
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string p1, "UID"

    .line 614
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.net.wifi.TCP_MONITOR_ACTION_USE_MOBILE_DATA"

    .line 615
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    const/4 v3, 0x2

    const-string v4, "SemWifiSwitchForIndividualAppsService"

    const/4 v5, 0x0

    if-eqz v1, :cond_87

    const-string p1, "WIFI_TCP_MONITOR_ACTION_USE_MOBILE_DATA recieved"

    .line 616
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p1

    if-eqz p1, :cond_49

    .line 620
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p1

    const/4 v0, 0x5

    iput v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 621
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    move-result-wide v6

    sub-long/2addr v0, v6

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 623
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    .line 627
    :cond_49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const v0, 0x2120c

    const-string v1, "uid"

    .line 628
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "packageName"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 627
    invoke-virtual {p1, v0, v1, v5, v6}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    .line 631
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 632
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmWifiTransportLayerMonitor(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;

    move-result-object p1

    .line 633
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerMonitor;->resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V

    .line 636
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 637
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1f3

    :cond_87
    const-string v1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_ACTION_SETTINGS"

    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x0

    const-string v7, "TYPE"

    const/4 v8, 0x3

    const/4 v9, 0x4

    const/4 v10, 0x1

    if-eqz v1, :cond_13d

    const-string v0, "WIFI_TCP_MONITOR_ACTION_SETTINGS recieved"

    .line 639
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WIFI_TCP_MONITOR_ACTION_SETTINGS type "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c6

    .line 646
    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v3

    if-eqz v3, :cond_c6

    .line 648
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v6

    .line 649
    iput v1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    goto :goto_d8

    :cond_c6
    if-ne v0, v9, :cond_d8

    .line 650
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v0

    if-eqz v0, :cond_d8

    .line 652
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v6

    .line 653
    iput v9, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    :cond_d8
    :goto_d8
    if-eqz v6, :cond_ef

    .line 657
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v3}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    long-to-int v0, v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 658
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, v6, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    .line 662
    :cond_ef
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 663
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmNotifier(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;

    move-result-object v0

    .line 664
    invoke-virtual {v0, v8}, Lcom/samsung/android/server/wifi/tcp/SemWifiTransportLayerNotificationManager;->removeNotification(I)V

    .line 667
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 672
    :try_start_10f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SwitchForIndividualAppsSettingsActivity"

    .line 673
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10800000

    .line 676
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "show_individual_apps"

    .line 677
    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 678
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 679
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_135} :catch_137

    goto/16 :goto_1f3

    :catch_137
    move-exception p0

    .line 681
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1f3

    :cond_13d
    const-string p1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_DELETE_NOTIFICATION"

    .line 683
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19a

    const-string p1, "WIFI_TCP_MONITOR_DELETE_NOTIFICATION recieved"

    .line 684
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_15f

    .line 689
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p2

    if-eqz p2, :cond_15f

    .line 691
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v6

    goto :goto_180

    :cond_15f
    if-ne p1, v8, :cond_170

    .line 692
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p2

    if-eqz p2, :cond_170

    .line 694
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastAutoSwitchNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v6

    goto :goto_180

    :cond_170
    if-ne p1, v10, :cond_180

    .line 695
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object p2

    if-eqz p2, :cond_180

    .line 697
    iget-object p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastSuggestionNotifiedTcpMonitorInfo(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    move-result-object v6

    :cond_180
    :goto_180
    if-eqz v6, :cond_1f3

    .line 700
    iput p1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 701
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmLastTcpMonitorTime(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-int p1, p1

    div-int/lit16 p1, p1, 0x3e8

    iput p1, v6, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionDuration:I

    .line 702
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0, v6, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    goto :goto_1f3

    :cond_19a
    const-string p1, "com.samsung.android.net.wifi.WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED"

    .line 704
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1bc

    const-string p1, "WIFI_TCP_MONITOR_SWITCHABLE_APP_LIST_CHANGED recieved"

    .line 705
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "UID_LIST"

    .line 707
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 708
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const p2, 0x2120e

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1f3

    :cond_1bc
    const-string p1, "android.samsung.media.action.AUDIO_MODE"

    .line 709
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f3

    const-string p1, "SEM_ACTION_AUDIO_MODE_CHANGED - Enter State"

    .line 711
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mgetAudioManager(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getMode()I

    move-result p1

    if-eq p1, v3, :cond_1d9

    if-eq p1, v8, :cond_1d9

    if-ne p1, v9, :cond_1da

    :cond_1d9
    move v5, v10

    .line 717
    :cond_1da
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SEM_ACTION_AUDIO_MODE_CHANGED - "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$4;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0, v5}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msetVoipOngoing(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    :cond_1f3
    :goto_1f3
    return-void
.end method
