.class public abstract Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;
.super Landroid/os/Binder;
.source "ISehSupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onBeaconEventAbort:I = 0x5

.field static final TRANSACTION_onBeaconInterval:I = 0x4

.field static final TRANSACTION_onDriverHang:I = 0x2

.field static final TRANSACTION_onEapEvent:I = 0x3

.field static final TRANSACTION_onNetworkAdded:I = 0x6

.field static final TRANSACTION_onNotify:I = 0x8

.field static final TRANSACTION_onNotifyBigdata:I = 0x1

.field static final TRANSACTION_onRoamingChannelListUpdate:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;->markVintfStability()V

    .line 62
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    instance-of v1, v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_a4

    packed-switch p1, :pswitch_data_b2

    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 93
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 98
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-interface {p0}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 183
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p3

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 188
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onNotify(I[I[Ljava/lang/String;)V

    goto :goto_a2

    .line 174
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 177
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onRoamingChannelListUpdate(Ljava/lang/String;[I)V

    goto :goto_a2

    .line 167
    :pswitch_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 168
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onNetworkAdded(I)V

    goto :goto_a2

    .line 160
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 161
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onBeaconEventAbort(I)V

    goto :goto_a2

    .line 143
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v2, p0

    .line 154
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onBeaconInterval(Ljava/lang/String;Ljava/lang/String;IIII)V

    goto :goto_a2

    .line 132
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 137
    invoke-interface {p0, p1, p3, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onEapEvent(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 123
    :pswitch_8b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 126
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onDriverHang(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a2

    .line 114
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 117
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/vendor/samsung/hardware/wifi/supplicant/ISehSupplicantStaIfaceCallback;->onNotifyBigdata(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a2
    return v1

    nop

    :sswitch_data_a4
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_97
        :pswitch_8b
        :pswitch_7b
        :pswitch_5e
        :pswitch_56
        :pswitch_4e
        :pswitch_42
        :pswitch_32
    .end packed-switch
.end method
