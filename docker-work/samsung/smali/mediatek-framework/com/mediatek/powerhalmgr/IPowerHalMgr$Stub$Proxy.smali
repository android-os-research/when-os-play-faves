.class Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPowerHalMgr.java"

# interfaces
.implements Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;
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

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 481
    iput-object p1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 482
    return-void
.end method


# virtual methods
.method public blacklist UpdateManagementPkt(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "packet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 642
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 646
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    nop

    .line 648
    return-void

    .line 646
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 485
    iget-object v0, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist configBoosterInfo(Lcom/mediatek/powerhalmgr/BoosterInfo;)Z
    .registers 7
    .param p1, "info"    # Lcom/mediatek/powerhalmgr/BoosterInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 956
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 957
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 960
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 961
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 962
    iget-object v3, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 963
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 967
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    nop

    .line 970
    return v2

    .line 967
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v2
.end method

.method public blacklist flushPriorityRules(I)Z
    .registers 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 942
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 943
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 947
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    nop

    .line 950
    return v2

    .line 947
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 949
    throw v2
.end method

.method public blacklist getCpuCap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 594
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 596
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 600
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    nop

    .line 602
    return-void

    .line 600
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 601
    throw v1
.end method

.method public blacklist getCpuRTInfo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 629
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    nop

    .line 635
    return-void

    .line 633
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    throw v1
.end method

.method public blacklist getGpuCap()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 605
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 607
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 608
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    nop

    .line 613
    return-void

    .line 611
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v1
.end method

.method public blacklist getGpuRTInfo()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 616
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 618
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 622
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    nop

    .line 624
    return-void

    .line 622
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 489
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    return-object v0
.end method

.method public blacklist isDupPacketPredictionStarted()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 711
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 714
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 715
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 716
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 717
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 720
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    nop

    .line 723
    return v2

    .line 720
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 721
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    throw v2
.end method

.method public blacklist mtkCusPowerHint(II)V
    .registers 8
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 583
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 585
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 586
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    nop

    .line 591
    return-void

    .line 589
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v1
.end method

.method public blacklist mtkPowerHint(II)V
    .registers 8
    .param p1, "hint"    # I
    .param p2, "data"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 848
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 851
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 854
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    nop

    .line 856
    return-void

    .line 854
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 855
    throw v1
.end method

.method public blacklist perfCusLockHint(II)I
    .registers 8
    .param p1, "hint"    # I
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 859
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 860
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 863
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 865
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 866
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 867
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 868
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 871
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    nop

    .line 874
    return v2

    .line 871
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 872
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 873
    throw v2
.end method

.method public blacklist perfLockAcquire(II[I)I
    .registers 9
    .param p1, "handle"    # I
    .param p2, "duration"    # I
    .param p3, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 795
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 802
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 803
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 804
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 805
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_2f

    move v2, v3

    .line 808
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    nop

    .line 811
    return v2

    .line 808
    .end local v2    # "_result":I
    :catchall_2f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 809
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 810
    throw v2
.end method

.method public blacklist perfLockRelease(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 815
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 817
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_1a

    .line 822
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    nop

    .line 824
    return-void

    .line 822
    :catchall_1a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 823
    throw v1
.end method

.method public blacklist querySysInfo(II)I
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "param"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 828
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 833
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 835
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 836
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 839
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    nop

    .line 842
    return v2

    .line 839
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 840
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 841
    throw v2
.end method

.method public blacklist registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 7
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 733
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 734
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 735
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 738
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    nop

    .line 741
    return v2

    .line 738
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 739
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 740
    throw v2
.end method

.method public blacklist scnConfig(IIIIII)V
    .registers 12
    .param p1, "handle"    # I
    .param p2, "cmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 519
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 522
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    nop

    .line 524
    return-void

    .line 522
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 523
    throw v1
.end method

.method public blacklist scnDisable(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    nop

    .line 561
    return-void

    .line 559
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v1
.end method

.method public blacklist scnEnable(II)V
    .registers 8
    .param p1, "handle"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 541
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    nop

    .line 549
    return-void

    .line 547
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v1
.end method

.method public blacklist scnReg()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 494
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 497
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 499
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 500
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_25

    move v2, v3

    .line 503
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    nop

    .line 506
    return v2

    .line 503
    .end local v2    # "_result":I
    :catchall_25
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    throw v2
.end method

.method public blacklist scnUltraCfg(IIIIII)V
    .registers 12
    .param p1, "handle"    # I
    .param p2, "ultracmd"    # I
    .param p3, "param_1"    # I
    .param p4, "param_2"    # I
    .param p5, "param_3"    # I
    .param p6, "param_4"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 564
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 566
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 567
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 572
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_28

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    nop

    .line 578
    return-void

    .line 576
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v1
.end method

.method public blacklist scnUnreg(I)V
    .registers 7
    .param p1, "handle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 529
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 531
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    nop

    .line 536
    return-void

    .line 534
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    throw v1
.end method

.method public blacklist setForegroundSports()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 653
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_17

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    nop

    .line 659
    return-void

    .line 657
    :catchall_17
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 658
    throw v1
.end method

.method public blacklist setPredictInfo(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pack_name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 784
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    nop

    .line 792
    return-void

    .line 790
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 791
    throw v1
.end method

.method public blacklist setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "linkinfo"    # Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 917
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 918
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 924
    iget-object v3, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 925
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 929
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    nop

    .line 932
    return v2

    .line 929
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 931
    throw v2
.end method

.method public blacklist setPriorityByUid(II)Z
    .registers 8
    .param p1, "action"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 899
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 902
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 904
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 906
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 907
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 910
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    nop

    .line 913
    return v2

    .line 910
    .end local v2    # "_result":Z
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 911
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    throw v2
.end method

.method public blacklist setSysInfo(ILjava/lang/String;)V
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
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
    const-string v1, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 667
    iget-object v1, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

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

.method public blacklist setSysInfoSync(ILjava/lang/String;)I
    .registers 8
    .param p1, "type"    # I
    .param p2, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 878
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 879
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 882
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 883
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 884
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 886
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_2c

    move v2, v3

    .line 890
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    nop

    .line 893
    return v2

    .line 890
    .end local v2    # "_result":I
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    throw v2
.end method

.method public blacklist startDuplicatePacketPrediction()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 682
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 686
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 688
    nop

    .line 689
    return v2

    .line 686
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 687
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 688
    throw v2
.end method

.method public blacklist stopDuplicatePacketPrediction()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 694
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 697
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 698
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 699
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_26

    move v2, v3

    .line 703
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    nop

    .line 706
    return v2

    .line 703
    .end local v2    # "_result":Z
    :catchall_26
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    throw v2
.end method

.method public blacklist unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z
    .registers 7
    .param p1, "listener"    # Landroid/os/IRemoteCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 745
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 746
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 749
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 750
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 751
    iget-object v2, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 752
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 753
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 756
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    nop

    .line 759
    return v2

    .line 756
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    throw v2
.end method

.method public blacklist updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z
    .registers 7
    .param p1, "linkList"    # [Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 764
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 767
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 768
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 769
    iget-object v3, p0, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 770
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_29

    move v2, v3

    .line 774
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    nop

    .line 777
    return v2

    .line 774
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v2
.end method
