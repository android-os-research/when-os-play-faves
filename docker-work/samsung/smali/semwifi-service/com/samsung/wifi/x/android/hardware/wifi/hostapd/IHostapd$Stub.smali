.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub;
.super Landroid/os/Binder;
.source "IHostapd.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addAccessPoint:I = 0x1

.field static final TRANSACTION_forceClientDisconnect:I = 0x2

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_registerCallback:I = 0x3

.field static final TRANSACTION_removeAccessPoint:I = 0x4

.field static final TRANSACTION_setDebugParams:I = 0x5

.field static final TRANSACTION_terminate:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 54
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub;->markVintfStability()V

    .line 56
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 67
    :cond_4
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 68
    instance-of v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    if-eqz v1, :cond_13

    .line 69
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;

    return-object v0

    .line 71
    :cond_13
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 79
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 81
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_86

    packed-switch p1, :pswitch_data_94

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 87
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 92
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 98
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 153
    :pswitch_32
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->terminate()V

    goto :goto_84

    .line 146
    :pswitch_36
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 147
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->setDebugParams(I)V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_84

    .line 138
    :pswitch_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->removeAccessPoint(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_84

    .line 130
    :pswitch_4c
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;

    move-result-object p1

    .line 131
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapdCallback;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_84

    .line 118
    :pswitch_5b
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p4

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 123
    invoke-interface {p0, p1, p4, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->forceClientDisconnect(Ljava/lang/String;[BI)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_84

    .line 108
    :pswitch_6e
    sget-object p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IfaceParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IfaceParams;

    .line 110
    sget-object p4, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/NetworkParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/NetworkParams;

    .line 111
    invoke-interface {p0, p1, p2}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IHostapd;->addAccessPoint(Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/IfaceParams;Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/NetworkParams;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_84
    return v1

    nop

    :sswitch_data_86
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_5b
        :pswitch_4c
        :pswitch_41
        :pswitch_36
        :pswitch_32
    .end packed-switch
.end method
