.class Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRadioDataResponse.java"

# interfaces
.implements Landroid/hardware/radio/data/IRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/data/IRadioDataResponse$Stub;
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

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    .line 277
    const-string v0, "-1"

    iput-object v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 274
    iput-object p1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 275
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 6
    .param p1, "serial"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 290
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_23

    .line 293
    .local v1, "_status":Z
    if-eqz v1, :cond_1b

    .line 298
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    nop

    .line 300
    return-void

    .line 294
    .restart local v1    # "_status":Z
    :cond_1b
    :try_start_1b
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method acknowledgeRequest is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "serial":I
    throw v2
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_23

    .line 298
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "serial":I
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 299
    throw v1
.end method

.method public blacklist allocatePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 305
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 306
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 307
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 309
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 314
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-void

    .line 310
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method allocatePduSessionIdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "id":I
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 314
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "id":I
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v1
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 280
    iget-object v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 322
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 323
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 324
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 329
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    nop

    .line 331
    return-void

    .line 325
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method cancelHandoverResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 329
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    throw v1
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 337
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 338
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 339
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 344
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    nop

    .line 346
    return-void

    .line 340
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method deactivateDataCallResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 344
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 345
    throw v1
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/RadioResponseInfo;[Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "dcResponse"    # [Landroid/hardware/radio/data/SetupDataCallResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 353
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 354
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 355
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 360
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    nop

    .line 362
    return-void

    .line 356
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getDataCallListResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "dcResponse":[Landroid/hardware/radio/data/SetupDataCallResult;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 360
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "dcResponse":[Landroid/hardware/radio/data/SetupDataCallResult;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 284
    sget-object v0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 535
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 537
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_3e

    .line 539
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    sget-object v2, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 540
    iget-object v2, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 541
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_13 .. :try_end_2b} :catchall_32

    .line 544
    .end local v2    # "_status":Z
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    goto :goto_3a

    .line 544
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    :catchall_32
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 545
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    throw v2

    .line 548
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_3a
    :goto_3a
    iget-object v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3c
    .catchall {:try_start_2b .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    .line 534
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

    .line 518
    iget v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_34

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    sget-object v2, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    iget-object v2, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 524
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 525
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_25
    .catchall {:try_start_d .. :try_end_25} :catchall_2c

    .line 527
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    goto :goto_34

    .line 527
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 528
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 529
    throw v2

    .line 531
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_34
    :goto_34
    iget v0, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getSlicingConfigResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SlicingConfig;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "slicingConfig"    # Landroid/hardware/radio/data/SlicingConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 367
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 369
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_28

    .line 371
    .local v1, "_status":Z
    if-eqz v1, :cond_20

    .line 376
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    nop

    .line 378
    return-void

    .line 372
    .restart local v1    # "_status":Z
    :cond_20
    :try_start_20
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getSlicingConfigResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "slicingConfig":Landroid/hardware/radio/data/SlicingConfig;
    throw v2
    :try_end_28
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    .line 376
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "slicingConfig":Landroid/hardware/radio/data/SlicingConfig;
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    throw v1
.end method

.method public blacklist releasePduSessionIdResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 383
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 385
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_25

    .line 386
    .local v1, "_status":Z
    if-eqz v1, :cond_1d

    .line 391
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    nop

    .line 393
    return-void

    .line 387
    .restart local v1    # "_status":Z
    :cond_1d
    :try_start_1d
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method releasePduSessionIdResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 391
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    throw v1
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 396
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 398
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 399
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 400
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 401
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 406
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    nop

    .line 408
    return-void

    .line 402
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setDataAllowedResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 406
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 407
    throw v1
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 413
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 414
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 415
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 416
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 421
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    nop

    .line 423
    return-void

    .line 417
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setDataProfileResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 421
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    throw v1
.end method

.method public blacklist setDataThrottlingResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 428
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 429
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 430
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 431
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 436
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    nop

    .line 438
    return-void

    .line 432
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setDataThrottlingResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 436
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    throw v1
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 443
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 445
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 446
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 451
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    nop

    .line 453
    return-void

    .line 447
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setInitialAttachApnResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 451
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 452
    throw v1
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/SetupDataCallResult;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "dcResponse"    # Landroid/hardware/radio/data/SetupDataCallResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 458
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 459
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 460
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 461
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 462
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 467
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    nop

    .line 469
    return-void

    .line 463
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setupDataCallResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "dcResponse":Landroid/hardware/radio/data/SetupDataCallResult;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 467
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "dcResponse":Landroid/hardware/radio/data/SetupDataCallResult;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw v1
.end method

.method public blacklist startHandoverResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 474
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 476
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 477
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 482
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    nop

    .line 484
    return-void

    .line 478
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method startHandoverResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 482
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 483
    throw v1
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/data/KeepaliveStatus;)V
    .registers 8
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .param p2, "status"    # Landroid/hardware/radio/data/KeepaliveStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 489
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 490
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 491
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 492
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_29

    .line 493
    .local v1, "_status":Z
    if-eqz v1, :cond_21

    .line 498
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    nop

    .line 500
    return-void

    .line 494
    .restart local v1    # "_status":Z
    :cond_21
    :try_start_21
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method startKeepaliveResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .end local p2    # "status":Landroid/hardware/radio/data/KeepaliveStatus;
    throw v2
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_29

    .line 498
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    .restart local p2    # "status":Landroid/hardware/radio/data/KeepaliveStatus;
    :catchall_29
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 499
    throw v1
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/hardware/radio/RadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 503
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 505
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    sget-object v1, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 507
    iget-object v1, p0, Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_26

    .line 508
    .local v1, "_status":Z
    if-eqz v1, :cond_1e

    .line 513
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    nop

    .line 515
    return-void

    .line 509
    .restart local v1    # "_status":Z
    :cond_1e
    :try_start_1e
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method stopKeepaliveResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    throw v2
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_26

    .line 513
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/radio/data/IRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Landroid/hardware/radio/RadioResponseInfo;
    :catchall_26
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 514
    throw v1
.end method
