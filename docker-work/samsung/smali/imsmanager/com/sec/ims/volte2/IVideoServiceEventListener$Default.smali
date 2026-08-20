.class public Lcom/sec/ims/volte2/IVideoServiceEventListener$Default;
.super Ljava/lang/Object;
.source "IVideoServiceEventListener.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVideoServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVideoServiceEventListener;
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

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCameraCapabilities(III)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    return-void
.end method

.method public getSession()Lcom/sec/ims/volte2/IImsCallSession;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCameraState(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    return-void
.end method

.method public onChangeCallDataUsage(IJ)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "dataUsage"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 49
    return-void
.end method

.method public onChangePeerDimension(III)V
    .registers 4
    .param p1, "sessionId"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    return-void
.end method

.method public onEmojiState(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    return-void
.end method

.method public onRecordState(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 43
    return-void
.end method

.method public onVideoOrientChanged(I)V
    .registers 2
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 31
    return-void
.end method

.method public onVideoQualityChanged(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "quality"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    return-void
.end method

.method public onVideoState(II)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 19
    return-void
.end method

.method public receiveSessionModifyRequest(ILcom/sec/ims/volte2/data/CallProfile;)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "mediaProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method

.method public receiveSessionModifyResponse(IILcom/sec/ims/volte2/data/CallProfile;Lcom/sec/ims/volte2/data/CallProfile;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "status"    # I
    .param p3, "requestedProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .param p4, "responseProfile"    # Lcom/sec/ims/volte2/data/CallProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 28
    return-void
.end method

.method public setVideoPause(IZ)V
    .registers 3
    .param p1, "sessionId"    # I
    .param p2, "isVideoPause"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 37
    return-void
.end method
