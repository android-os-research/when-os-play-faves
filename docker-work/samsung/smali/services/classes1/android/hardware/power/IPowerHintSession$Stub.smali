.class public abstract Landroid/hardware/power/IPowerHintSession$Stub;
.super Landroid/os/Binder;
.source "IPowerHintSession.java"

# interfaces
.implements Landroid/hardware/power/IPowerHintSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/power/IPowerHintSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/power/IPowerHintSession$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_close:I = 0x5

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_pause:I = 0x3

.field public static final TRANSACTION_reportActualWorkDuration:I = 0x2

.field public static final TRANSACTION_resume:I = 0x4

.field public static final TRANSACTION_updateTargetWorkDuration:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 53
    sget-object v0, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/hardware/power/IPowerHintSession;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_4
    sget-object v0, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 65
    instance-of v1, v0, Landroid/hardware/power/IPowerHintSession;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Landroid/hardware/power/IPowerHintSession;

    return-object v0

    .line 68
    :cond_13
    new-instance v0, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/hardware/power/IPowerHintSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    sget-object v0, Landroid/hardware/power/IPowerHintSession;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 78
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_64

    goto :goto_2b

    .line 84
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 89
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-interface {p0}, Landroid/hardware/power/IPowerHintSession;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 95
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-interface {p0}, Landroid/hardware/power/IPowerHintSession;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_59

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4a

    const/4 v0, 0x3

    if-eq p1, v0, :cond_46

    const/4 v0, 0x4

    if-eq p1, v0, :cond_42

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3e

    .line 135
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 130
    :cond_3e
    invoke-interface {p0}, Landroid/hardware/power/IPowerHintSession;->close()V

    goto :goto_63

    .line 125
    :cond_42
    invoke-interface {p0}, Landroid/hardware/power/IPowerHintSession;->resume()V

    goto :goto_63

    .line 120
    :cond_46
    invoke-interface {p0}, Landroid/hardware/power/IPowerHintSession;->pause()V

    goto :goto_63

    .line 113
    :cond_4a
    sget-object p1, Landroid/hardware/power/WorkDuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/power/WorkDuration;

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 115
    invoke-interface {p0, p1}, Landroid/hardware/power/IPowerHintSession;->reportActualWorkDuration([Landroid/hardware/power/WorkDuration;)V

    goto :goto_63

    .line 105
    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p3

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 107
    invoke-interface {p0, p3, p4}, Landroid/hardware/power/IPowerHintSession;->updateTargetWorkDuration(J)V

    :goto_63
    return v1

    :sswitch_data_64
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
