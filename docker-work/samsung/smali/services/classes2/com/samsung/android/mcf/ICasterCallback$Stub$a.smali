.class public Lcom/samsung/android/mcf/ICasterCallback$Stub$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/ICasterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ICasterCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 1

    const-string p0, "com.samsung.android.mcf.ICasterCallback"

    return-object p0
.end method

.method public onAdvertiseStarted(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_17

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_17
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onAdvertiseStopped(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_18
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    # invokes: Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p2, p1}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1f
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    # invokes: Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->writeTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable;I)V
    invoke-static {v0, p1, v1}, Lcom/samsung/android/mcf/ICasterCallback$_Parcel;->access$100(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1c
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public onPilotScanResult(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$a;->b:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_1b
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
