.class public abstract Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub;
.super Landroid/os/Binder;
.source "ISehFace.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehFace;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/ISehFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_createSession:I = 0x2

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getServicePid:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 45
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 46
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/face/ISehFace;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 57
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 58
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;

    if-eqz v1, :cond_13

    .line 59
    check-cast v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;

    return-object v0

    .line 61
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 69
    sget-object v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 71
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_5e

    goto :goto_2b

    .line 77
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 82
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 88
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_53

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 105
    :cond_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/biometrics/face/ISessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/face/ISessionCallback;

    move-result-object v0

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 111
    invoke-interface {p0, p1, p4, v0}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Lvendor/samsung/hardware/biometrics/face/ISehSession;

    move-result-object p0

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_5d

    .line 97
    :cond_53
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/face/ISehFace;->getServicePid()I

    move-result p0

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5d
    return v1

    :sswitch_data_5e
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
