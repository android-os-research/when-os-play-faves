.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;
.super Landroid/os/Binder;
.source "ISupplicantStaNetworkCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onNetworkEapIdentityRequest:I = 0x1

.field static final TRANSACTION_onNetworkEapSimGsmAuthRequest:I = 0x2

.field static final TRANSACTION_onNetworkEapSimUmtsAuthRequest:I = 0x3

.field static final TRANSACTION_onServerCertificateAvailable:I = 0x5

.field static final TRANSACTION_onTransitionDisable:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;->markVintfStability()V

    .line 53
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 76
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_76

    goto :goto_2b

    .line 84
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 89
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_72

    const/4 v0, 0x2

    if-eq p1, v0, :cond_66

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_52

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3e

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 131
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    .line 138
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->onServerCertificateAvailable(I[B[B[B)V

    goto :goto_75

    .line 124
    :cond_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 125
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->onTransitionDisable(I)V

    goto :goto_75

    .line 117
    :cond_5a
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimUmtsAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimUmtsAuthParams;

    .line 118
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->onNetworkEapSimUmtsAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimUmtsAuthParams;)V

    goto :goto_75

    .line 110
    :cond_66
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimGsmAuthParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimGsmAuthParams;

    .line 111
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->onNetworkEapSimGsmAuthRequest(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/NetworkRequestEapSimGsmAuthParams;)V

    goto :goto_75

    .line 104
    :cond_72
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaNetworkCallback;->onNetworkEapIdentityRequest()V

    :goto_75
    return v1

    :sswitch_data_76
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
