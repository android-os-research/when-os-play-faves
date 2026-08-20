.class public abstract Landroid/hardware/power/stats/IPowerStats$Stub;
.super Landroid/os/Binder;
.source "IPowerStats.java"

# interfaces
.implements Landroid/hardware/power/stats/IPowerStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/stats/IPowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getEnergyConsumed:I = 0x4

.field public static final TRANSACTION_getEnergyConsumerInfo:I = 0x3

.field public static final TRANSACTION_getEnergyMeterInfo:I = 0x5

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getPowerEntityInfo:I = 0x1

.field public static final TRANSACTION_getStateResidency:I = 0x2

.field public static final TRANSACTION_readEnergyMeter:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 60
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 61
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 62
    sget-object v0, Landroid/hardware/power/stats/IPowerStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/stats/IPowerStats;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 73
    :cond_4
    sget-object v0, Landroid/hardware/power/stats/IPowerStats;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 74
    instance-of v1, v0, Landroid/hardware/power/stats/IPowerStats;

    if-eqz v1, :cond_13

    .line 75
    check-cast v0, Landroid/hardware/power/stats/IPowerStats;

    return-object v0

    .line 77
    :cond_13
    new-instance v0, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/power/stats/IPowerStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 85
    sget-object v0, Landroid/hardware/power/stats/IPowerStats;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_8a

    packed-switch p1, :pswitch_data_98

    .line 164
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
    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 104
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 155
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 157
    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_88

    .line 147
    :pswitch_44
    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p0

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_88

    .line 138
    :pswitch_4f
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 140
    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_88

    .line 130
    :pswitch_61
    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0

    .line 131
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_88

    .line 121
    :pswitch_6c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 123
    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_88

    .line 113
    :pswitch_7e
    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0

    .line 114
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    :goto_88
    return v1

    nop

    :sswitch_data_8a
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_7e
        :pswitch_6c
        :pswitch_61
        :pswitch_4f
        :pswitch_44
        :pswitch_32
    .end packed-switch
.end method
