.class public abstract Landroid/hardware/power/IPower$Stub;
.super Landroid/os/Binder;
.source "IPower.java"

# interfaces
.implements Landroid/hardware/power/IPower;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPower;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPower$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_createHintSession:I = 0x5

.field public static final TRANSACTION_getHintSessionPreferredRate:I = 0x6

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_isBoostSupported:I = 0x4

.field public static final TRANSACTION_isModeSupported:I = 0x2

.field public static final TRANSACTION_setBoost:I = 0x3

.field public static final TRANSACTION_setMode:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 58
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 59
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 60
    sget-object v0, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPower;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 71
    :cond_4
    sget-object v0, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 72
    instance-of v1, v0, Landroid/hardware/power/IPower;

    if-eqz v1, :cond_13

    .line 73
    check-cast v0, Landroid/hardware/power/IPower;

    return-object v0

    .line 75
    :cond_13
    new-instance v0, Landroid/hardware/power/IPower$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/power/IPower$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    sget-object v0, Landroid/hardware/power/IPower;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 85
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_9e

    packed-switch p1, :pswitch_data_ac

    .line 174
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 91
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 96
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-interface {p0}, Landroid/hardware/power/IPower;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 102
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-interface {p0}, Landroid/hardware/power/IPower;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 167
    :pswitch_32
    invoke-interface {p0}, Landroid/hardware/power/IPower;->getHintSessionPreferredRate()J

    move-result-wide p0

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_9d

    .line 152
    :pswitch_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 160
    invoke-interface/range {v2 .. v7}, Landroid/hardware/power/IPower;->createHintSession(II[IJ)Landroid/hardware/power/IPowerHintSession;

    move-result-object p0

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    goto :goto_9d

    .line 142
    :pswitch_5c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 144
    invoke-interface {p0, p1}, Landroid/hardware/power/IPower;->isBoostSupported(I)Z

    move-result p0

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    .line 132
    :pswitch_6e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 136
    invoke-interface {p0, p1, p3}, Landroid/hardware/power/IPower;->setBoost(II)V

    goto :goto_9d

    .line 122
    :pswitch_7d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 124
    invoke-interface {p0, p1}, Landroid/hardware/power/IPower;->isModeSupported(I)Z

    move-result p0

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_9d

    .line 112
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p3

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 116
    invoke-interface {p0, p1, p3}, Landroid/hardware/power/IPower;->setMode(IZ)V

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
        :pswitch_8f
        :pswitch_7d
        :pswitch_6e
        :pswitch_5c
        :pswitch_3d
        :pswitch_32
    .end packed-switch
.end method
