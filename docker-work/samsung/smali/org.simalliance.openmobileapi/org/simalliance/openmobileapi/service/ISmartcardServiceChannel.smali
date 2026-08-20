.class public interface abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel;
.super Ljava/lang/Object;
.source "ISmartcardServiceChannel.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$_Parcel;,
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Stub;,
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceChannel$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardServiceChannel"


# virtual methods
.method public abstract close(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSelectResponse()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isBasicChannel()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isClosed()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract selectNext(Lorg/simalliance/openmobileapi/service/SmartcardError;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract transmit([BLorg/simalliance/openmobileapi/service/SmartcardError;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
