.class public Lcom/sec/ims/openapi/IOpenApiService$Default;
.super Ljava/lang/Object;
.source "IOpenApiService.java"

# interfaces
.implements Lcom/sec/ims/openapi/IOpenApiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/openapi/IOpenApiService;
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

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    return-void
.end method

.method public registerImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public registerIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public sendSip(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/ims/openapi/ISipDialogListener;)Z
    .registers 5
    .param p1, "impu"    # Lcom/sec/ims/util/ImsUri;
    .param p2, "sipMessage"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public setFeatureTags([Ljava/lang/String;)V
    .registers 2
    .param p1, "featureTags"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method

.method public setupMediaPath([Ljava/lang/String;)V
    .registers 2
    .param p1, "remoteIP"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public unregisterDialogEventListener(Lcom/sec/ims/IDialogEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/IDialogEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 30
    return-void
.end method

.method public unregisterImsCallEventListener(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/volte2/IImsCallEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 24
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/IImsRegistrationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    return-void
.end method

.method public unregisterIncomingSipMessageListener(Lcom/sec/ims/openapi/ISipDialogListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/sec/ims/openapi/ISipDialogListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 18
    return-void
.end method
