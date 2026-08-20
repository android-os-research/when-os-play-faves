.class public Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehSession.java"

# interfaces
.implements Lvendor/samsung/hardware/biometrics/face/ISehSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub;
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

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 249
    iput v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 250
    iput-object v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 247
    iput-object p1, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 253
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public authenticateExtension(JI[B)Landroid/hardware/biometrics/common/ICancellationSignal;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 265
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 267
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 269
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_32

    .line 273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 274
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/biometrics/common/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/common/ICancellationSignal;

    move-result-object p0
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3a

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 271
    :cond_32
    :try_start_32
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method authenticateExtension is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p0

    .line 277
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw p0
.end method

.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 491
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_22

    .line 496
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2a

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 494
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method close is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw p0
.end method

.method public getFaceTag(I)Lvendor/samsung/hardware/biometrics/face/SehFaceTag;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 424
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 428
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 435
    sget-object p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lvendor/samsung/hardware/biometrics/face/SehFaceTag;
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_35

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 432
    :cond_2d
    :try_start_2d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method getFaceTag is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_35
    .catchall {:try_start_2d .. :try_end_35} :catchall_35

    :catchall_35
    move-exception p0

    .line 438
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw p0
.end method

.method public getFaceTagList()[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_26

    .line 413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 414
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_2e

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 411
    :cond_26
    :try_start_26
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getFaceTagList is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2e
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception p0

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 257
    sget-object p0, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

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

    .line 522
    iget-object v1, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 523
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 526
    :try_start_13
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 529
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 531
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw v2

    .line 535
    :cond_39
    :goto_39
    iget-object v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 505
    iget v0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 506
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 509
    :try_start_d
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 514
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 515
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    throw p0

    .line 518
    :cond_33
    :goto_33
    iget p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public getWrappedData()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 288
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 289
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 293
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 291
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method getWrappedData is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 297
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw p0
.end method

.method public isTAUnloaded()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 345
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 348
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 353
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 351
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method isTAUnloaded is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    throw p0
.end method

.method public loadTA()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 308
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 309
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 314
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 311
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method loadTA is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 317
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw p0
.end method

.method public pause()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 368
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 369
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 371
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method pause is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw p0
.end method

.method public resume()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 393
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 391
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method resume is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw p0
.end method

.method public setFaceTag(I[B)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 445
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 449
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 452
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_2c

    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_34

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 454
    :cond_2c
    :try_start_2c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setFaceTag is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_34

    :catchall_34
    move-exception p0

    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw p0
.end method

.method public setRotation(I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 471
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_29

    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_31

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 475
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setRotation is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 481
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw p0
.end method

.method public unloadTA()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 325
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 328
    :try_start_8
    sget-object v2, Lvendor/samsung/hardware/biometrics/face/ISehSession;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    iget-object p0, p0, Lvendor/samsung/hardware/biometrics/face/ISehSession$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_2d

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 331
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string v2, "Method unloadTA is unimplemented."

    invoke-direct {p0, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 338
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw p0
.end method
