.class Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;
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

    .line 592
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 595
    iget-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_switch_for_individual_apps_detection_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fputmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;I)V

    .line 597
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDetectionMode changed - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService$3;->this$0:Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;->-$$Nest$fgetmDetectionMode(Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiSwitchForIndividualAppsService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
