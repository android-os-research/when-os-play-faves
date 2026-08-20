.class public abstract Landroid/hardware/usb/IUsb$Stub;
.super Landroid/os/Binder;
.source "IUsb.java"

# interfaces
.implements Landroid/hardware/usb/IUsb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsb$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_enableContaminantPresenceDetection:I = 0x1

.field public static final TRANSACTION_enableUsbData:I = 0x2

.field public static final TRANSACTION_enableUsbDataWhileDocked:I = 0x3

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_limitPowerTransfer:I = 0x7

.field public static final TRANSACTION_queryPortStatus:I = 0x4

.field public static final TRANSACTION_resetUsbPort:I = 0x8

.field public static final TRANSACTION_setCallback:I = 0x5

.field public static final TRANSACTION_switchRole:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsb;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    instance-of v1, v0, Landroid/hardware/usb/IUsb;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/hardware/usb/IUsb;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/hardware/usb/IUsb$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/usb/IUsb$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 85
    sget-object v0, Landroid/hardware/usb/IUsb;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_bc

    packed-switch p1, :pswitch_data_ca

    .line 197
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
    invoke-interface {p0}, Landroid/hardware/usb/IUsb;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-interface {p0}, Landroid/hardware/usb/IUsb;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 188
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 192
    invoke-interface {p0, p1, p3, p4}, Landroid/hardware/usb/IUsb;->resetUsbPort(Ljava/lang/String;J)V

    goto/16 :goto_ba

    .line 176
    :pswitch_42
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 181
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-interface {p0, p1, p3, v2, v3}, Landroid/hardware/usb/IUsb;->limitPowerTransfer(Ljava/lang/String;ZJ)V

    goto :goto_ba

    .line 164
    :pswitch_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 166
    sget-object p3, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/hardware/usb/PortRole;

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-interface {p0, p1, p3, v2, v3}, Landroid/hardware/usb/IUsb;->switchRole(Ljava/lang/String;Landroid/hardware/usb/PortRole;J)V

    goto :goto_ba

    .line 156
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/usb/IUsbCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbCallback;

    move-result-object p1

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-interface {p0, p1}, Landroid/hardware/usb/IUsb;->setCallback(Landroid/hardware/usb/IUsbCallback;)V

    goto :goto_ba

    .line 148
    :pswitch_7b
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 150
    invoke-interface {p0, p3, p4}, Landroid/hardware/usb/IUsb;->queryPortStatus(J)V

    goto :goto_ba

    .line 138
    :pswitch_86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 142
    invoke-interface {p0, p1, p3, p4}, Landroid/hardware/usb/IUsb;->enableUsbDataWhileDocked(Ljava/lang/String;J)V

    goto :goto_ba

    .line 126
    :pswitch_95
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 132
    invoke-interface {p0, p1, p3, v2, v3}, Landroid/hardware/usb/IUsb;->enableUsbData(Ljava/lang/String;ZJ)V

    goto :goto_ba

    .line 114
    :pswitch_a8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 120
    invoke-interface {p0, p1, p3, v2, v3}, Landroid/hardware/usb/IUsb;->enableContaminantPresenceDetection(Ljava/lang/String;ZJ)V

    :goto_ba
    return v1

    nop

    :sswitch_data_bc
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_ca
    .packed-switch 0x1
        :pswitch_a8
        :pswitch_95
        :pswitch_86
        :pswitch_7b
        :pswitch_6c
        :pswitch_55
        :pswitch_42
        :pswitch_32
    .end packed-switch
.end method
