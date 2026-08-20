.class Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISupplicantStaIfaceCallback.java"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub;
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

    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 445
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const-string v0, "-1"

    .line 446
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 443
    iput-object p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 449
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 1

    .line 453
    sget-object p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

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

    .line 936
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 938
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3d

    .line 940
    :try_start_13
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 941
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_31

    .line 945
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_39

    :catchall_31
    move-exception v2

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    throw v2

    .line 949
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedHash:Ljava/lang/String;
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

    .line 919
    iget v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_33

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 923
    :try_start_d
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 924
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 925
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 926
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I
    :try_end_24
    .catchall {:try_start_d .. :try_end_24} :catchall_2b

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    :catchall_2b
    move-exception p0

    .line 928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 930
    throw p0

    .line 932
    :cond_33
    :goto_33
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mCachedVersion:I

    return p0
.end method

.method public onAnqpQueryDone([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/AnqpData;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/Hs20AnqpData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p1, 0x0

    .line 461
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 462
    invoke-virtual {v0, p3, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 463
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-interface {p0, p2, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 465
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onAnqpQueryDone is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 469
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    throw p0
.end method

.method public onAssociationRejected(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 477
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 478
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 480
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onAssociationRejected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    throw p0
.end method

.method public onAuthenticationTimeout([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 491
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 493
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_23

    if-eqz p0, :cond_1b

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 495
    :cond_1b
    :try_start_1b
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onAuthenticationTimeout is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    :catchall_23
    move-exception p0

    .line 499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 500
    throw p0
.end method

.method public onAuxiliarySupplicantEvent(I[BLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 506
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 509
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 510
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 512
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onAuxiliarySupplicantEvent is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    throw p0
.end method

.method public onBssTmHandlingDone(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/BssTmData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 523
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 524
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 525
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 527
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onBssTmHandlingDone is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 532
    throw p0
.end method

.method public onBssidChanged(B[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 540
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 541
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x6

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_26

    if-eqz p0, :cond_1e

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 543
    :cond_1e
    :try_start_1e
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onBssidChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    :catchall_26
    move-exception p0

    .line 547
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw p0
.end method

.method public onDisconnected([BZI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 554
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 556
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 557
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p1, 0x7

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_29

    if-eqz p0, :cond_21

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 560
    :cond_21
    :try_start_21
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDisconnected is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    :catchall_29
    move-exception p0

    .line 564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    throw p0
.end method

.method public onDppFailure(ILjava/lang/String;Ljava/lang/String;[C)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 571
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeCharArray([C)V

    .line 576
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x8

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_2d

    if-eqz p0, :cond_25

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 578
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDppFailure is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 582
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    throw p0
.end method

.method public onDppProgress(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 587
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 589
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 590
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 591
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 593
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDppProgress is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    throw p0
.end method

.method public onDppSuccess(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 604
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 608
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDppSuccess is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 612
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    throw p0
.end method

.method public onDppSuccessConfigReceived([BLjava/lang/String;[BILcom/samsung/wifi/x/android/hardware/wifi/supplicant/DppConnectionKeys;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 617
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 619
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 621
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 623
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 624
    invoke-virtual {v0, p5, p1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 625
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xb

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_31

    if-eqz p0, :cond_29

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 627
    :cond_29
    :try_start_29
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onDppSuccessConfigReceived is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_31

    :catchall_31
    move-exception p0

    .line 631
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 632
    throw p0
.end method

.method public onDppSuccessConfigSent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 636
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 638
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 639
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_21

    if-eqz p0, :cond_19

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 641
    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onDppSuccessConfigSent is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 646
    throw p0
.end method

.method public onEapFailure([BI)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 652
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 654
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xd

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 657
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onEapFailure is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 662
    throw p0
.end method

.method public onExtRadioWorkStart(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 666
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 668
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 670
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xe

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 672
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onExtRadioWorkStart is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 677
    throw p0
.end method

.method public onExtRadioWorkTimeout(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 685
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 687
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onExtRadioWorkTimeout is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 691
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 692
    throw p0
.end method

.method public onHs20DeauthImminentNotice([BIILjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 696
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 698
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 703
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_2d

    if-eqz p0, :cond_25

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 705
    :cond_25
    :try_start_25
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onHs20DeauthImminentNotice is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception p0

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw p0
.end method

.method public onHs20IconQueryDone([BLjava/lang/String;[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 714
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 716
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 717
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 718
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 720
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x11

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 722
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onHs20IconQueryDone is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 727
    throw p0
.end method

.method public onHs20SubscriptionRemediation([BBLjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 733
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 736
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 737
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x12

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 739
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onHs20SubscriptionRemediation is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 743
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 744
    throw p0
.end method

.method public onHs20TermsAndConditionsAcceptanceRequestedNotification([BLjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 750
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 751
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 752
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 753
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x13

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 755
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onHs20TermsAndConditionsAcceptanceRequestedNotification is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw p0
.end method

.method public onNetworkAdded(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 768
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 770
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkAdded is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    throw p0
.end method

.method public onNetworkNotFound([B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 781
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 783
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x15

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 785
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkNotFound is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 789
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 790
    throw p0
.end method

.method public onNetworkRemoved(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 798
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x16

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_24

    if-eqz p0, :cond_1c

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 800
    :cond_1c
    :try_start_1c
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onNetworkRemoved is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    :catchall_24
    move-exception p0

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw p0
.end method

.method public onPmkCacheAdded(J[B)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 811
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 813
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 814
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x17

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_27

    if-eqz p0, :cond_1f

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 816
    :cond_1f
    :try_start_1f
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onPmkCacheAdded is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_27

    :catchall_27
    move-exception p0

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw p0
.end method

.method public onQosPolicyRequest(I[Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyData;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    .line 907
    invoke-virtual {v0, p2, p1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 908
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x1d

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p0, p1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_28

    if-eqz p0, :cond_20

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 910
    :cond_20
    :try_start_20
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onQosPolicyRequest is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p0

    .line 914
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 915
    throw p0
.end method

.method public onQosPolicyReset()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 891
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 892
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_21

    if-eqz p0, :cond_19

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 894
    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onQosPolicyReset is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    throw p0
.end method

.method public onStateChanged(I[BI[BZ)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 825
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 827
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 830
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 831
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 832
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 833
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x18

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_30

    if-eqz p0, :cond_28

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 835
    :cond_28
    :try_start_28
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onStateChanged is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p0

    .line 839
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    throw p0
.end method

.method public onWpsEventFail([BII)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 846
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 848
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 849
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x19

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2a

    if-eqz p0, :cond_22

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 852
    :cond_22
    :try_start_22
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Method onWpsEventFail is unimplemented."

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception p0

    .line 856
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 857
    throw p0
.end method

.method public onWpsEventPbcOverlap()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 863
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 864
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_21

    if-eqz p0, :cond_19

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 866
    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onWpsEventPbcOverlap is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 871
    throw p0
.end method

.method public onWpsEventSuccess()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 875
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 877
    :try_start_4
    sget-object v1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 878
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/ISupplicantStaIfaceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_21

    if-eqz p0, :cond_19

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 880
    :cond_19
    :try_start_19
    new-instance p0, Landroid/os/RemoteException;

    const-string v1, "Method onWpsEventSuccess is unimplemented."

    invoke-direct {p0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_21

    :catchall_21
    move-exception p0

    .line 884
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 885
    throw p0
.end method
