.class public abstract Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub;
.super Landroid/os/Binder;
.source "ISehFingerprint.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_sehRequest:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 41
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 42
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 53
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 54
    instance-of v1, v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    if-eqz v1, :cond_13

    .line 55
    check-cast v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;

    return-object v0

    .line 57
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 65
    sget-object v0, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 67
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_50

    if-eq p1, v1, :cond_31

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 73
    :sswitch_17
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 78
    :sswitch_1b
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 84
    :sswitch_26
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-interface {p0}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 94
    :cond_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 102
    invoke-interface {p0, p1, p4, v0, v2}, Lvendor/samsung/hardware/biometrics/fingerprint/ISehFingerprint;->sehRequest(III[B)Lvendor/samsung/hardware/biometrics/fingerprint/SehResult;

    move-result-object p0

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return v1

    nop

    :sswitch_data_50
    .sparse-switch
        0xfffffe -> :sswitch_26
        0xffffff -> :sswitch_1b
        0x5f4e5446 -> :sswitch_17
    .end sparse-switch
.end method
