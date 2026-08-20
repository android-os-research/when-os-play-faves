.class public abstract Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ISemInputDeviceRemoteServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_deliveryLastData:I = 0x2

.field static final TRANSACTION_deliveryRawdata:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 28
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 36
    if-nez p0, :cond_4

    .line 37
    const/4 v0, 0x0

    return-object v0

    .line 39
    :cond_4
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 40
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    if-eqz v1, :cond_14

    .line 41
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;

    return-object v1

    .line 43
    :cond_14
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 47
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 51
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    .line 52
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 53
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    :cond_d
    packed-switch p1, :pswitch_data_38

    .line 63
    packed-switch p1, :pswitch_data_3e

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 59
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    return v1

    .line 76
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 78
    .local v2, "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    .line 79
    .local v3, "_arg1":F
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 80
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->deliveryLastData([IF)V

    .line 81
    goto :goto_36

    .line 68
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":F
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 69
    .restart local v2    # "_arg0":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 70
    invoke-virtual {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;->deliveryRawdata([I)V

    .line 71
    nop

    .line 88
    .end local v2    # "_arg0":[I
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_1c
    .end packed-switch
.end method
