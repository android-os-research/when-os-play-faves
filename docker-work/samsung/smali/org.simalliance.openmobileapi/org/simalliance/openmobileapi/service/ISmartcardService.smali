.class public interface abstract Lorg/simalliance/openmobileapi/service/ISmartcardService;
.super Ljava/lang/Object;
.source "ISmartcardService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardService$_Parcel;,
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Stub;,
        Lorg/simalliance/openmobileapi/service/ISmartcardService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardService"


# virtual methods
.method public abstract getReader(Ljava/lang/String;Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReaders()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;Lorg/simalliance/openmobileapi/service/ISmartcardServiceCallback;Lorg/simalliance/openmobileapi/service/SmartcardError;)[Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
