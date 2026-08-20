.class public Lorg/simalliance/openmobileapi/service/ITerminalService$Default;
.super Ljava/lang/Object;
.source "ITerminalService.java"

# interfaces
.implements Lorg/simalliance/openmobileapi/service/ITerminalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/simalliance/openmobileapi/service/ITerminalService;
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

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAtr()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeEventOccurredAction()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeStateChangedAction()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalCloseBasicChannel(Ljava/lang/String;)V
    .registers 2
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public internalCloseLogicalChannel(ILorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)V
    .registers 4
    .param p1, "channelNumber"    # I
    .param p2, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 33
    return-void
.end method

.method public internalOpenLogicalChannel([BBLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    .registers 6
    .param p1, "aid"    # [B
    .param p2, "p2"    # B
    .param p3, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .param p4, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method

.method public internalTransmit([BLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)[B
    .registers 5
    .param p1, "command"    # [B
    .param p2, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .param p3, "callerPkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCardPresent()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public simIOExchange(ILjava/lang/String;[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    .registers 6
    .param p1, "fileID"    # I
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "cmd"    # [B
    .param p4, "error"    # Lorg/simalliance/openmobileapi/service/SmartcardError;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method
