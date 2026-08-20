.class public Lcom/android/internal/telecom/ICallDiagnosticService$Default;
.super Ljava/lang/Object;
.source "ICallDiagnosticService.java"

# interfaces
.implements Lcom/android/internal/telecom/ICallDiagnosticService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/ICallDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist callQualityChanged(Ljava/lang/String;Landroid/telephony/CallQuality;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callQuality"    # Landroid/telephony/CallQuality;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist initializeDiagnosticCall(Landroid/telecom/ParcelableCall;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist notifyCallDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist receiveBluetoothCallQualityReport(Landroid/telecom/BluetoothCallQualityReport;)V
    .registers 2
    .param p1, "qualityReport"    # Landroid/telecom/BluetoothCallQualityReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist receiveDeviceToDeviceMessage(Ljava/lang/String;II)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist removeDiagnosticCall(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist setAdapter(Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/ICallDiagnosticServiceAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public blacklist updateCall(Landroid/telecom/ParcelableCall;)V
    .registers 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist updateCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method
