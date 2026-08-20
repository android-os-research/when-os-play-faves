.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantP2pIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 371
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 372
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 375
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 379
    sget-object p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

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

    .line 715
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 719
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 721
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 722
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 724
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 726
    throw v2

    .line 728
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 698
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 699
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 700
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 702
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 703
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 705
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 707
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 708
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 709
    throw p0

    .line 711
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onDeviceFound([B[B[BLjava/lang/String;IBI[B)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 386
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 387
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 388
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 389
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 391
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByte(B)V

    .line 392
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 394
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_37

    if-eqz p0, :cond_2f

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 396
    :cond_2f
    :try_start_2f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDeviceFound is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p0

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw p0
.end method

.method public onDeviceFoundWithVendorElements([B[B[BLjava/lang/String;IBI[B[B[B)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 674
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 676
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 678
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 679
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 680
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByte(B)V

    .line 683
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 685
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 686
    invoke-virtual {v0, p10}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 687
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3f

    if-eqz p0, :cond_37

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 689
    :cond_37
    :try_start_37
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDeviceFoundWithVendorElements is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    .line 693
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw p0
.end method

.method public onDeviceLost([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 409
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 411
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDeviceLost is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 416
    throw p0
.end method

.method public onFindStopped()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 420
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 423
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 425
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onFindStopped is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 429
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 430
    throw p0
.end method

.method public onGoNegotiationCompleted(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 436
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 440
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGoNegotiationCompleted is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 445
    throw p0
.end method

.method public onGoNegotiationRequest([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 451
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 453
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 456
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGoNegotiationRequest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    throw p0
.end method

.method public onGroupFormationFailure(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 467
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 469
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 471
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGroupFormationFailure is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 476
    throw p0
.end method

.method public onGroupFormationSuccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 483
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_20

    if-eqz p0, :cond_18

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 485
    :cond_18
    :try_start_18
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onGroupFormationSuccess is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p0

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw p0
.end method

.method public onGroupFrequencyChanged(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 660
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 665
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGroupFrequencyChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 669
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 670
    throw p0
.end method

.method public onGroupRemoved(Ljava/lang/String;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 496
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 499
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 501
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGroupRemoved is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 505
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 506
    throw p0
.end method

.method public onGroupStarted(Ljava/lang/String;Z[BI[BLjava/lang/String;[BZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 510
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 512
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 515
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 516
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 518
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 520
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 521
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_39

    if-eqz p0, :cond_31

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 523
    :cond_31
    :try_start_31
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onGroupStarted is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_39
    .catchall {:try_start_31 .. :try_end_39} :catchall_39

    :catchall_39
    move-exception p0

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 528
    throw p0
.end method

.method public onInvitationReceived([B[B[BII)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 537
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 538
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 539
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_30

    if-eqz p0, :cond_28

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 542
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInvitationReceived is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 547
    throw p0
.end method

.method public onInvitationResult([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 553
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 558
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onInvitationResult is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 563
    throw p0
.end method

.method public onProvisionDiscoveryCompleted([BZBILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 569
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 571
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 572
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 573
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xc

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_30

    if-eqz p0, :cond_28

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 577
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onProvisionDiscoveryCompleted is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 581
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 582
    throw p0
.end method

.method public onR2DeviceFound([B[B[BLjava/lang/String;IBI[B[B)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 588
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 589
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 590
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 591
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 592
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeByte(B)V

    .line 595
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 597
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 598
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_3c

    if-eqz p0, :cond_34

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 600
    :cond_34
    :try_start_34
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onR2DeviceFound is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_3c

    :catchall_3c
    move-exception p0

    .line 604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    throw p0
.end method

.method public onServiceDiscoveryResponse([BC[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 611
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 614
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 615
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 617
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onServiceDiscoveryResponse is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw p0
.end method

.method public onStaAuthorized([B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 628
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 631
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 633
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onStaAuthorized is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    throw p0
.end method

.method public onStaDeauthorized([B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 644
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 646
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 647
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantP2pIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 649
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onStaDeauthorized is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 653
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    throw p0
.end method
