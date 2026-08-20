.class public abstract Lcom/sec/ims/volte2/ImsCallEventListener;
.super Lcom/sec/ims/volte2/IImsCallEventListener$Stub;
.source "ImsCallEventListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallEnded(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method

.method public onCallEstablished(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public onCallHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;ZZ)V
    .registers 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "local"    # Z
    .param p3, "remote"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    return-void
.end method

.method public onCallModified(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public onCallModifyRequested(Lcom/sec/ims/volte2/data/ImsCallInfo;I)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public onCallResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public onCallRinging(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onCallRingingBack(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public onCallStarted(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;

    .line 22
    return-void
.end method

.method public onCallTrying(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public onConferenceParticipantAdded(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public onConferenceParticipantRemoved(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "participant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public onDedicatedBearerEvent(Lcom/sec/ims/volte2/data/ImsCallInfo;II)V
    .registers 4
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "bearerstate"    # I
    .param p3, "qci"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public onIncomingCall(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 31
    return-void
.end method

.method public onIncomingPreAlerting(Lcom/sec/ims/volte2/data/ImsCallInfo;Ljava/lang/String;)V
    .registers 3
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .param p2, "remoteUri"    # Ljava/lang/String;

    .line 26
    return-void
.end method

.method public onRtpLossRateNoti(IFFI)V
    .registers 5
    .param p1, "interval"    # I
    .param p2, "lossrate"    # F
    .param p3, "jitter"    # F
    .param p4, "notification"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public onVideoAvailable(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public onVideoHeld(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    return-void
.end method

.method public onVideoResumed(Lcom/sec/ims/volte2/data/ImsCallInfo;)V
    .registers 2
    .param p1, "callInfo"    # Lcom/sec/ims/volte2/data/ImsCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method
