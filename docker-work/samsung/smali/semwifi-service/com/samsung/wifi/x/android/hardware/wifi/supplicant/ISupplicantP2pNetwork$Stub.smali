.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub;
.super Landroid/os/Binder;
.source "ISupplicantP2pNetwork.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getBssid:I = 0x1

.field static final TRANSACTION_getClientList:I = 0x2

.field static final TRANSACTION_getId:I = 0x3

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceName:I = 0x4

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getSsid:I = 0x5

.field static final TRANSACTION_getType:I = 0x6

.field static final TRANSACTION_isCurrent:I = 0x7

.field static final TRANSACTION_isGroupOwner:I = 0x8

.field static final TRANSACTION_isPersistent:I = 0x9

.field static final TRANSACTION_setClientList:I = 0xa


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 75
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub;->markVintfStability()V

    .line 77
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 89
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    if-eqz v1, :cond_13

    .line 90
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;

    return-object v0

    .line 92
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 100
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 102
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_a4

    packed-switch p1, :pswitch_data_b2

    .line 199
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 108
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 113
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 119
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 192
    :pswitch_32
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MacAddress;

    .line 193
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->setClientList([Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MacAddress;)V

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a3

    .line 184
    :pswitch_41
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->isPersistent()Z

    move-result p0

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    .line 177
    :pswitch_4c
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->isGroupOwner()Z

    move-result p0

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    .line 170
    :pswitch_57
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->isCurrent()Z

    move-result p0

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_a3

    .line 163
    :pswitch_62
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getType()I

    move-result p0

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a3

    .line 156
    :pswitch_6d
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getSsid()[B

    move-result-object p0

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_a3

    .line 149
    :pswitch_78
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a3

    .line 142
    :pswitch_83
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getId()I

    move-result p0

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a3

    .line 135
    :pswitch_8e
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getClientList()[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/MacAddress;

    move-result-object p0

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_a3

    .line 128
    :pswitch_99
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pNetwork;->getBssid()[B

    move-result-object p0

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :goto_a3
    return v1

    :sswitch_data_a4
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_99
        :pswitch_8e
        :pswitch_83
        :pswitch_78
        :pswitch_6d
        :pswitch_62
        :pswitch_57
        :pswitch_4c
        :pswitch_41
        :pswitch_32
    .end packed-switch
.end method
