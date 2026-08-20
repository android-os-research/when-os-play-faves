.class public Landroid/hardware/radio/voice/IRadioVoiceIndication$Default;
.super Ljava/lang/Object;
.source "IRadioVoiceIndication.java"

# interfaces
.implements Landroid/hardware/radio/voice/IRadioVoiceIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/voice/IRadioVoiceIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist callRing(IZLandroid/hardware/radio/voice/CdmaSignalInfoRecord;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "isGsm"    # Z
    .param p3, "record"    # Landroid/hardware/radio/voice/CdmaSignalInfoRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public blacklist callStateChanged(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public blacklist cdmaCallWaiting(ILandroid/hardware/radio/voice/CdmaCallWaiting;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "callWaitingRecord"    # Landroid/hardware/radio/voice/CdmaCallWaiting;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public blacklist cdmaInfoRec(I[Landroid/hardware/radio/voice/CdmaInformationRecord;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "records"    # [Landroid/hardware/radio/voice/CdmaInformationRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public blacklist cdmaOtaProvisionStatus(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public blacklist currentEmergencyNumberList(I[Landroid/hardware/radio/voice/EmergencyNumber;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "emergencyNumberList"    # [Landroid/hardware/radio/voice/EmergencyNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public blacklist enterEmergencyCallbackMode(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public blacklist exitEmergencyCallbackMode(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 2

    .line 69
    const-string v0, ""

    return-object v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 2

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist indicateRingbackTone(IZ)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "start"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public blacklist onSupplementaryServiceIndication(ILandroid/hardware/radio/voice/StkCcUnsolSsResult;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "ss"    # Landroid/hardware/radio/voice/StkCcUnsolSsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public blacklist onUssd(IILjava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "modeType"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public blacklist resendIncallMute(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public blacklist srvccStateNotify(II)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist stkCallControlAlphaNotify(ILjava/lang/String;)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "alpha"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public blacklist stkCallSetup(IJ)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method
