.class Lcom/sec/ims/ss/IUtService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUtService.java"

# interfaces
.implements Lcom/sec/ims/ss/IUtService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ss/IUtService$Stub;
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

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 349
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 352
    iget-object v0, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/ss/IImsUtEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 377
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 379
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 382
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 383
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 386
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    nop

    .line 389
    return-void

    .line 386
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 356
    const-string v0, "com.sec.ims.ss.IUtService"

    return-object v0
.end method

.method public isUtEnabled(I)Z
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 665
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 671
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 672
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 675
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    nop

    .line 678
    return v2

    .line 675
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    throw v2
.end method

.method public queryCLIP(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 479
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return v2

    .line 479
    .end local v2    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v2
.end method

.method public queryCLIR(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 457
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 461
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    nop

    .line 464
    return v2

    .line 461
    .end local v2    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 463
    throw v2
.end method

.method public queryCOLP(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 511
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 512
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 515
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    nop

    .line 518
    return v2

    .line 515
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    throw v2
.end method

.method public queryCOLR(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 493
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 497
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return v2

    .line 497
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v2
.end method

.method public queryCallBarring(III)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "cbType"    # I
    .param p3, "ssClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 393
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 396
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 400
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 401
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 402
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 405
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return v2

    .line 405
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 406
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v2
.end method

.method public queryCallForward(IILjava/lang/String;)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "condition"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 416
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 421
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 422
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_2e

    move v2, v3

    .line 425
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    nop

    .line 428
    return v2

    .line 425
    .end local v2    # "_result":I
    :catchall_2e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 427
    throw v2
.end method

.method public queryCallWaiting(I)I
    .registers 7
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 439
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 440
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 443
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    nop

    .line 446
    return v2

    .line 443
    .end local v2    # "_result":I
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw v2
.end method

.method public registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "listener"    # Lcom/sec/ims/ss/IImsUtEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 366
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 367
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    .line 370
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    nop

    .line 373
    return-void

    .line 370
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw v2
.end method

.method public updateCLIP(IZ)I
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 614
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 615
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 616
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 619
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    nop

    .line 622
    return v2

    .line 619
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 621
    throw v2
.end method

.method public updateCLIR(II)I
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 592
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 596
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 597
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 600
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    nop

    .line 603
    return v2

    .line 600
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 601
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 602
    throw v2
.end method

.method public updateCOLP(IZ)I
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 652
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 653
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 654
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 657
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    nop

    .line 660
    return v2

    .line 657
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 659
    throw v2
.end method

.method public updateCOLR(II)I
    .registers 8
    .param p1, "phoneId"    # I
    .param p2, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 630
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 634
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 635
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 638
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 640
    nop

    .line 641
    return v2

    .line 638
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 640
    throw v2
.end method

.method public updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
    .registers 12
    .param p1, "phoneId"    # I
    .param p2, "cbType"    # I
    .param p3, "action"    # I
    .param p4, "serviceClass"    # I
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "barrList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 526
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 533
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 534
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 535
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_38

    move v2, v3

    .line 538
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    nop

    .line 541
    return v2

    .line 538
    .end local v2    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 540
    throw v2
.end method

.method public updateCallForward(IIILjava/lang/String;II)I
    .registers 12
    .param p1, "phoneId"    # I
    .param p2, "action"    # I
    .param p3, "condition"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "serviceClass"    # I
    .param p6, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 551
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 557
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_38

    move v2, v3

    .line 561
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    nop

    .line 564
    return v2

    .line 561
    .end local v2    # "_result":I
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    throw v2
.end method

.method public updateCallWaiting(IZI)I
    .registers 9
    .param p1, "phoneId"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 569
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 572
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.ims.ss.IUtService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 575
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    iget-object v2, p0, Lcom/sec/ims/ss/IUtService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 577
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 578
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 581
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    nop

    .line 584
    return v2

    .line 581
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    throw v2
.end method
