.class public abstract Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;
.super Landroid/os/Binder;
.source "IPowerHalMgr.java"

# interfaces
.implements Lcom/mediatek/powerhalmgr/IPowerHalMgr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/powerhalmgr/IPowerHalMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_UpdateManagementPkt:I = 0xc

.field static final blacklist TRANSACTION_configBoosterInfo:I = 0x1f

.field static final blacklist TRANSACTION_flushPriorityRules:I = 0x1e

.field static final blacklist TRANSACTION_getCpuCap:I = 0x8

.field static final blacklist TRANSACTION_getCpuRTInfo:I = 0xb

.field static final blacklist TRANSACTION_getGpuCap:I = 0x9

.field static final blacklist TRANSACTION_getGpuRTInfo:I = 0xa

.field static final blacklist TRANSACTION_isDupPacketPredictionStarted:I = 0x11

.field static final blacklist TRANSACTION_mtkCusPowerHint:I = 0x7

.field static final blacklist TRANSACTION_mtkPowerHint:I = 0x19

.field static final blacklist TRANSACTION_perfCusLockHint:I = 0x1a

.field static final blacklist TRANSACTION_perfLockAcquire:I = 0x16

.field static final blacklist TRANSACTION_perfLockRelease:I = 0x17

.field static final blacklist TRANSACTION_querySysInfo:I = 0x18

.field static final blacklist TRANSACTION_registerDuplicatePacketPredictionEvent:I = 0x12

.field static final blacklist TRANSACTION_scnConfig:I = 0x2

.field static final blacklist TRANSACTION_scnDisable:I = 0x5

.field static final blacklist TRANSACTION_scnEnable:I = 0x4

.field static final blacklist TRANSACTION_scnReg:I = 0x1

.field static final blacklist TRANSACTION_scnUltraCfg:I = 0x6

.field static final blacklist TRANSACTION_scnUnreg:I = 0x3

.field static final blacklist TRANSACTION_setForegroundSports:I = 0xd

.field static final blacklist TRANSACTION_setPredictInfo:I = 0x15

.field static final blacklist TRANSACTION_setPriorityByLinkinfo:I = 0x1d

.field static final blacklist TRANSACTION_setPriorityByUid:I = 0x1c

.field static final blacklist TRANSACTION_setSysInfo:I = 0xe

.field static final blacklist TRANSACTION_setSysInfoSync:I = 0x1b

.field static final blacklist TRANSACTION_startDuplicatePacketPrediction:I = 0xf

.field static final blacklist TRANSACTION_stopDuplicatePacketPrediction:I = 0x10

.field static final blacklist TRANSACTION_unregisterDuplicatePacketPredictionEvent:I = 0x13

