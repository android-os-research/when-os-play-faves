.class Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiServiceImpl;
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

    .line 527
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 530
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 532
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 533
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mhandleShutDown(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)V

    goto :goto_75

    :cond_28
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 534
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 535
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmIsNoSimState(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Z

    move-result p1

    if-eqz p1, :cond_75

    .line 536
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$fgetmClientModeManager(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;)Lcom/samsung/android/server/wifi/SemClientModeManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->setTelephonyServiceState(Landroid/telephony/ServiceState;)V

    goto :goto_75

    :cond_43
    const-string v0, "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

    .line 538
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-eqz v0, :cond_5e

    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 539
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 541
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 542
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 541
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    goto :goto_75

    :cond_5e
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    const-string p1, "android.telephony.extra.PHONE_IN_EMERGENCY_CALL"

    .line 544
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 546
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    .line 547
    invoke-static {p1}, Lcom/samsung/android/server/wifi/diagnostics/ReportUtil;->getReportDataForChangeState(Z)Landroid/os/Bundle;

    move-result-object p1

    .line 546
    invoke-static {p0, v1, p1}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->-$$Nest$mreport(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;ILandroid/os/Bundle;)V

    :cond_75
    :goto_75
    return-void
.end method
