.class public abstract Landroid/hardware/rebootescrow/IRebootEscrow$Stub;
.super Landroid/os/Binder;
.source "IRebootEscrow.java"

# interfaces
.implements Landroid/hardware/rebootescrow/IRebootEscrow;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/rebootescrow/IRebootEscrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_retrieveKey:I = 0x2

.field public static final TRANSACTION_storeKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 45
    sget-object v0, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/rebootescrow/IRebootEscrow;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    sget-object v0, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 57
    instance-of v1, v0, Landroid/hardware/rebootescrow/IRebootEscrow;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Landroid/hardware/rebootescrow/IRebootEscrow;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/rebootescrow/IRebootEscrow$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 68
    sget-object v0, Landroid/hardware/rebootescrow/IRebootEscrow;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_4e

    goto :goto_2b

    .line 76
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 81
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-interface {p0}, Landroid/hardware/rebootescrow/IRebootEscrow;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 87
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-interface {p0}, Landroid/hardware/rebootescrow/IRebootEscrow;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    .line 112
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 105
    :cond_35
    invoke-interface {p0}, Landroid/hardware/rebootescrow/IRebootEscrow;->retrieveKey()[B

    move-result-object p0

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_4d

    .line 97
    :cond_40
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 99
    invoke-interface {p0, p1}, Landroid/hardware/rebootescrow/IRebootEscrow;->storeKey([B)V

    .line 100
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_4d
    return v1

    :sswitch_data_4e
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
