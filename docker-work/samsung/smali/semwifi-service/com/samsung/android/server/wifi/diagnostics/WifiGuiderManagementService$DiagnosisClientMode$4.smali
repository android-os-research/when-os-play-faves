.class Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$4;
.super Landroid/content/BroadcastReceiver;
.source "WifiGuiderManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->setupClientPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$4;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    const-string p1, "WifiGuiderService"

    const-string p2, "package replaced"

    .line 251
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$4;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->-$$Nest$mregisterDefaultDiagnosticsClient(Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;Z)V

    return-void
.end method
