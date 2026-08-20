.class public abstract Landroid/security/samsungattestation/ISamsungAttestation$Stub;
.super Landroid/os/Binder;
.source "ISamsungAttestation.java"

# interfaces
.implements Landroid/security/samsungattestation/ISamsungAttestation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/samsungattestation/ISamsungAttestation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_attestKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 49
    :cond_4
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 50
    instance-of v1, v0, Landroid/security/samsungattestation/ISamsungAttestation;

    if-eqz v1, :cond_13

    .line 51
    check-cast v0, Landroid/security/samsungattestation/ISamsungAttestation;

    return-object v0

    .line 53
    :cond_13
    new-instance v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 61
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_37

    if-eq p1, v1, :cond_19

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 78
    :cond_19
    sget-object p1, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/system/keystore2/KeyDescriptor;

    .line 80
    sget-object p4, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/hardware/security/keymint/KeyParameter;

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-interface {p0, p1, p4}, Landroid/security/samsungattestation/ISamsungAttestation;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object p0

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v1

    .line 69
    :cond_37
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
