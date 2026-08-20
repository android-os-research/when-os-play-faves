.class public Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Lcom/samsung/android/camera/ICameraServiceWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# instance fields
.field public mCachedHash:Ljava/lang/String;

.field public mCachedVersion:I

.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 212
    iput v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 213
    iput-object v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public acquireRequestInjector()Landroid/os/IBinder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 280
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 283
    :try_start_8
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 284
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 288
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 289
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 286
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method acquireRequestInjector is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 292
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 293
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 294
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 216
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getDeviceInjectorOverride(Ljava/lang/String;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 359
    :try_start_8
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 366
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 367
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 364
    :cond_2c
    :try_start_2c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getDeviceInjectorOverride is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw p0
.end method

.method public getDeviceOrientationForDeviceInjector(Ljava/lang/String;I)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 337
    :try_start_8
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 344
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 345
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 342
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getDeviceOrientationForDeviceInjector is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 348
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 349
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 350
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 220
    sget-object p0, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    const-string v0, "-1"

    .line 394
    iget-object v1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 395
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 398
    :try_start_13
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 399
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 400
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 401
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 403
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 403
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 405
    throw v2

    .line 407
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_2a .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-object v0

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    iget v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 378
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 381
    :try_start_d
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 382
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p0

    .line 390
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public notifyCameraSessionEvent(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 301
    :try_start_4
    sget-object v1, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 306
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyCameraSessionEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw p0
.end method

.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 240
    :try_start_4
    sget-object v1, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_2f

    if-eqz p0, :cond_27

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 248
    :cond_27
    :try_start_27
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyCameraState is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p0

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw p0
.end method

.method public pingForUpdate()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    :try_start_4
    sget-object v1, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1f

    if-eqz p0, :cond_17

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 229
    :cond_17
    :try_start_17
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method pingForUpdate is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 233
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p0
.end method

.method public queryPackageName(II)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 261
    :try_start_8
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 268
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 269
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_33

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 266
    :cond_2b
    :try_start_2b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method queryPackageName is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_33
    .catchall {:try_start_2b .. :try_end_33} :catchall_33

    :catchall_33
    move-exception p0

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw p0
.end method

.method public setDeviceOrientationListener(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    :try_start_8
    sget-object v2, Lcom/samsung/android/camera/ICameraServiceWorker;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 320
    iget-object p0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_24

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_2c

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 322
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setDeviceOrientationListener is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw p0
.end method
