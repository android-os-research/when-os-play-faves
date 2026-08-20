.class Landroid/telephony/data/IDataService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDataService.java"

# interfaces
.implements Landroid/telephony/data/IDataService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/IDataService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 341
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 2

    .line 344
    iget-object v0, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist cancelHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 500
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 503
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    nop

    .line 508
    return-void

    .line 506
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 507
    throw v1
.end method

.method public greylist-max-o createDataServiceProvider(I)V
    .registers 6
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw v1
.end method

.method public greylist-max-o deactivateDataCall(IIILandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "reason"    # I
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 401
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 404
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 405
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 406
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    nop

    .line 411
    return-void

    .line 409
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 410
    throw v1
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 348
    const-string v0, "android.telephony.data.IDataService"

    return-object v0
.end method

.method public greylist-max-o registerForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 459
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 462
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 465
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    nop

    .line 467
    return-void

    .line 465
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 466
    throw v1
.end method

.method public blacklist registerForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 511
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 513
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 516
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    nop

    .line 521
    return-void

    .line 519
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw v1
.end method

.method public greylist-max-o removeDataServiceProvider(I)V
    .registers 7
    .param p1, "slotId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_19

    .line 371
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    nop

    .line 373
    return-void

    .line 371
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 372
    throw v1
.end method

.method public blacklist requestDataCallList(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 449
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1c

    .line 452
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    throw v1
.end method

.method public greylist-max-o setDataProfile(ILjava/util/List;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/data/DataProfile;",
            ">;Z",
            "Landroid/telephony/data/IDataServiceCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    .local p2, "dps":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/data/DataProfile;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 434
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 435
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 436
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_22

    .line 439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    nop

    .line 441
    return-void

    .line 439
    :catchall_22
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 440
    throw v1
.end method

.method public greylist-max-o setInitialAttachApn(ILandroid/telephony/data/DataProfile;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p3, "isRoaming"    # Z
    .param p4, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 419
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 420
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 421
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_23

    .line 424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    nop

    .line 426
    return-void

    .line 424
    :catchall_23
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    throw v1
.end method

.method public blacklist setupDataCall(IILandroid/telephony/data/DataProfile;ZZILandroid/net/LinkProperties;ILandroid/telephony/data/NetworkSliceInfo;Landroid/telephony/data/TrafficDescriptor;ZLandroid/telephony/data/IDataServiceCallback;)V
    .registers 29
    .param p1, "slotId"    # I
    .param p2, "accessNetwork"    # I
    .param p3, "dataProfile"    # Landroid/telephony/data/DataProfile;
    .param p4, "isRoaming"    # Z
    .param p5, "allowRoaming"    # Z
    .param p6, "reason"    # I
    .param p7, "linkProperties"    # Landroid/net/LinkProperties;
    .param p8, "pduSessionId"    # I
    .param p9, "sliceInfo"    # Landroid/telephony/data/NetworkSliceInfo;
    .param p10, "trafficDescriptor"    # Landroid/telephony/data/TrafficDescriptor;
    .param p11, "matchAllRuleAllowed"    # Z
    .param p12, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 376
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v0, "android.telephony.data.IDataService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    move/from16 v2, p1

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    move/from16 v3, p2

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_7f

    .line 381
    const/4 v0, 0x0

    move-object/from16 v4, p3

    :try_start_16
    invoke-virtual {v1, v4, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_7b

    .line 382
    move/from16 v5, p4

    :try_start_1b
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_77

    .line 383
    move/from16 v6, p5

    :try_start_20
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_73

    .line 384
    move/from16 v7, p6

    :try_start_25
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_6f

    .line 385
    move-object/from16 v8, p7

    :try_start_2a
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_6b

    .line 386
    move/from16 v9, p8

    :try_start_2f
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_67

    .line 387
    move-object/from16 v10, p9

    :try_start_34
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_63

    .line 388
    move-object/from16 v11, p10

    :try_start_39
    invoke-virtual {v1, v11, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_5f

    .line 389
    move/from16 v12, p11

    :try_start_3e
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_5b

    .line 390
    move-object/from16 v13, p12

    :try_start_43
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_57

    .line 391
    move-object/from16 v14, p0

    :try_start_48
    iget-object v0, v14, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v15, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_55

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    nop

    .line 396
    return-void

    .line 394
    :catchall_55
    move-exception v0

    goto :goto_96

    :catchall_57
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_96

    :catchall_5b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_94

    :catchall_5f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_92

    :catchall_63
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_90

    :catchall_67
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8e

    :catchall_6b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8c

    :catchall_6f
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8a

    :catchall_73
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_88

    :catchall_77
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_86

    :catchall_7b
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_84

    :catchall_7f
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p3

    :goto_84
    move/from16 v5, p4

    :goto_86
    move/from16 v6, p5

    :goto_88
    move/from16 v7, p6

    :goto_8a
    move-object/from16 v8, p7

    :goto_8c
    move/from16 v9, p8

    :goto_8e
    move-object/from16 v10, p9

    :goto_90
    move-object/from16 v11, p10

    :goto_92
    move/from16 v12, p11

    :goto_94
    move-object/from16 v13, p12

    :goto_96
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    throw v0
.end method

.method public blacklist startHandover(IILandroid/telephony/data/IDataServiceCallback;)V
    .registers 9
    .param p1, "slotId"    # I
    .param p2, "cid"    # I
    .param p3, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 485
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 488
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 489
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_20

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 493
    nop

    .line 494
    return-void

    .line 492
    :catchall_20
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 493
    throw v1
.end method

.method public greylist-max-o unregisterForDataCallListChanged(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotId"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 472
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 475
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 478
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    nop

    .line 480
    return-void

    .line 478
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 479
    throw v1
.end method

.method public blacklist unregisterForUnthrottleApn(ILandroid/telephony/data/IDataServiceCallback;)V
    .registers 8
    .param p1, "slotIndex"    # I
    .param p2, "callback"    # Landroid/telephony/data/IDataServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "android.telephony.data.IDataService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 529
    iget-object v1, p0, Landroid/telephony/data/IDataService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    nop

    .line 534
    return-void

    .line 532
    :catchall_1d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    throw v1
.end method
