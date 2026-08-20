.class public Landroid/net/sip/ISipSessionListener$Default;
.super Ljava/lang/Object;
.source "ISipSessionListener.java"

# interfaces
.implements Landroid/net/sip/ISipSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/sip/ISipSessionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 132
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist onCallBusy(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public blacklist onCallChangeFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    return-void
.end method

.method public blacklist onCallEnded(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public blacklist onCallEstablished(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    return-void
.end method

.method public blacklist onCallTransferring(Landroid/net/sip/ISipSession;Ljava/lang/String;)V
    .registers 3
    .param p1, "newSession"    # Landroid/net/sip/ISipSession;
    .param p2, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    return-void
.end method

.method public blacklist onCalling(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public blacklist onError(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 84
    return-void
.end method

.method public blacklist onRegistering(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public blacklist onRegistrationDone(Landroid/net/sip/ISipSession;I)V
    .registers 3
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    return-void
.end method

.method public blacklist onRegistrationFailed(Landroid/net/sip/ISipSession;ILjava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "errorCode"    # I
    .param p3, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 121
    return-void
.end method

.method public blacklist onRegistrationTimeout(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    return-void
.end method

.method public blacklist onRinging(Landroid/net/sip/ISipSession;Landroid/net/sip/SipProfile;Ljava/lang/String;)V
    .registers 4
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .param p2, "caller"    # Landroid/net/sip/SipProfile;
    .param p3, "sessionDescription"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public blacklist onRingingBack(Landroid/net/sip/ISipSession;)V
    .registers 2
    .param p1, "session"    # Landroid/net/sip/ISipSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    return-void
.end method
