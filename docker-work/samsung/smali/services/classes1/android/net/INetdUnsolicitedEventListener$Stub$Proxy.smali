.class public Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdUnsolicitedEventListener.java"

# interfaces
.implements Landroid/net/INetdUnsolicitedEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetdUnsolicitedEventListener$Stub;
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

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 247
    iput v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 248
    iput-object v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 245
    iput-object p1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 251
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 255
    sget-object p0, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

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

    .line 459
    iget-object v1, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 463
    :try_start_13
    sget-object v2, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 465
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 468
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    throw v2

    .line 472
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 442
    iget v0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 443
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 446
    :try_start_d
    sget-object v2, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 447
    iget-object v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 448
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 449
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw p0

    .line 455
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onInterfaceAdded(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 348
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 352
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceAdded is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw p0
.end method

.method public onInterfaceAddressRemoved(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2c

    if-eqz p0, :cond_24

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 337
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceAddressRemoved is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw p0
.end method

.method public onInterfaceAddressUpdated(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 312
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_2c

    if-eqz p0, :cond_24

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 319
    :cond_24
    :try_start_24
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceAddressUpdated is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2c
    .catchall {:try_start_24 .. :try_end_2c} :catchall_2c

    :catchall_2c
    move-exception p0

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw p0
.end method

.method public onInterfaceChanged(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 378
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 383
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p0
.end method

.method public onInterfaceClassActivityChanged(ZIJI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 264
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 265
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_2b

    if-eqz p0, :cond_23

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 268
    :cond_23
    :try_start_23
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceClassActivityChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catchall {:try_start_23 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p0

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw p0
.end method

.method public onInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 295
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 298
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 299
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 301
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceDnsServerInfo is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw p0
.end method

.method public onInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 397
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 399
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceLinkStateChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    throw p0
.end method

.method public onInterfaceRemoved(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 365
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 367
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInterfaceRemoved is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw p0
.end method

.method public onQuotaLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 279
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 284
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onQuotaLimitReached is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 289
    throw p0
.end method

.method public onRouteChanged(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_2d

    if-eqz p0, :cond_25

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 417
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onRouteChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    throw p0
.end method

.method public onStrictCleartextDetected(ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 428
    :try_start_4
    sget-object v1, Landroid/net/INetdUnsolicitedEventListener;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-object p0, p0, Landroid/net/INetdUnsolicitedEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 433
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onStrictCleartextDetected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 437
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 438
    throw p0
.end method
