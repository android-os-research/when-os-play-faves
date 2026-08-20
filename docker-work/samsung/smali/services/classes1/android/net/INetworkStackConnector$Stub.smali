.class public abstract Landroid/net/INetworkStackConnector$Stub;
.super Landroid/os/Binder;
.source "INetworkStackConnector.java"

# interfaces
.implements Landroid/net/INetworkStackConnector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStackConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStackConnector$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_allowTestUid:I = 0x5

.field public static final TRANSACTION_fetchIpMemoryStore:I = 0x4

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_makeDhcpServer:I = 0x1

.field public static final TRANSACTION_makeIpClient:I = 0x3

.field public static final TRANSACTION_makeNetworkMonitor:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    instance-of v1, v0, Landroid/net/INetworkStackConnector;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/net/INetworkStackConnector;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/net/INetworkStackConnector$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkStackConnector$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Landroid/net/INetworkStackConnector;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_9a

    goto :goto_2b

    .line 84
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 89
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-interface {p0}, Landroid/net/INetworkStackConnector;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-interface {p0}, Landroid/net/INetworkStackConnector;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_82

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5a

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4e

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3e

    .line 151
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 143
    :cond_3e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/INetworkStackStatusCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackStatusCallback;

    move-result-object p2

    .line 146
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkStackConnector;->allowTestUid(ILandroid/net/INetworkStackStatusCallback;)V

    goto :goto_99

    .line 136
    :cond_4e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object p1

    .line 137
    invoke-interface {p0, p1}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V

    goto :goto_99

    .line 127
    :cond_5a
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/ip/IIpClientCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/ip/IIpClientCallbacks;

    move-result-object p2

    .line 130
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    goto :goto_99

    .line 116
    :cond_6a
    sget-object p1, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Network;

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/INetworkMonitorCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;

    move-result-object p2

    .line 121
    invoke-interface {p0, p1, p3, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    goto :goto_99

    .line 105
    :cond_82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 107
    sget-object p3, Landroid/net/dhcp/DhcpServingParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/dhcp/DhcpServingParamsParcel;

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/net/dhcp/IDhcpServerCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/dhcp/IDhcpServerCallbacks;

    move-result-object p2

    .line 110
    invoke-interface {p0, p1, p3, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    :goto_99
    return v1

    :sswitch_data_9a
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
