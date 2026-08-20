.class public abstract Landroid/net/ip/IIpClient$Stub;
.super Landroid/os/Binder;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClient$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_addKeepalivePacketFilter:I = 0xa

.field public static final TRANSACTION_addNattKeepalivePacketFilter:I = 0xd

.field public static final TRANSACTION_completedPreDhcpAction:I = 0x1

.field public static final TRANSACTION_confirmConfiguration:I = 0x2

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_notifyPreconnectionComplete:I = 0xe

.field public static final TRANSACTION_readPacketFilterComplete:I = 0x3

.field public static final TRANSACTION_removeKeepalivePacketFilter:I = 0xb

.field public static final TRANSACTION_setHttpProxy:I = 0x8

.field public static final TRANSACTION_setL2KeyAndGroupHint:I = 0xc

.field public static final TRANSACTION_setMulticastFilter:I = 0x9

.field public static final TRANSACTION_setTcpBufferSizes:I = 0x7

.field public static final TRANSACTION_shutdown:I = 0x4

.field public static final TRANSACTION_startProvisioning:I = 0x5

.field public static final TRANSACTION_stop:I = 0x6

.field public static final TRANSACTION_updateLayer2Information:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    instance-of v1, v0, Landroid/net/ip/IIpClient;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/net/ip/IIpClient;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/net/ip/IIpClient$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ip/IIpClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 106
    sget-object v0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_bc

    packed-switch p1, :pswitch_data_ca

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 114
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 119
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 231
    :pswitch_32
    sget-object p1, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Layer2InformationParcelable;

    .line 232
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V

    goto/16 :goto_bb

    .line 224
    :pswitch_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 225
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V

    goto/16 :goto_bb

    .line 215
    :pswitch_48
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 217
    sget-object p3, Landroid/net/NattKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/NattKeepalivePacketDataParcelable;

    .line 218
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V

    goto :goto_bb

    .line 206
    :pswitch_58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 209
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bb

    .line 199
    :pswitch_64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 200
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V

    goto :goto_bb

    .line 190
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 192
    sget-object p3, Landroid/net/TcpKeepalivePacketDataParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 193
    invoke-interface {p0, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V

    goto :goto_bb

    .line 183
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 184
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V

    goto :goto_bb

    .line 176
    :pswitch_84
    sget-object p1, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ProxyInfo;

    .line 177
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V

    goto :goto_bb

    .line 169
    :pswitch_90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 170
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V

    goto :goto_bb

    .line 163
    :pswitch_98
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->stop()V

    goto :goto_bb

    .line 157
    :pswitch_9c
    sget-object p1, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ProvisioningConfigurationParcelable;

    .line 158
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V

    goto :goto_bb

    .line 151
    :pswitch_a8
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->shutdown()V

    goto :goto_bb

    .line 145
    :pswitch_ac
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 146
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V

    goto :goto_bb

    .line 139
    :pswitch_b4
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->confirmConfiguration()V

    goto :goto_bb

    .line 134
    :pswitch_b8
    invoke-interface {p0}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V

    :goto_bb
    return v1

    :sswitch_data_bc
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_b8
        :pswitch_b4
        :pswitch_ac
        :pswitch_a8
        :pswitch_9c
        :pswitch_98
        :pswitch_90
        :pswitch_84
        :pswitch_7c
        :pswitch_6c
        :pswitch_64
        :pswitch_58
        :pswitch_48
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
