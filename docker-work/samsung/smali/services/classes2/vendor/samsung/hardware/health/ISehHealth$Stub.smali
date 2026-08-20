.class public abstract Lvendor/samsung/hardware/health/ISehHealth$Stub;
.super Landroid/os/Binder;
.source "ISehHealth.java"

# interfaces
.implements Lvendor/samsung/hardware/health/ISehHealth;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/health/ISehHealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_registerCallback:I = 0x1

.field public static final TRANSACTION_sehWriteEnableToParam:I = 0x4

.field public static final TRANSACTION_unregisterCallback:I = 0x2

.field public static final TRANSACTION_update:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 96
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 97
    sget-object v0, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/health/ISehHealth;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 109
    instance-of v1, v0, Lvendor/samsung/hardware/health/ISehHealth;

    if-eqz v1, :cond_13

    .line 110
    check-cast v0, Lvendor/samsung/hardware/health/ISehHealth;

    return-object v0

    .line 112
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/health/ISehHealth$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 120
    sget-object v0, Lvendor/samsung/hardware/health/ISehHealth;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 122
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_78

    goto :goto_2b

    .line 128
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 133
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-interface {p0}, Lvendor/samsung/hardware/health/ISehHealth;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 139
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    invoke-interface {p0}, Lvendor/samsung/hardware/health/ISehHealth;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_66

    const/4 v0, 0x2

    if-eq p1, v0, :cond_54

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4d

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3b

    .line 183
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 173
    :cond_3b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p4

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-interface {p0, p1, p4}, Lvendor/samsung/hardware/health/ISehHealth;->sehWriteEnableToParam(IZ)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_77

    .line 166
    :cond_4d
    invoke-interface {p0}, Lvendor/samsung/hardware/health/ISehHealth;->update()V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_77

    .line 158
    :cond_54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/health/ISehHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

    move-result-object p1

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 160
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth;->unregisterCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_77

    .line 149
    :cond_66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lvendor/samsung/hardware/health/ISehHealthInfoCallback$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 151
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth;->registerCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_77
    return v1

    :sswitch_data_78
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
