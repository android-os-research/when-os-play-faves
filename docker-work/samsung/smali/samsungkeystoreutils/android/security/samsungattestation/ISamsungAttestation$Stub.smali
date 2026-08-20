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
.field static final TRANSACTION_attestKey:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 38
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/security/samsungattestation/ISamsungAttestation;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 46
    if-nez p0, :cond_4

    .line 47
    const/4 v0, 0x0

    return-object v0

    .line 49
    :cond_4
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 50
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/security/samsungattestation/ISamsungAttestation;

    if-eqz v1, :cond_14

    .line 51
    move-object v1, v0

    check-cast v1, Landroid/security/samsungattestation/ISamsungAttestation;

    return-object v1

    .line 53
    :cond_14
    new-instance v1, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/security/samsungattestation/ISamsungAttestation$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 57
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 61
    sget-object v0, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 62
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 63
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    :cond_d
    packed-switch p1, :pswitch_data_3c

    .line 73
    packed-switch p1, :pswitch_data_42

    .line 89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 69
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    return v1

    .line 78
    :pswitch_1c
    sget-object v2, Landroid/system/keystore2/KeyDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyDescriptor;

    .line 80
    .local v2, "_arg0":Landroid/system/keystore2/KeyDescriptor;
    sget-object v3, Landroid/hardware/security/keymint/KeyParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/hardware/security/keymint/KeyParameter;

    .line 81
    .local v3, "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 82
    invoke-virtual {p0, v2, v3}, Landroid/security/samsungattestation/ISamsungAttestation$Stub;->attestKey(Landroid/system/keystore2/KeyDescriptor;[Landroid/hardware/security/keymint/KeyParameter;)[Landroid/hardware/security/keymint/Certificate;

    move-result-object v4

    .line 83
    .local v4, "_result":[Landroid/hardware/security/keymint/Certificate;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 85
    nop

    .line 92
    .end local v2    # "_arg0":Landroid/system/keystore2/KeyDescriptor;
    .end local v3    # "_arg1":[Landroid/hardware/security/keymint/KeyParameter;
    .end local v4    # "_result":[Landroid/hardware/security/keymint/Certificate;
    return v1

    nop

    :pswitch_data_3c
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_1c
    .end packed-switch
.end method
