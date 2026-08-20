.class public interface abstract Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader;
.super Ljava/lang/Object;
.source "ISmartcardServiceReader.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$_Parcel;,
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Stub;,
        Lorg/simalliance/openmobileapi/service/ISmartcardServiceReader$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "org.simalliance.openmobileapi.service.ISmartcardServiceReader"


# virtual methods
.method public abstract closeSessions(Lorg/simalliance/openmobileapi/service/SmartcardError;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSecureElementPresent()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract openSession(Lorg/simalliance/openmobileapi/service/SmartcardError;)Lorg/simalliance/openmobileapi/service/ISmartcardServiceSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
