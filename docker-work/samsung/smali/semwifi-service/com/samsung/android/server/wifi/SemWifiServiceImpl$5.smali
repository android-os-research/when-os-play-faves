.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->registerForBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V
    .registers 2

    .line 486
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 489
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$misAirplaneModeEnabled(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z

    move-result p1

    .line 490
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setAirplaneMode(Z)V

    .line 491
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$5;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 492
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object p1

    const/16 p2, 0x8

    .line 491
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    return-void
.end method
