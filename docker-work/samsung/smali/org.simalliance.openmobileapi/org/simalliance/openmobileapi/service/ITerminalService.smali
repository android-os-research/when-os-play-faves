.class public interface abstract Lorg/simalliance/openmobileapi/service/ITerminalService;
.super Ljava/lang/Object;
.source "ITerminalService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ITerminalService$_Parcel;,
        Lorg/simalliance/openmobileapi/service/ITerminalService$Stub;,
        Lorg/simalliance/openmobileapi/service/ITerminalService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ITerminalService"


# virtual methods
.method public abstract getAtr()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSeEventOccurredAction()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSeStateChangedAction()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalCloseBasicChannel(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalCloseLogicalChannel(ILorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalOpenLogicalChannel([BBLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)Lorg/simalliance/openmobileapi/service/OpenLogicalChannelResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract internalTransmit([BLorg/simalliance/openmobileapi/service/SmartcardError;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isCardPresent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract simIOExchange(ILjava/lang/String;[BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
