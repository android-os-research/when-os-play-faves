.class Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehRadioNetworkResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedVersion:I

    .line 379
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 376
    iput-object p1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 377
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 382
    iget-object v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist emergencyControlResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 6
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 392
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 393
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 394
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_24

    .line 395
    .local v1, "_status":Z
    if-eqz v1, :cond_1c

    .line 400
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    nop

    .line 402
    return-void

    .line 396
    .restart local v1    # "_status":Z
    :cond_1c
    :try_start_1c
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method emergencyControlResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 400
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v1
.end method

.method public blacklist emergencySearchResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "respEmergencySearch"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 408
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 410
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 411
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 416
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    nop

    .line 418
    return-void

    .line 412
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method emergencySearchResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "respEmergencySearch":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 416
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "respEmergencySearch":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 417
    throw v1
.end method

.method public blacklist getAvailableNetworksResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "networkInfos"    # [Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 423
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 425
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 426
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 427
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 432
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 433
    nop

    .line 434
    return-void

    .line 428
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getAvailableNetworksResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "networkInfos":[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 432
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "networkInfos":[Lvendor/samsung/hardware/radio/network/SehOperatorInfo;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 433
    throw v1
.end method

.method public blacklist getCnapResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "m"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 441
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 443
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 448
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    nop

    .line 450
    return-void

    .line 444
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCnapResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "m":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 448
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "m":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw v1
.end method

.method public blacklist getCsgListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehCsgInfo;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "csgInfos"    # [Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 455
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 457
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 458
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 459
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 464
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    nop

    .line 466
    return-void

    .line 460
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCsgListResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "csgInfos":[Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 464
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "csgInfos":[Lvendor/samsung/hardware/radio/network/SehCsgInfo;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 465
    throw v1
.end method

.method public blacklist getDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "isDisable"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 469
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 472
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 475
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 480
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    nop

    .line 482
    return-void

    .line 476
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getDisable2gResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "isDisable":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 480
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "isDisable":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 386
    sget-object v0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 764
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 768
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 770
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 771
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 773
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    goto :goto_3a

    .line 773
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 774
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    throw v2

    .line 777
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 763
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 747
    iget v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 748
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 749
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 751
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 752
    iget-object v2, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 753
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 754
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 756
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    goto :goto_34

    .line 756
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    throw v2

    .line 760
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getNrIconTypeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "nrIconType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 487
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 488
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 489
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 491
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 496
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    nop

    .line 498
    return-void

    .line 492
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getNrIconTypeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "nrIconType":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 496
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "nrIconType":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    throw v1
.end method

.method public blacklist getNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "nrMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 503
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 505
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 507
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 512
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    nop

    .line 514
    return-void

    .line 508
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getNrModeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "nrMode":I
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 512
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "nrMode":I
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v1
.end method

.method public blacklist getPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "infos"    # [Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 519
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 521
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 522
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 523
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 528
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    nop

    .line 530
    return-void

    .line 524
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getPreferredNetworkListResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "infos":[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 528
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "infos":[Lvendor/samsung/hardware/radio/network/SehPreferredNetworkInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    throw v1
.end method

.method public blacklist getRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "networkInfo"    # [Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 533
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 535
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 536
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 537
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 538
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 539
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 544
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    nop

    .line 546
    return-void

    .line 540
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getRoamingNetworkInfoViaBLEResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "networkInfo":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 544
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "networkInfo":[Lvendor/samsung/hardware/radio/network/SehRoamingNetworkInfo;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    throw v1
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "configurations"    # [Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 551
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 553
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 554
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 555
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 560
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    nop

    .line 562
    return-void

    .line 556
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getVendorSpecificConfigurationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "configurations":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 560
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "configurations":[Lvendor/samsung/hardware/radio/network/SehVendorConfiguration;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    throw v1
.end method

.method public blacklist selectCsgManualResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 567
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 568
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 569
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 570
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 575
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    nop

    .line 577
    return-void

    .line 571
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method selectCsgManualResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 575
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 576
    throw v1
.end method

.method public blacklist sendEncodedUssdResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 582
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 583
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 584
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 585
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 590
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    nop

    .line 592
    return-void

    .line 586
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendEncodedUssdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 590
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    throw v1
.end method

.method public blacklist sendRequestRawResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[B)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 598
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 600
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 601
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 606
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    nop

    .line 608
    return-void

    .line 602
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendRequestRawResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "data":[B
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 606
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "data":[B
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 607
    throw v1
.end method

.method public blacklist sendRequestStringsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[Ljava/lang/String;)V
    .registers 8
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 613
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 614
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 615
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 617
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 622
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    nop

    .line 624
    return-void

    .line 618
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendRequestStringsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "data":[Ljava/lang/String;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 622
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "data":[Ljava/lang/String;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    throw v1
.end method

.method public blacklist setCurrentNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
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
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 630
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 631
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 632
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 637
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    nop

    .line 639
    return-void

    .line 633
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setCurrentNetworkInfoViaBLEResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 637
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    throw v1
.end method

.method public blacklist setDisable2gResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 644
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 645
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 646
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 647
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 652
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    nop

    .line 654
    return-void

    .line 648
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setDisable2gResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 652
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 653
    throw v1
.end method

.method public blacklist setImsCallListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 660
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 661
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 662
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 667
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    nop

    .line 669
    return-void

    .line 663
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setImsCallListResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 667
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw v1
.end method

.method public blacklist setNrModeResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 674
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 676
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 677
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 682
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    nop

    .line 684
    return-void

    .line 678
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setNrModeResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 682
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 683
    throw v1
.end method

.method public blacklist setPreferredNetworkListResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 689
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 690
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 691
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 692
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 697
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    nop

    .line 699
    return-void

    .line 693
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setPreferredNetworkListResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 697
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 698
    throw v1
.end method

.method public blacklist setRoamingNetworkInfoViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 704
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 705
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 706
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 707
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 712
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 713
    nop

    .line 714
    return-void

    .line 708
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setRoamingNetworkInfoViaBLEResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 712
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 713
    throw v1
.end method

.method public blacklist setScanResultViaBLEResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 717
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 719
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 720
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 721
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 722
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 727
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    nop

    .line 729
    return-void

    .line 723
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setScanResultViaBLEResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 727
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    throw v1
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 735
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 736
    iget-object v1, p0, Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 737
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 742
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 743
    nop

    .line 744
    return-void

    .line 738
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setVendorSpecificConfigurationResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 742
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/network/ISehRadioNetworkResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 743
    throw v1
.end method
