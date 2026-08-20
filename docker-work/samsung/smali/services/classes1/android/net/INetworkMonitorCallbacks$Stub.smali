.class public abstract Landroid/net/INetworkMonitorCallbacks$Stub;
.super Landroid/os/Binder;
.source "INetworkMonitorCallbacks.java"

# interfaces
.implements Landroid/net/INetworkMonitorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitorCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_hideProvisioningNotification:I = 0x5

.field public static final TRANSACTION_notifyCaptivePortalDataChanged:I = 0x9

.field public static final TRANSACTION_notifyDataStallSuspected:I = 0x8

.field public static final TRANSACTION_notifyNetworkTested:I = 0x2

.field public static final TRANSACTION_notifyNetworkTestedWithExtras:I = 0x7

.field public static final TRANSACTION_notifyPrivateDnsConfigResolved:I = 0x3

.field public static final TRANSACTION_notifyProbeStatusChanged:I = 0x6

.field public static final TRANSACTION_onNetworkMonitorCreated:I = 0x1

.field public static final TRANSACTION_showProvisioningNotification:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitorCallbacks;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 76
    :cond_4
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 77
    instance-of v1, v0, Landroid/net/INetworkMonitorCallbacks;

    if-eqz v1, :cond_13

    .line 78
    check-cast v0, Landroid/net/INetworkMonitorCallbacks;

    return-object v0

    .line 80
    :cond_13
    new-instance v0, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/INetworkMonitorCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 88
    sget-object v0, Landroid/net/INetworkMonitorCallbacks;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 90
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_96

    packed-switch p1, :pswitch_data_a4

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 96
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 101
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 107
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 177
    :pswitch_32
    sget-object p1, Landroid/net/CaptivePortalData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/CaptivePortalData;

    .line 178
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V

    goto :goto_95

    .line 170
    :pswitch_3e
    sget-object p1, Landroid/net/DataStallReportParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/DataStallReportParcelable;

    .line 171
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V

    goto :goto_95

    .line 163
    :pswitch_4a
    sget-object p1, Landroid/net/NetworkTestResultParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTestResultParcelable;

    .line 164
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V

    goto :goto_95

    .line 154
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 157
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyProbeStatusChanged(II)V

    goto :goto_95

    .line 148
    :pswitch_62
    invoke-interface {p0}, Landroid/net/INetworkMonitorCallbacks;->hideProvisioningNotification()V

    goto :goto_95

    .line 140
    :pswitch_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 143
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_95

    .line 133
    :pswitch_72
    sget-object p1, Landroid/net/PrivateDnsConfigParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/PrivateDnsConfigParcel;

    .line 134
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V

    goto :goto_95

    .line 124
    :pswitch_7e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-interface {p0, p1, p2}, Landroid/net/INetworkMonitorCallbacks;->notifyNetworkTested(ILjava/lang/String;)V

    goto :goto_95

    .line 117
    :pswitch_8a
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/net/INetworkMonitor$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkMonitor;

    move-result-object p1

    .line 118
    invoke-interface {p0, p1}, Landroid/net/INetworkMonitorCallbacks;->onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V

    :goto_95
    return v1

    :sswitch_data_96
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_8a
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_62
        :pswitch_56
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
