.class public abstract Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.super Landroid/os/Binder;
.source "ICameraServiceWorker.java"

# interfaces
.implements Lcom/samsung/android/camera/ICameraServiceWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/ICameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final TRANSACTION_acquireRequestInjector:I = 0x4

.field public static final TRANSACTION_getDeviceInjectorOverride:I = 0x8

.field public static final TRANSACTION_getDeviceOrientationForDeviceInjector:I = 0x7

.field public static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field public static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field public static final TRANSACTION_notifyCameraSessionEvent:I = 0x5

.field public static final TRANSACTION_notifyCameraState:I = 0x2

.field public static final TRANSACTION_pingForUpdate:I = 0x1

.field public static final TRANSACTION_queryPackageName:I = 0x3

.field public static final TRANSACTION_setDeviceOrientationListener:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 66
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/ICameraServiceWorker;
    .registers 3

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 77
    :cond_4
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 78
    instance-of v1, v0, Lcom/samsung/android/camera/ICameraServiceWorker;

    if-eqz v1, :cond_13

    .line 79
    check-cast v0, Lcom/samsung/android/camera/ICameraServiceWorker;

    return-object v0

    .line 81
    :cond_13
    new-instance v0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 89
    sget-object v0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 91
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_d
    sparse-switch p1, :sswitch_data_be

    packed-switch p1, :pswitch_data_cc

    .line 200
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 97
    :sswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 102
    :sswitch_1c
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    invoke-interface {p0}, Lcom/samsung/android/camera/ICameraServiceWorker;->getInterfaceVersion()I

    move-result p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 108
    :sswitch_27
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-interface {p0}, Lcom/samsung/android/camera/ICameraServiceWorker;->getInterfaceHash()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 189
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 192
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 193
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/camera/ICameraServiceWorker;->getDeviceInjectorOverride(Ljava/lang/String;I)Z

    move-result p0

    .line 194
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_bc

    .line 177
    :pswitch_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 180
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 181
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/camera/ICameraServiceWorker;->getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I

    move-result p0

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bc

    .line 168
    :pswitch_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 170
    invoke-interface {p0, p1}, Lcom/samsung/android/camera/ICameraServiceWorker;->setDeviceOrientationListener(Z)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_bc

    .line 158
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 162
    invoke-interface {p0, p1, p3}, Lcom/samsung/android/camera/ICameraServiceWorker;->notifyCameraSessionEvent(ILjava/lang/String;)V

    goto :goto_bc

    .line 150
    :pswitch_7c
    invoke-interface {p0}, Lcom/samsung/android/camera/ICameraServiceWorker;->acquireRequestInjector()Landroid/os/IBinder;

    move-result-object p0

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto :goto_bc

    .line 139
    :pswitch_87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 143
    invoke-interface {p0, p1, p4}, Lcom/samsung/android/camera/ICameraServiceWorker;->queryPackageName(II)Ljava/lang/String;

    move-result-object p0

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_bc

    .line 123
    :pswitch_9d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object v2, p0

    .line 133
    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/camera/ICameraServiceWorker;->notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V

    goto :goto_bc

    .line 117
    :pswitch_b9
    invoke-interface {p0}, Lcom/samsung/android/camera/ICameraServiceWorker;->pingForUpdate()V

    :goto_bc
    return v1

    nop

    :sswitch_data_be
    .sparse-switch
        0xfffffe -> :sswitch_27
        0xffffff -> :sswitch_1c
        0x5f4e5446 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_b9
        :pswitch_9d
        :pswitch_87
        :pswitch_7c
        :pswitch_6d
        :pswitch_5f
        :pswitch_49
        :pswitch_32
    .end packed-switch
.end method
