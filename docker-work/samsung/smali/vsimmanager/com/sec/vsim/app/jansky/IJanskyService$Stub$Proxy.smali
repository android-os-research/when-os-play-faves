.class Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IJanskyService.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/IJanskyService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/IJanskyService$Stub;
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

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 425
    return-void
.end method


# virtual methods
.method public activateLine(Ljava/lang/String;)V
    .registers 7
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 504
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    nop

    .line 511
    return-void

    .line 509
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 510
    throw v1
.end method

.method public activateSIMDevice()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 739
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 740
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    nop

    .line 745
    return-void

    .line 743
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    throw v1
.end method

.method public activateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 590
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 593
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 594
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    nop

    .line 599
    return-void

    .line 597
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    throw v1
.end method

.method public addLine(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 9
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 475
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 478
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 479
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-void

    .line 482
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw v1
.end method

.method public addServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 560
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 564
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    nop

    .line 569
    return-void

    .line 567
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 428
    iget-object v0, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deactivateLine(Ljava/lang/String;)V
    .registers 7
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 517
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    throw v1
.end method

.method public deactivateServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 605
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 607
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 608
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 609
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    nop

    .line 614
    return-void

    .line 612
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    throw v1
.end method

.method public downloadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 7
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 653
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 656
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    nop

    .line 658
    return-void

    .line 656
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 657
    throw v1
.end method

.method public getDeviceState()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 775
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 778
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 779
    iget-object v2, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 781
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 784
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    nop

    .line 787
    return-object v2

    .line 784
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 786
    throw v2
.end method

.method public getDevices()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

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
    const-string v2, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 443
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 444
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 447
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    nop

    .line 450
    return-object v2

    .line 447
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 432
    const-string v0, "com.sec.vsim.app.jansky.IJanskyService"

    return-object v0
.end method

.method public getLines()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 456
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 459
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 461
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 462
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move-object v2, v3

    .line 465
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    nop

    .line 468
    return-object v2

    .line 465
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 467
    throw v2
.end method

.method public getLocationAndTc(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "lineNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 621
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 624
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 625
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move-object v2, v3

    .line 628
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    nop

    .line 631
    return-object v2

    .line 628
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 629
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 630
    throw v2
.end method

.method public getTRN(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/ITRNReceivedListener;)V
    .registers 9
    .param p1, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "trnReceivedListener"    # Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/ITRNReceivedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    .local p2, "toMsisdn":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 794
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 796
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 797
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 798
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 801
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    nop

    .line 803
    return-void

    .line 801
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 802
    throw v1
.end method

.method public isUserLogedin()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 808
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    iget-object v2, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 813
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 817
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 819
    nop

    .line 820
    return v2

    .line 817
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 818
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 819
    throw v2
.end method

.method public logout()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 728
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    nop

    .line 733
    return-void

    .line 731
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    throw v1
.end method

.method public openLoginPage()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 715
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 719
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 720
    nop

    .line 721
    return-void

    .line 719
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 720
    throw v1
.end method

.method public registerForPushNotification(Lcom/sec/vsim/app/jansky/IPushNotificationListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/sec/vsim/app/jansky/IPushNotificationListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 678
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 680
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    nop

    .line 685
    return-void

    .line 683
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    throw v1
.end method

.method public removeLine(Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 8
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 493
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    nop

    .line 498
    return-void

    .line 496
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw v1
.end method

.method public removeServices(Ljava/lang/String;Ljava/util/List;Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p3, "serviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/vsim/app/jansky/IServiceUpdatesListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 573
    .local p2, "serviceIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 575
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 578
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 579
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    nop

    .line 584
    return-void

    .line 582
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    throw v1
.end method

.method public requestAkaAuthentication()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 696
    nop

    .line 697
    return-void

    .line 695
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 696
    throw v1
.end method

.method public requestWsgAkaAuthRequest()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    nop

    .line 833
    return-void

    .line 831
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 832
    throw v1
.end method

.method public retriveAvailableMSISDNs()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 751
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 752
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 755
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    nop

    .line 757
    return-void

    .line 755
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 756
    throw v1
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 763
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 764
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 765
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    nop

    .line 770
    return-void

    .line 768
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 769
    throw v1
.end method

.method public updateDeviceConfiguration()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 703
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    nop

    .line 709
    return-void

    .line 707
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 708
    throw v1
.end method

.method public updateDeviceName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;)V
    .registers 9
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceUpdatesListener"    # Lcom/sec/vsim/app/jansky/IDeviceUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 530
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 534
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1f

    .line 537
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    nop

    .line 539
    return-void

    .line 537
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 538
    throw v1
.end method

.method public updateLineName(Ljava/lang/String;Ljava/lang/String;Lcom/sec/vsim/app/jansky/ILineUpdatesListener;)V
    .registers 9
    .param p1, "lineNumber"    # Ljava/lang/String;
    .param p2, "lineName"    # Ljava/lang/String;
    .param p3, "lineUpdatesListener"    # Lcom/sec/vsim/app/jansky/ILineUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 545
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 546
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 547
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 548
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 549
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    nop

    .line 554
    return-void

    .line 552
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw v1
.end method

.method public uploadAllContacts(Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 7
    .param p1, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 640
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    nop

    .line 645
    return-void

    .line 643
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v1
.end method

.method public uploadUpdatedContact(Ljava/lang/String;Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;)V
    .registers 8
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "contactsSyncUpdatesListener"    # Lcom/sec/vsim/app/jansky/IContactsSyncUpdatesListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.sec.vsim.app.jansky.IJanskyService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 667
    iget-object v1, p0, Lcom/sec/vsim/app/jansky/IJanskyService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    nop

    .line 672
    return-void

    .line 670
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 671
    throw v1
.end method
