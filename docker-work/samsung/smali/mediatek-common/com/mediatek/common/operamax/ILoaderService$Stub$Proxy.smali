.class Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ILoaderService.java"

# interfaces
.implements Lcom/mediatek/common/operamax/ILoaderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/operamax/ILoaderService$Stub;
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

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 398
    iput-object p1, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 399
    return-void
.end method


# virtual methods
.method public blacklist addDirectedApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 555
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 558
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 558
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v2
.end method

.method public blacklist addDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 720
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 721
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 722
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 723
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 724
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 727
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    nop

    .line 730
    return-void

    .line 727
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 728
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 729
    throw v2
.end method

.method public blacklist addDirectedHost(Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 634
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 636
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 637
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 639
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 642
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    nop

    .line 645
    return-void

    .line 642
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 643
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 644
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 402
    iget-object v0, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCompressLevel()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 823
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 824
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 829
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 830
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 833
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    nop

    .line 836
    return v2

    .line 833
    .end local v2    # "_result":I
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 835
    throw v2
.end method

.method public blacklist getDirectedAppList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 616
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 619
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 621
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 622
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 625
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    nop

    .line 628
    return-object v2

    .line 625
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 627
    throw v2
.end method

.method public blacklist getDirectedHeaderFieldList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 786
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 787
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 790
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 791
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 792
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 796
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    nop

    .line 799
    return-object v2

    .line 796
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 797
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 798
    throw v2
.end method

.method public blacklist getDirectedHostList()[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 703
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 705
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 706
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move-object v2, v3

    .line 709
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    nop

    .line 712
    return-object v2

    .line 709
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 710
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 406
    const-string v0, "com.mediatek.common.operamax.ILoaderService"

    return-object v0
.end method

.method public blacklist getSavingState()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 482
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 483
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 486
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    nop

    .line 489
    return v2

    .line 486
    .end local v2    # "_result":I
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 487
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 488
    throw v2
.end method

.method public blacklist getTunnelState()I
    .registers 6
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
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 456
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 460
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    nop

    .line 463
    return v2

    .line 460
    .end local v2    # "_result":I
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 462
    throw v2
.end method

.method public blacklist isAppDirected(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 600
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 603
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 607
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    nop

    .line 610
    return v2

    .line 607
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v2
.end method

.method public blacklist isHeaderFieldDirected(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 772
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 773
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 774
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 775
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 778
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    nop

    .line 781
    return v2

    .line 778
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 779
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 780
    throw v2
.end method

.method public blacklist isHostDirected(Ljava/lang/String;)Z
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 680
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 681
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 684
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 686
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 687
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 688
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 691
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    nop

    .line 694
    return v2

    .line 691
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 692
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    throw v2
.end method

.method public blacklist launchOperaMAX()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 535
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 537
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 538
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 539
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_20

    .line 542
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return-void

    .line 542
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public blacklist registerStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/common/operamax/ILoaderStateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 503
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 504
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 507
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    nop

    .line 510
    return-void

    .line 507
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    throw v2
.end method

.method public blacklist removeAllDirectedApps()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 584
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 589
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 592
    return-void

    .line 589
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v2
.end method

.method public blacklist removeAllDirectedHeaderFields()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 752
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 754
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 756
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 759
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    nop

    .line 762
    return-void

    .line 759
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    throw v2
.end method

.method public blacklist removeAllDirectedHosts()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 668
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 670
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 673
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    nop

    .line 676
    return-void

    .line 673
    :catchall_21
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 674
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    throw v2
.end method

.method public blacklist removeDirectedApp(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 568
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 571
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 574
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    nop

    .line 577
    return-void

    .line 574
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v2
.end method

.method public blacklist removeDirectedHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 735
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 737
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 738
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 739
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 741
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    .line 744
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    nop

    .line 747
    return-void

    .line 744
    :catchall_27
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 746
    throw v2
.end method

.method public blacklist removeDirectedHost(Ljava/lang/String;)V
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 650
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 652
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 654
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 655
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 658
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    nop

    .line 661
    return-void

    .line 658
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    throw v2
.end method

.method public blacklist setCompressLevel(I)V
    .registers 7
    .param p1, "level"    # I
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

    .line 810
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 812
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 813
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    .line 816
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    nop

    .line 819
    return-void

    .line 816
    :catchall_24
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 817
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    throw v2
.end method

.method public blacklist startSaving()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 415
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 417
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 419
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_20

    .line 422
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    nop

    .line 425
    return-void

    .line 422
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    throw v2
.end method

.method public blacklist stopSaving()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 432
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 434
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_20

    .line 437
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    nop

    .line 440
    return-void

    .line 437
    :catchall_20
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 438
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    throw v2
.end method

.method public blacklist unregisterStateListener(Lcom/mediatek/common/operamax/ILoaderStateListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/mediatek/common/operamax/ILoaderStateListener;
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

    .line 521
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.common.operamax.ILoaderService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 523
    iget-object v2, p0, Lcom/mediatek/common/operamax/ILoaderService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_23

    .line 527
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    nop

    .line 530
    return-void

    .line 527
    :catchall_23
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    throw v2
.end method
