.class Landroid/hardware/ICameraServiceListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraServiceListener.java"

# interfaces
.implements Landroid/hardware/ICameraServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/ICameraServiceListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 243
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 250
    const-string v0, "android.hardware.ICameraServiceListener"

    return-object v0
.end method

.method public blacklist onCameraAccessPrioritiesChanged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 318
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_16

    .line 322
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    nop

    .line 324
    return-void

    .line 322
    :catchall_16
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    throw v1
.end method

.method public blacklist onCameraClosed(Ljava/lang/String;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 347
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 349
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 352
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    nop

    .line 354
    return-void

    .line 352
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    throw v1
.end method

.method public blacklist onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .registers 12
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_29

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw v1
.end method

.method public blacklist onCameraOpened(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "clientPackageId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    nop

    .line 342
    return-void

    .line 340
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw v1
.end method

.method public blacklist onPhysicalCameraStatusChanged(ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .param p3, "physicalCameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 273
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    nop

    .line 282
    return-void

    .line 280
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v1
.end method

.method public greylist-max-o onStatusChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 256
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_1b

    .line 262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    nop

    .line 264
    return-void

    .line 262
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 263
    throw v1
.end method

.method public greylist-max-o onTorchStatusChanged(ILjava/lang/String;)V
    .registers 8
    .param p1, "status"    # I
    .param p2, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    nop

    .line 295
    return-void

    .line 293
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw v1
.end method

.method public blacklist onTorchStrengthLevelChanged(Ljava/lang/String;I)V
    .registers 8
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "newTorchStrength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.hardware.ICameraServiceListener"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v1, p0, Landroid/hardware/ICameraServiceListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 306
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    nop

    .line 308
    return-void

    .line 306
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    throw v1
.end method
