.class Lcom/android/net/IProxyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IProxyService.java"

# interfaces
.implements Lcom/android/net/IProxyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/net/IProxyService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-object p1, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 356
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 359
    iget-object v0, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 363
    const-string v0, "com.android.net.IProxyService"

    return-object v0
.end method

.method public blacklist getProxyPortForProfile(Ljava/lang/String;)I
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 525
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 526
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 529
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    nop

    .line 532
    return v2

    .line 529
    .end local v2    # "_result":I
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 530
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw v2
.end method

.method public blacklist getProxythreadStatus(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 584
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 588
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 590
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 591
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 592
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 595
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    nop

    .line 598
    return-object v2

    .line 595
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 596
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 597
    throw v2
.end method

.method public blacklist handleScreenunlock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 539
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 541
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 544
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    nop

    .line 547
    return-void

    .line 544
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    throw v2
.end method

.method public blacklist isProxyThreadAlive(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 603
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 606
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 609
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 613
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    nop

    .line 616
    return v2

    .line 613
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 615
    throw v2
.end method

.method public blacklist isProxyThreadRunning(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 566
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 570
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 573
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 574
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 577
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    nop

    .line 580
    return v2

    .line 577
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 579
    throw v2
.end method

.method public blacklist resetInterface(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 550
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 556
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 559
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    nop

    .line 562
    return-void

    .line 559
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 560
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw v2
.end method

.method public blacklist resolvePacFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 368
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 371
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 375
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move-object v2, v3

    .line 379
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    nop

    .line 382
    return-object v2

    .line 379
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 381
    throw v2
.end method

.method public blacklist setMiscValueForPacProfile(ILjava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "netId"    # I
    .param p2, "profileName"    # Ljava/lang/String;
    .param p3, "interfacename"    # Ljava/lang/String;
    .param p4, "showScreen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 507
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 508
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_32

    move v2, v3

    .line 511
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return v2

    .line 511
    .end local v2    # "_result":Z
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v2
.end method

.method public blacklist setPacFile(Ljava/lang/String;)V
    .registers 7
    .param p1, "scriptContents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 388
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.android.net.IProxyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v1, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    nop

    .line 395
    return-void

    .line 393
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 394
    throw v1
.end method

.method public blacklist setPacFileForKnoxProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "scriptContents"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 485
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2b

    move v2, v3

    .line 489
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    nop

    .line 492
    return v2

    .line 489
    .end local v2    # "_result":Z
    :catchall_2b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 491
    throw v2
.end method

.method public blacklist startPacSystemForKnoxProfile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 407
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 411
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    nop

    .line 414
    return v2

    .line 411
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v2
.end method

.method public blacklist startProxyServerForKnoxProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)I
    .registers 13
    .param p1, "profileName"    # Ljava/lang/String;
    .param p2, "proxyAuthType"    # I
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "isCredentialPredfined"    # Z
    .param p6, "staticProxyServer"    # Ljava/lang/String;
    .param p7, "staticProxyPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 450
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_3a

    move v2, v3

    .line 454
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return v2

    .line 454
    .end local v2    # "_result":I
    :catchall_3a
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v2
.end method

.method public blacklist stopPacSystemForKnoxProfile(Ljava/lang/String;)Z
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 426
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_28

    move v2, v3

    .line 430
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    nop

    .line 433
    return v2

    .line 430
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 432
    throw v2
.end method

.method public blacklist stopProxyServerForKnoxProfile(Ljava/lang/String;)V
    .registers 7
    .param p1, "profileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 462
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 464
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.android.net.IProxyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v2, p0, Lcom/android/net/IProxyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 467
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 470
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    nop

    .line 473
    return-void

    .line 470
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v2
.end method
