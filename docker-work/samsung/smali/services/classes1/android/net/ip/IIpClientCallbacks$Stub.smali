.class public abstract Landroid/net/ip/IIpClientCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpClientCallbacks.java"

# interfaces
.implements Landroid/net/ip/IIpClientCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClientCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_installPacketFilter:I = 0xa

.field public static final TRANSACTION_onIpClientCreated:I = 0x1

.field public static final TRANSACTION_onLinkPropertiesChange:I = 0x7

.field public static final TRANSACTION_onNewDhcpResults:I = 0x4

.field public static final TRANSACTION_onPostDhcpAction:I = 0x3

.field public static final TRANSACTION_onPreDhcpAction:I = 0x2

.field public static final TRANSACTION_onPreconnectionStart:I = 0xe

.field public static final TRANSACTION_onProvisioningFailure:I = 0x6

.field public static final TRANSACTION_onProvisioningSuccess:I = 0x5

.field public static final TRANSACTION_onQuit:I = 0x9

.field public static final TRANSACTION_onReachabilityFailure:I = 0xf

.field public static final TRANSACTION_onReachabilityLost:I = 0x8

.field public static final TRANSACTION_setFallbackMulticastFilter:I = 0xc

.field public static final TRANSACTION_setNeighborDiscoveryOffload:I = 0xd

.field public static final TRANSACTION_startReadPacketFilter:I = 0xb


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 83
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    instance-of v1, v0, Landroid/net/ip/IIpClientCallbacks;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/net/ip/IIpClientCallbacks;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/ip/IIpClientCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Landroid/net/ip/IIpClientCallbacks;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_b6

    packed-switch p1, :pswitch_data_c4

    .line 231
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
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 225
    :pswitch_32
    sget-object p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;

    .line 226
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityFailure(Landroid/net/networkstack/aidl/ip/ReachabilityLossInfoParcelable;)V

    goto/16 :goto_b5

    .line 218
    :pswitch_3f
    sget-object p1, Landroid/net/Layer2PacketParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 219
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onPreconnectionStart(Ljava/util/List;)V

    goto/16 :goto_b5

    .line 211
    :pswitch_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 212
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->setNeighborDiscoveryOffload(Z)V

    goto :goto_b5

    .line 204
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 205
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->setFallbackMulticastFilter(Z)V

    goto :goto_b5

    .line 198
    :pswitch_5a
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->startReadPacketFilter()V

    goto :goto_b5

    .line 192
    :pswitch_5e
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 193
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->installPacketFilter([B)V

    goto :goto_b5

    .line 186
    :pswitch_66
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onQuit()V

    goto :goto_b5

    .line 180
    :pswitch_6a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onReachabilityLost(Ljava/lang/String;)V

    goto :goto_b5

    .line 173
    :pswitch_72
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    .line 174
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onLinkPropertiesChange(Landroid/net/LinkProperties;)V

    goto :goto_b5

    .line 166
    :pswitch_7e
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    .line 167
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningFailure(Landroid/net/LinkProperties;)V

    goto :goto_b5

    .line 159
    :pswitch_8a
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    .line 160
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onProvisioningSuccess(Landroid/net/LinkProperties;)V

    goto :goto_b5

    .line 152
    :pswitch_96
    sget-object p1, Landroid/net/DhcpResultsParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/DhcpResultsParcelable;

    .line 153
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onNewDhcpResults(Landroid/net/DhcpResultsParcelable;)V

    goto :goto_b5

    .line 146
    :pswitch_a2
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onPostDhcpAction()V

    goto :goto_b5

    .line 141
    :pswitch_a6
    invoke-interface {p0}, Landroid/net/ip/IIpClientCallbacks;->onPreDhcpAction()V

    goto :goto_b5

    .line 135
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/ip/IIpClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClient;

    move-result-object p1

    .line 136
    invoke-interface {p0, p1}, Landroid/net/ip/IIpClientCallbacks;->onIpClientCreated(Landroid/net/ip/IIpClient;)V

    :goto_b5
    return v1

    :sswitch_data_b6
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_c4
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a6
        :pswitch_a2
        :pswitch_96
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_6a
        :pswitch_66
        :pswitch_5e
        :pswitch_5a
        :pswitch_52
        :pswitch_4a
        :pswitch_3f
        :pswitch_32
    .end packed-switch
.end method
