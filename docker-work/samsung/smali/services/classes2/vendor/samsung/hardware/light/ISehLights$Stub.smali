.class public abstract Lvendor/samsung/hardware/light/ISehLights$Stub;
.super Landroid/os/Binder;
.source "ISehLights.java"

# interfaces
.implements Lvendor/samsung/hardware/light/ISehLights;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/light/ISehLights;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_getLights:I = 0x2

.field public static final TRANSACTION_setLightState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    invoke-virtual {p0}, Landroid/os/Binder;->markVintfStability()V

    .line 45
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/light/ISehLights;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_4
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 57
    instance-of v1, v0, Lvendor/samsung/hardware/light/ISehLights;

    if-eqz v1, :cond_13

    .line 58
    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;

    return-object v0

    .line 60
    :cond_13
    new-instance v0, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;

    invoke-direct {v0, p0}, Lvendor/samsung/hardware/light/ISehLights$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 68
    sget-object v0, Lvendor/samsung/hardware/light/ISehLights;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 70
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_5a

    goto :goto_2b

    .line 76
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 81
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-interface {p0}, Lvendor/samsung/hardware/light/ISehLights;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 87
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-interface {p0}, Lvendor/samsung/hardware/light/ISehLights;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_40

    const/4 v0, 0x2

    if-eq p1, v0, :cond_35

    .line 116
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 109
    :cond_35
    invoke-interface {p0}, Lvendor/samsung/hardware/light/ISehLights;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object p0

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, p0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    goto :goto_59

    .line 97
    :cond_40
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 99
    sget-object p4, Landroid/hardware/light/HwLightState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/light/HwLightState;

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 103
    invoke-interface {p0, p1, p4, v0}, Lvendor/samsung/hardware/light/ISehLights;->setLightState(ILandroid/hardware/light/HwLightState;I)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_59
    return v1

    :sswitch_data_5a
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
