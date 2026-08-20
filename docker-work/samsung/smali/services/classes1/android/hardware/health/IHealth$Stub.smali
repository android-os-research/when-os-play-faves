.class public abstract Landroid/hardware/health/IHealth$Stub;
.super Landroid/os/Binder;
.source "IHealth.java"

# interfaces
.implements Landroid/hardware/health/IHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/health/IHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/health/IHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getCapacity:I = 0x7

.field public static final TRANSACTION_getChargeCounterUah:I = 0x4

.field public static final TRANSACTION_getChargeStatus:I = 0x9

.field public static final TRANSACTION_getCurrentAverageMicroamps:I = 0x6

.field public static final TRANSACTION_getCurrentNowMicroamps:I = 0x5

.field public static final TRANSACTION_getDiskStats:I = 0xb

.field public static final TRANSACTION_getEnergyCounterNwh:I = 0x8

.field public static final TRANSACTION_getHealthInfo:I = 0xc

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getStorageInfo:I = 0xa

.field public static final TRANSACTION_registerCallback:I = 0x1

.field public static final TRANSACTION_unregisterCallback:I = 0x2

.field public static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 81
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 82
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 83
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealth;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_4
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 95
    instance-of v1, v0, Landroid/hardware/health/IHealth;

    if-eqz v1, :cond_13

    .line 96
    check-cast v0, Landroid/hardware/health/IHealth;

    return-object v0

    .line 98
    :cond_13
    new-instance v0, Landroid/hardware/health/IHealth$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/health/IHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 108
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_c2

    packed-switch p1, :pswitch_data_d0

    .line 221
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
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 125
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 214
    :pswitch_32
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getHealthInfo()Landroid/hardware/health/HealthInfo;

    move-result-object p0

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    goto/16 :goto_c1

    .line 207
    :pswitch_3e
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getDiskStats()[Landroid/hardware/health/DiskStats;

    move-result-object p0

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto/16 :goto_c1

    .line 200
    :pswitch_4a
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getStorageInfo()[Landroid/hardware/health/StorageInfo;

    move-result-object p0

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_c1

    .line 193
    :pswitch_55
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeStatus()I

    move-result p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c1

    .line 186
    :pswitch_60
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getEnergyCounterNwh()J

    move-result-wide p0

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_c1

    .line 179
    :pswitch_6b
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCapacity()I

    move-result p0

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c1

    .line 172
    :pswitch_76
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentAverageMicroamps()I

    move-result p0

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c1

    .line 165
    :pswitch_81
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getCurrentNowMicroamps()I

    move-result p0

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c1

    .line 158
    :pswitch_8c
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->getChargeCounterUah()I

    move-result p0

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c1

    .line 152
    :pswitch_97
    invoke-interface {p0}, Landroid/hardware/health/IHealth;->update()V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c1

    .line 144
    :pswitch_9e
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object p1

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 146
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_c1

    .line 135
    :pswitch_b0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/hardware/health/IHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/health/IHealthInfoCallback;

    move-result-object p1

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 137
    invoke-interface {p0, p1}, Landroid/hardware/health/IHealth;->registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V

    .line 138
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_c1
    return v1

    :sswitch_data_c2
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_b0
        :pswitch_9e
        :pswitch_97
        :pswitch_8c
        :pswitch_81
        :pswitch_76
        :pswitch_6b
        :pswitch_60
        :pswitch_55
        :pswitch_4a
        :pswitch_3e
        :pswitch_32
    .end packed-switch
.end method
