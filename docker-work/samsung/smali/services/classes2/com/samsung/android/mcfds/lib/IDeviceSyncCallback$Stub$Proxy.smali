.class public Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceSyncCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 105
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    return-object p0
.end method

.method public onDeviceFound(Landroid/os/PersistableBundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 116
    # invokes: Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 117
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 120
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw p0
.end method

.method public onDeviceLost(Landroid/os/PersistableBundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    .line 139
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 140
    # invokes: Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 141
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 144
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_19
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    throw p0
.end method

.method public onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 128
    # invokes: Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 129
    iget-object p0, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_19
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    throw p0
.end method
