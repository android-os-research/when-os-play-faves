.class public abstract Landroid/net/INetworkMonitor$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitor$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_forceReevaluation:I = 0x5

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_launchCaptivePortalApp:I = 0x2

.field public static final TRANSACTION_notifyCaptivePortalAppFinished:I = 0x3

.field public static final TRANSACTION_notifyDnsResponse:I = 0x7

.field public static final TRANSACTION_notifyLinkPropertiesChanged:I = 0xa

.field public static final TRANSACTION_notifyNetworkCapabilitiesChanged:I = 0xb

.field public static final TRANSACTION_notifyNetworkConnected:I = 0x8

.field public static final TRANSACTION_notifyNetworkConnectedParcel:I = 0xc

.field public static final TRANSACTION_notifyNetworkDisconnected:I = 0x9

.field public static final TRANSACTION_notifyPrivateDnsChanged:I = 0x6

.field public static final TRANSACTION_setAcceptPartialConnectivity:I = 0x4

.field public static final TRANSACTION_start:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 73
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 74
    sget-object v0, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_4
    sget-object v0, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 86
    instance-of v1, v0, Landroid/net/INetworkMonitor;

    if-eqz v1, :cond_13

    .line 87
    check-cast v0, Landroid/net/INetworkMonitor;

    return-object v0

    .line 89
    :cond_13
    new-instance v0, Landroid/net/INetworkMonitor$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitor$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 97
    sget-object v0, Landroid/net/INetworkMonitor;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 99
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_9e

    packed-switch p1, :pswitch_data_ac

    .line 203
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 105
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 110
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 116
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 197
    :pswitch_32
    sget-object p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/networkstack/aidl/NetworkMonitorParameters;

    .line 198
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyNetworkConnectedParcel(Landroid/net/networkstack/aidl/NetworkMonitorParameters;)V

    goto :goto_9d

    .line 190
    :pswitch_3e
    sget-object p1, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 191
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    goto :goto_9d

    .line 183
    :pswitch_4a
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    .line 184
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    goto :goto_9d

    .line 177
    :pswitch_56
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V

    goto :goto_9d

    .line 169
    :pswitch_5a
    sget-object p1, Landroid/net/LinkProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/LinkProperties;

    .line 171
    sget-object p3, Landroid/net/NetworkCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkCapabilities;

    .line 172
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    goto :goto_9d

    .line 162
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 163
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V

    goto :goto_9d

    .line 155
    :pswitch_76
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    .line 156
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V

    goto :goto_9d

    .line 148
    :pswitch_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 149
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V

    goto :goto_9d

    .line 142
    :pswitch_8a
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V

    goto :goto_9d

    .line 136
    :pswitch_8e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 137
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V

    goto :goto_9d

    .line 130
    :pswitch_96
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V

    goto :goto_9d

    .line 125
    :pswitch_9a
    invoke-interface {p0}, Landroid/net/INetworkMonitor;->start()V

    :goto_9d
    return v1

    :sswitch_data_9e
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x1
        :pswitch_9a
        :pswitch_96
        :pswitch_8e
        :pswitch_8a
        :pswitch_82
        :pswitch_76
        :pswitch_6e
        :pswitch_5a
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
