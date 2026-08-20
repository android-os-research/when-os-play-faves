.class public Lcom/sec/ims/volte2/IImsCallSessionEventListener$Default;
.super Ljava/lang/Object;
.source "IImsCallSessionEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IImsCallSessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IImsCallSessionEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 109
    const/4 v0, 0x0

    return-object v0
.end method

.method public notifyReadyToHandleImsCallbacks()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public onCalling()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public onConferenceEstablished()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public onEPdgUnavailable(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .registers 2
    .param p1, "event"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public onEnded(I)V
    .registers 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 55
    return-void
.end method

.method public onEpdgStateChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .registers 4
    .param p1, "error"    # I
    .param p2, "errorString"    # Ljava/lang/String;
    .param p3, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public onEstablished(I)V
    .registers 2
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public onFailure(I)V
    .registers 2
    .param p1, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public onForwarded()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public onHeld(ZZ)V
    .registers 3
    .param p1, "initiator"    # Z
    .param p2, "localHoldTone"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    return-void
.end method

.method public onParticipantAdded(I)V
    .registers 2
    .param p1, "addedSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    return-void
.end method

.method public onParticipantRemoved(I)V
    .registers 2
    .param p1, "removeSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .registers 5
    .param p1, "sessId"    # I
    .param p2, "participant"    # [Ljava/lang/String;
    .param p3, "status"    # [I
    .param p4, "sipError"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 75
    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .registers 3
    .param p1, "src"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .param p2, "dst"    # Lcom/sec/ims/volte2/data/MediaProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public onResumed(Z)V
    .registers 2
    .param p1, "initiator"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public onRingingBack()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public onSessionChanged(I)V
    .registers 2
    .param p1, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    return-void
.end method

.method public onSessionProgress(I)V
    .registers 2
    .param p1, "audioEarlyMediaDir"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .registers 3
    .param p1, "type"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 58
    return-void
.end method

.method public onStopAlertTone()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public onSwitched(I)V
    .registers 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method

.method public onTrying()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .registers 3
    .param p1, "event"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    return-void
.end method

.method public onUssdReceived(II[B)V
    .registers 4
    .param p1, "status"    # I
    .param p2, "dcs"    # I
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public onUssdResponse(I)V
    .registers 2
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method
