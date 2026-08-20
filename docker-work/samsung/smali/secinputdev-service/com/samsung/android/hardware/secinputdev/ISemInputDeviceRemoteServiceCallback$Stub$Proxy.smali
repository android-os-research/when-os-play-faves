.class Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISemInputDeviceRemoteServiceCallback.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 96
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deliveryLastData([IF)V
    .registers 8
    .param p1, "croppedVideoClip"    # [I
    .param p2, "result"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 124
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    nop

    .line 129
    return-void

    .line 127
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v1
.end method

.method public deliveryRawdata([I)V
    .registers 6
    .param p1, "map"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 111
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceRemoteServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 115
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 103
    const-string v0, "com.samsung.android.hardware.secinputdev.ISemInputDeviceRemoteServiceCallback"

    return-object v0
.end method
