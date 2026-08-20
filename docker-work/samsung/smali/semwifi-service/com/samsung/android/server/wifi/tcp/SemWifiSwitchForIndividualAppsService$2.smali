.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;
.super Landroid/database/ContentObserver;
.source "SemWifiSwitchForIndividualAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->registerForSwitchForIndividualAppsChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Landroid/os/Handler;)V
    .registers 3

    .line 563
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 566
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_for_individual_apps_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    move v0, v2

    :goto_17
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SwitchForIndividualApps changed - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemWifiSwitchForIndividualAppsService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    new-instance p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;

    const-string v0, "Settings"

    invoke-direct {p1, v2, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;-><init>(ILjava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEnabled(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v0, 0x7

    goto :goto_49

    :cond_47
    const/16 v0, 0x9

    .line 573
    :goto_49
    iput v0, p1, Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;->actionResult:I

    .line 574
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {v0, p1, v2}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$msendBigDataFeatureForTCPE(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Lcom/samsung/android/server/wifi/tcp/SemWifiTcpMonitorInfo;Z)V

    .line 576
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Z

    move-result p1

    if-nez p1, :cond_6c

    .line 577
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmSwitchForIndividualAppsEverDetected(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;Z)V

    .line 578
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_switch_for_individual_apps_ever_detected"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    :cond_6c
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$2;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$mupdateMonitoringOperation(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    return-void
.end method
