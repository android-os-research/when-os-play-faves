.class public Lcom/gsma/services/rcs/sharing/video/IVideoPlayer$Default;
.super Ljava/lang/Object;
.source "IVideoPlayer.java"

# interfaces
.implements Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/rcs/sharing/video/IVideoPlayer;
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
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCodec()Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalRtpPort()I
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

.method public getSupportedCodecs()[Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public setRemoteInfo(Lcom/gsma/services/rcs/sharing/video/VideoCodec;Ljava/lang/String;II)V
    .registers 5
    .param p1, "codec"    # Lcom/gsma/services/rcs/sharing/video/VideoCodec;
    .param p2, "remoteHost"    # Ljava/lang/String;
    .param p3, "remotePort"    # I
    .param p4, "orientationId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    return-void
.end method
