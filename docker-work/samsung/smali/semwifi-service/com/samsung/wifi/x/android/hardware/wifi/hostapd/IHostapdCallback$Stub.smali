.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub;
.super Landroid/os/Binder;
.source "IHostapdCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onApInstanceInfoChanged:I = 0x1

.field static final TRANSACTION_onConnectedClientsChanged:I = 0x2

.field static final TRANSACTION_onFailure:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 46
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub;->markVintfStability()V

    .line 47
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 59
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;

    if-eqz v1, :cond_13

    .line 60
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;

    return-object v0

    .line 62
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 70
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 72
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_5c

    goto :goto_2b

    .line 78
    :sswitch_11
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 83
    :sswitch_15
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 89
    :sswitch_20
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :goto_2b
    if-eq p1, v1, :cond_50

    const/4 v0, 0x2

    if-eq p1, v0, :cond_44

    const/4 v0, 0x3

    if-eq p1, v0, :cond_38

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 113
    :cond_38
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5b

    .line 106
    :cond_44
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ClientInfo;

    .line 107
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->onConnectedClientsChanged(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ClientInfo;)V

    goto :goto_5b

    .line 99
    :cond_50
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ApInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ApInfo;

    .line 100
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;->onApInstanceInfoChanged(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ApInfo;)V

    :goto_5b
    return v1

    :sswitch_data_5c
    .sparse-switch
        0xfffffe -> :sswitch_20
        0xffffff -> :sswitch_15
        0x5f4e5446 -> :sswitch_11
    .end sparse-switch
.end method
