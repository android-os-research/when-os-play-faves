.class Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;
.super Ljava/lang/Object;
.source "WifiGuiderManagementService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;
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

    .line 174
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 3

    .line 177
    iget-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    invoke-static {p2}, Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const/16 p1, 0x64

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 183
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode$2;->this$1:Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->mClientService:Lcom/samsung/android/wifi/ISemWifiDiagnosticsClient;

    const/16 p1, 0x65

    .line 184
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/WifiGuiderManagementService$DiagnosisClientMode;->sendMessage(I)V

    return-void
.end method
