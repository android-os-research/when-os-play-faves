.class public Landroid/net/ip/IIpClient$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpClient.java"

# interfaces
.implements Landroid/net/ip/IIpClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IIpClient$Stub;
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
    iput v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 250
    iput-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 247
    iput-object p1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
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
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 396
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 397
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_20

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 399
    :cond_20
    :try_start_20
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method addKeepalivePacketFilter is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    throw p0
.end method

.method public addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 441
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 443
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 444
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_20

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 446
    :cond_20
    :try_start_20
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method addNattKeepalivePacketFilter is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 451
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 253
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public completedPreDhcpAction()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 263
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 264
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_1f

    if-eqz p0, :cond_17

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 266
    :cond_17
    :try_start_17
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method completedPreDhcpAction is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f
    .catchall {:try_start_17 .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception p0

    .line 270
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw p0
.end method

.method public confirmConfiguration()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 277
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 280
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method confirmConfiguration is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 285
    throw p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 257
    sget-object p0, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

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

    .line 502
    iget-object v1, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 506
    :try_start_13
    sget-object v2, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 511
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2

    .line 515
    :cond_39
    :goto_39
    iget-object v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 485
    iget v0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 489
    :try_start_d
    sget-object v2, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    iget-object v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 492
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw p0

    .line 498
    :cond_33
    :goto_33
    iget p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public notifyPreconnectionComplete(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 459
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 461
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method notifyPreconnectionComplete is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw p0
.end method

.method public readPacketFilterComplete([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 291
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 293
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 295
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method readPacketFilterComplete is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 299
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 300
    throw p0
.end method

.method public removeKeepalivePacketFilter(I)V
    .registers 5
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
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 414
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method removeKeepalivePacketFilter is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw p0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 364
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 365
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 366
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 368
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setHttpProxy is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 372
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    throw p0
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 425
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 427
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 430
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setL2KeyAndGroupHint is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    throw p0
.end method

.method public setMulticastFilter(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 379
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 381
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 383
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setMulticastFilter is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p0
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 349
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 351
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 353
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method setTcpBufferSizes is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 358
    throw p0
.end method

.method public shutdown()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 306
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 309
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method shutdown is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 313
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 314
    throw p0
.end method

.method public startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 318
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 320
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 321
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 322
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 324
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method startProvisioning is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw p0
.end method

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 335
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 336
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 338
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method stop is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 342
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    throw p0
.end method

.method public updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 472
    :try_start_4
    sget-object v1, Landroid/net/ip/IIpClient;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 473
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 474
    iget-object p0, p0, Landroid/net/ip/IIpClient$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_25

    if-eqz p0, :cond_1d

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 476
    :cond_1d
    :try_start_1d
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method updateLayer2Information is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception p0

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw p0
.end method