.field static final blacklist TRANSACTION_updateMultiDuplicatePacketLink:I = 0x14


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 134
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 135
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/powerhalmgr/IPowerHalMgr;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 143
    if-nez p0, :cond_4

    .line 144
    const/4 v0, 0x0

    return-object v0

    .line 146
    :cond_4
    const-string v0, "com.mediatek.powerhalmgr.IPowerHalMgr"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 147
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    if-eqz v1, :cond_14

    .line 148
    move-object v1, v0

    check-cast v1, Lcom/mediatek/powerhalmgr/IPowerHalMgr;

    return-object v1

    .line 150
    :cond_14
    new-instance v1, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 154
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 24
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.mediatek.powerhalmgr.IPowerHalMgr"

    .line 159
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 160
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    :cond_15
    packed-switch v8, :pswitch_data_244

    .line 170
    packed-switch v8, :pswitch_data_24a

    .line 471
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 166
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    return v12

    .line 462
    :pswitch_24
    sget-object v0, Lcom/mediatek/powerhalmgr/BoosterInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/powerhalmgr/BoosterInfo;

    .line 463
    .local v0, "_arg0":Lcom/mediatek/powerhalmgr/BoosterInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->configBoosterInfo(Lcom/mediatek/powerhalmgr/BoosterInfo;)Z

    move-result v1

    .line 465
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 467
    goto/16 :goto_242

    .line 452
    .end local v0    # "_arg0":Lcom/mediatek/powerhalmgr/BoosterInfo;
    .end local v1    # "_result":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->flushPriorityRules(I)Z

    move-result v1

    .line 455
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 457
    goto/16 :goto_242

    .line 440
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/mediatek/powerhalmgr/DupLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 443
    .local v1, "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPriorityByLinkinfo(ILcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v2

    .line 445
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 447
    goto/16 :goto_242

    .line 428
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .end local v2    # "_result":Z
    :pswitch_69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 431
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPriorityByUid(II)Z

    move-result v2

    .line 433
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 435
    goto/16 :goto_242

    .line 416
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setSysInfoSync(ILjava/lang/String;)I

    move-result v2

    .line 421
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    goto/16 :goto_242

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 406
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 407
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfCusLockHint(II)I

    move-result v2

    .line 409
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    goto/16 :goto_242

    .line 394
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 396
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 397
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->mtkPowerHint(II)V

    .line 399
    goto/16 :goto_242

    .line 382
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 384
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 385
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 386
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->querySysInfo(II)I

    move-result v2

    .line 387
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 389
    goto/16 :goto_242

    .line 374
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 375
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 376
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfLockRelease(I)V

    .line 377
    goto/16 :goto_242

    .line 360
    .end local v0    # "_arg0":I
    :pswitch_e1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 362
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 365
    .local v2, "_arg2":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 366
    invoke-virtual {v7, v0, v1, v2}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->perfLockAcquire(II[I)I

    move-result v3

    .line 367
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 368
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    goto/16 :goto_242

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[I
    .end local v3    # "_result":I
    :pswitch_fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 353
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setPredictInfo(Ljava/lang/String;I)V

    .line 355
    goto/16 :goto_242

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :pswitch_10c
    sget-object v0, Lcom/mediatek/powerhalmgr/DupLinkInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mediatek/powerhalmgr/DupLinkInfo;

    .line 341
    .local v0, "_arg0":[Lcom/mediatek/powerhalmgr/DupLinkInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 342
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->updateMultiDuplicatePacketLink([Lcom/mediatek/powerhalmgr/DupLinkInfo;)Z

    move-result v1

    .line 343
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 345
    goto/16 :goto_242

    .line 330
    .end local v0    # "_arg0":[Lcom/mediatek/powerhalmgr/DupLinkInfo;
    .end local v1    # "_result":Z
    :pswitch_123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 331
    .local v0, "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->unregisterDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1

    .line 333
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 335
    goto/16 :goto_242

    .line 320
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_result":Z
    :pswitch_13a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IRemoteCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IRemoteCallback;

    move-result-object v0

    .line 321
    .restart local v0    # "_arg0":Landroid/os/IRemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->registerDuplicatePacketPredictionEvent(Landroid/os/IRemoteCallback;)Z

    move-result v1

    .line 323
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 325
    goto/16 :goto_242

    .line 312
    .end local v0    # "_arg0":Landroid/os/IRemoteCallback;
    .end local v1    # "_result":Z
    :pswitch_151
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->isDupPacketPredictionStarted()Z

    move-result v0

    .line 313
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 315
    goto/16 :goto_242

    .line 305
    .end local v0    # "_result":Z
    :pswitch_15d
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->stopDuplicatePacketPrediction()Z

    move-result v0

    .line 306
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 308
    goto/16 :goto_242

    .line 298
    .end local v0    # "_result":Z
    :pswitch_169
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->startDuplicatePacketPrediction()Z

    move-result v0

    .line 299
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 301
    goto/16 :goto_242

    .line 289
    .end local v0    # "_result":Z
    :pswitch_175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setSysInfo(ILjava/lang/String;)V

    .line 294
    goto/16 :goto_242

    .line 283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_185
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->setForegroundSports()V

    .line 284
    goto/16 :goto_242

    .line 274
    :pswitch_18a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->UpdateManagementPkt(ILjava/lang/String;)V

    .line 279
    goto/16 :goto_242

    .line 268
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_19a
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getCpuRTInfo()V

    .line 269
    goto/16 :goto_242

    .line 263
    :pswitch_19f
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getGpuRTInfo()V

    .line 264
    goto/16 :goto_242

    .line 258
    :pswitch_1a4
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getGpuCap()V

    .line 259
    goto/16 :goto_242

    .line 253
    :pswitch_1a9
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->getCpuCap()V

    .line 254
    goto/16 :goto_242

    .line 244
    :pswitch_1ae
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 247
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 248
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->mtkCusPowerHint(II)V

    .line 249
    goto/16 :goto_242

    .line 226
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_1be
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 228
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 230
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 232
    .local v15, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 234
    .local v16, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 236
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 237
    .local v18, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnUltraCfg(IIIIII)V

    .line 239
    goto :goto_242

    .line 218
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_1e8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 220
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnDisable(I)V

    .line 221
    goto :goto_242

    .line 208
    .end local v0    # "_arg0":I
    :pswitch_1f3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 211
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 212
    invoke-virtual {v7, v0, v1}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnEnable(II)V

    .line 213
    goto :goto_242

    .line 200
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 202
    invoke-virtual {v7, v0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnUnreg(I)V

    .line 203
    goto :goto_242

    .line 182
    .end local v0    # "_arg0":I
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 186
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 188
    .restart local v15    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 190
    .restart local v16    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 192
    .restart local v17    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 193
    .restart local v18    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnConfig(IIIIII)V

    .line 195
    goto :goto_242

    .line 174
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":I
    .end local v16    # "_arg3":I
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":I
    :pswitch_237
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/powerhalmgr/IPowerHalMgr$Stub;->scnReg()I

    move-result v0

    .line 175
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    nop

    .line 474
    .end local v0    # "_result":I
    :goto_242
    return v12

    nop

    :pswitch_data_244
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_24a
    .packed-switch 0x1
        :pswitch_237
        :pswitch_20d
        :pswitch_202
        :pswitch_1f3
        :pswitch_1e8
        :pswitch_1be
        :pswitch_1ae
        :pswitch_1a9
        :pswitch_1a4
        :pswitch_19f
        :pswitch_19a
        :pswitch_18a
        :pswitch_185
        :pswitch_175
        :pswitch_169
        :pswitch_15d
        :pswitch_151
        :pswitch_13a
        :pswitch_123
        :pswitch_10c
        :pswitch_fc
        :pswitch_e1
        :pswitch_d5
        :pswitch_be
        :pswitch_ae
        :pswitch_97
        :pswitch_80
        :pswitch_69
        :pswitch_4e
        :pswitch_3b
        :pswitch_24
    .end packed-switch
.end method
