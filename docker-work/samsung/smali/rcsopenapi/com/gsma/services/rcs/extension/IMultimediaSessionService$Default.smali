.class public Lcom/gsma/services/rcs/extension/IMultimediaSessionService$Default;
.super Ljava/lang/Object;
.source "IMultimediaSessionService.java"

# interfaces
.implements Lcom/gsma/services/rcs/extension/IMultimediaSessionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/extension/IMultimediaSessionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method

.method public addEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    return-void
.end method

.method public addEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/extension/IMultimediaSessionServiceConfiguration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMessagingSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamingSession(Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .registers 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStreamingSessions(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "serviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public initiateMessagingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[Ljava/lang/String;[Ljava/lang/String;)Lcom/gsma/services/rcs/extension/IMultimediaMessagingSession;
    .registers 6
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "acceptType"    # [Ljava/lang/String;
    .param p4, "acceptWrappedType"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public initiateStreamingSession(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/extension/IMultimediaStreamingSession;
    .registers 4
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public isServiceRegistered()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public removeEventListener2(Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaMessagingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    return-void
.end method

.method public removeEventListener3(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public sendInstantMultimediaMessage(Ljava/lang/String;Lcom/gsma/services/rcs/contact/ContactId;[BLjava/lang/String;)V
    .registers 5
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p3, "content"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    return-void
.end method

.method public setInactivityTimeout(J)V
    .registers 3
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    return-void
.end method
