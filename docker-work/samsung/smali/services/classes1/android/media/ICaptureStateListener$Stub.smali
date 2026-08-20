.class public abstract Landroid/media/ICaptureStateListener$Stub;
.super Landroid/os/Binder;
.source "ICaptureStateListener.java"

# interfaces
.implements Landroid/media/ICaptureStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ICaptureStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ICaptureStateListener$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_setCaptureState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    sget-object v0, Landroid/media/ICaptureStateListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/ICaptureStateListener;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 36
    :cond_4
    sget-object v0, Landroid/media/ICaptureStateListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 37
    instance-of v1, v0, Landroid/media/ICaptureStateListener;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Landroid/media/ICaptureStateListener;

    return-object v0

    .line 40
    :cond_13
    new-instance v0, Landroid/media/ICaptureStateListener$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/media/ICaptureStateListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    sget-object v0, Landroid/media/ICaptureStateListener;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_27

    if-eq p1, v1, :cond_19

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 65
    :cond_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 67
    invoke-interface {p0, p1}, Landroid/media/ICaptureStateListener;->setCaptureState(Z)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 56
    :cond_27
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
