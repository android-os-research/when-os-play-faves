.class public abstract Landroid/hardware/usb/IUsbCallback$Stub;
.super Landroid/os/Binder;
.source "IUsbCallback.java"

# interfaces
.implements Landroid/hardware/usb/IUsbCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/usb/IUsbCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/IUsbCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_notifyContaminantEnabledStatus:I = 0x5

.field public static final TRANSACTION_notifyEnableUsbDataStatus:I = 0x3

.field public static final TRANSACTION_notifyEnableUsbDataWhileDockedStatus:I = 0x4

.field public static final TRANSACTION_notifyLimitPowerTransferStatus:I = 0x7

.field public static final TRANSACTION_notifyPortStatusChange:I = 0x1

.field public static final TRANSACTION_notifyQueryPortStatus:I = 0x6

.field public static final TRANSACTION_notifyResetUsbPortStatus:I = 0x8

.field public static final TRANSACTION_notifyRoleSwitchStatus:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    instance-of v1, v0, Landroid/hardware/usb/IUsbCallback;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/hardware/usb/IUsbCallback;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/usb/IUsbCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v4, Landroid/hardware/usb/IUsbCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v6, 0x1

    if-lt p1, v6, :cond_d

    const v5, 0xffffff

    if-gt p1, v5, :cond_d

    .line 87
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_f2

    packed-switch p1, :pswitch_data_100

    .line 215
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 93
    :sswitch_18
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    .line 98
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-interface {p0}, Landroid/hardware/usb/IUsbCallback;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    return v6

    .line 104
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-interface {p0}, Landroid/hardware/usb/IUsbCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v6

    .line 204
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 210
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/hardware/usb/IUsbCallback;->notifyResetUsbPortStatus(Ljava/lang/String;IJ)V

    goto/16 :goto_f0

    .line 190
    :pswitch_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move v3, v4

    move-wide v4, v7

    .line 198
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyLimitPowerTransferStatus(Ljava/lang/String;ZIJ)V

    goto/16 :goto_f0

    .line 178
    :pswitch_62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 184
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/hardware/usb/IUsbCallback;->notifyQueryPortStatus(Ljava/lang/String;IJ)V

    goto/16 :goto_f0

    .line 164
    :pswitch_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move v3, v4

    move-wide v4, v7

    .line 172
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyContaminantEnabledStatus(Ljava/lang/String;ZIJ)V

    goto :goto_f0

    .line 152
    :pswitch_91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 158
    invoke-interface {p0, v1, v3, v4, v5}, Landroid/hardware/usb/IUsbCallback;->notifyEnableUsbDataWhileDockedStatus(Ljava/lang/String;IJ)V

    goto :goto_f0

    .line 138
    :pswitch_a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move v2, v3

    move v3, v4

    move-wide v4, v7

    .line 146
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyEnableUsbDataStatus(Ljava/lang/String;ZIJ)V

    goto :goto_f0

    .line 124
    :pswitch_bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    sget-object v3, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/PortRole;

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v0, p0

    move-object v2, v3

    move v3, v4

    move-wide v4, v7

    .line 132
    invoke-interface/range {v0 .. v5}, Landroid/hardware/usb/IUsbCallback;->notifyRoleSwitchStatus(Ljava/lang/String;Landroid/hardware/usb/PortRole;IJ)V

    goto :goto_f0

    .line 114
    :pswitch_de
    sget-object v1, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/usb/PortStatus;

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 118
    invoke-interface {p0, v1, v3}, Landroid/hardware/usb/IUsbCallback;->notifyPortStatusChange([Landroid/hardware/usb/PortStatus;I)V

    :goto_f0
    return v6

    nop

    :sswitch_data_f2
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_100
    .packed-switch 0x1
        :pswitch_de
        :pswitch_bf
        :pswitch_a4
        :pswitch_91
        :pswitch_76
        :pswitch_62
        :pswitch_46
        :pswitch_32
    .end packed-switch
.end method
