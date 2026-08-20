.class public abstract Lcom/mediatek/ims/internal/IMtkImsService$Stub;
.super Landroid/os/Binder;
.source "IMtkImsService.java"

# interfaces
.implements Lcom/mediatek/ims/internal/IMtkImsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/internal/IMtkImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_UpdateImsState:I = 0x9

.field static final blacklist TRANSACTION_addImsSmsListener:I = 0x10

.field static final blacklist TRANSACTION_changeEnabledCapabilities:I = 0x17

.field static final blacklist TRANSACTION_createMtkCallSession:I = 0x2

.field static final blacklist TRANSACTION_deregisterIms:I = 0x7

.field static final blacklist TRANSACTION_fallBackAospMTFlow:I = 0x15

.field static final blacklist TRANSACTION_getConfigInterfaceEx:I = 0xa

.field static final blacklist TRANSACTION_getCurrentCallCount:I = 0xe

.field static final blacklist TRANSACTION_getImsNetworkState:I = 0xf

.field static final blacklist TRANSACTION_getImsPdnStatus:I = 0x1b

.field static final blacklist TRANSACTION_getImsRegUriType:I = 0x5

.field static final blacklist TRANSACTION_getImsState:I = 0x4

.field static final blacklist TRANSACTION_getModemMultiImsCount:I = 0xd

.field static final blacklist TRANSACTION_getMtkUtInterface:I = 0xb

.field static final blacklist TRANSACTION_getPendingMtkCallSession:I = 0x3

.field static final blacklist TRANSACTION_getWfcRegErrorCode:I = 0x19

.field static final blacklist TRANSACTION_hangupAllCall:I = 0x6

.field static final blacklist TRANSACTION_isCameraAvailable:I = 0x13

.field static final blacklist TRANSACTION_registerProprietaryImsListener:I = 0x12

.field static final blacklist TRANSACTION_runGbaAuthentication:I = 0xc

.field static final blacklist TRANSACTION_sendSms:I = 0x11

.field static final blacklist TRANSACTION_setCallIndication:I = 0x1

.field static final blacklist TRANSACTION_setImsPreCallInfo:I = 0x1a

.field static final blacklist TRANSACTION_setMTRedirect:I = 0x14

.field static final blacklist TRANSACTION_setSipHeader:I = 0x16

.field static final blacklist TRANSACTION_setWfcRegErrorCode:I = 0x18

.field static final blacklist TRANSACTION_updateRadioState:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 189
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 190
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 198
    if-nez p0, :cond_4

    .line 199
    const/4 v0, 0x0

    return-object v0

    .line 201
    :cond_4
    const-string v0, "com.mediatek.ims.internal.IMtkImsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 202
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/ims/internal/IMtkImsService;

    if-eqz v1, :cond_14

    .line 203
    move-object v1, v0

    check-cast v1, Lcom/mediatek/ims/internal/IMtkImsService;

    return-object v1

    .line 205
    :cond_14
    new-instance v1, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 209
    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 26
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 213
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.mediatek.ims.internal.IMtkImsService"

    .line 214
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_15

    const v0, 0xffffff

    if-gt v9, v0, :cond_15

    .line 215
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    :cond_15
    packed-switch v9, :pswitch_data_2c6

    .line 225
    packed-switch v9, :pswitch_data_2cc

    .line 551
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 221
    :pswitch_20
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    return v13

    .line 542
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 543
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 544
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsPdnStatus(I)I

    move-result v1

    .line 545
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 547
    goto/16 :goto_2c5

    .line 522
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 524
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 526
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 528
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 530
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 531
    .local v6, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v6}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v17

    .line 533
    .local v17, "_arg4":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v18

    .line 534
    .local v18, "_arg5":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    move-object/from16 v0, p0

    move v1, v7

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v19, v6

    .end local v6    # "cl":Ljava/lang/ClassLoader;
    .local v19, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setImsPreCallInfo(IILjava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    goto/16 :goto_2c5

    .line 512
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/util/Map;
    .end local v18    # "_arg5":[Ljava/lang/String;
    .end local v19    # "cl":Ljava/lang/ClassLoader;
    :pswitch_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 513
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getWfcRegErrorCode(I)I

    move-result v1

    .line 515
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    goto/16 :goto_2c5

    .line 501
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 503
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 504
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 505
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setWfcRegErrorCode(II)V

    .line 506
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    goto/16 :goto_2c5

    .line 490
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_95
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 492
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 493
    .local v1, "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 494
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->changeEnabledCapabilities(ILandroid/telephony/ims/feature/CapabilityChangeRequest;)V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    goto/16 :goto_2c5

    .line 476
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    :pswitch_ac
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 479
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v2

    .line 481
    .local v2, "_arg1":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 482
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 483
    invoke-virtual {v8, v0, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setSipHeader(ILjava/util/Map;Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    goto/16 :goto_2c5

    .line 467
    .end local v0    # "_arg0":I
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v2    # "_arg1":Ljava/util/Map;
    .end local v3    # "_arg2":Ljava/lang/String;
    :pswitch_cb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 468
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->fallBackAospMTFlow(I)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_2c5

    .line 456
    .end local v0    # "_arg0":I
    :pswitch_da
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 458
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 459
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 460
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setMTRedirect(IZ)V

    .line 461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    goto/16 :goto_2c5

    .line 448
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_ed
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->isCameraAvailable()Z

    move-result v0

    .line 449
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 450
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 451
    goto/16 :goto_2c5

    .line 434
    .end local v0    # "_result":Z
    :pswitch_f9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 436
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/internal/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsRegistrationListener;

    move-result-object v1

    .line 438
    .local v1, "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/ims/internal/IMtkImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;

    move-result-object v2

    .line 440
    .local v2, "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 441
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 442
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->registerProprietaryImsListener(ILcom/android/ims/internal/IImsRegistrationListener;Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;Z)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    goto/16 :goto_2c5

    .line 413
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/ims/internal/IImsRegistrationListener;
    .end local v2    # "_arg2":Lcom/mediatek/ims/internal/IMtkImsRegistrationListener;
    .end local v3    # "_arg3":Z
    :pswitch_11c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 415
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 417
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 419
    .local v16, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 421
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 423
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 425
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v20

    .line 426
    .local v20, "_arg6":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->sendSms(IIILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    goto/16 :goto_2c5

    .line 402
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[B
    :pswitch_151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 404
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v1

    .line 405
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->addImsSmsListener(ILandroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 407
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto/16 :goto_2c5

    .line 392
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 393
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsNetworkState(I)[I

    move-result-object v1

    .line 395
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 397
    goto/16 :goto_2c5

    .line 382
    .end local v0    # "_arg0":I
    .end local v1    # "_result":[I
    :pswitch_17b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getCurrentCallCount(I)I

    move-result v1

    .line 385
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    goto/16 :goto_2c5

    .line 374
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_18e
    invoke-virtual/range {p0 .. p0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getModemMultiImsCount()I

    move-result v0

    .line 375
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    goto/16 :goto_2c5

    .line 357
    .end local v0    # "_result":I
    :pswitch_19a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 359
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    .line 361
    .local v7, "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 363
    .local v14, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 365
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 366
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->runGbaAuthentication(Ljava/lang/String;[BZII)Lcom/mediatek/gba/NafSessionKey;

    move-result-object v0

    .line 368
    .local v0, "_result":Lcom/mediatek/gba/NafSessionKey;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v11, v0, v13}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 370
    goto/16 :goto_2c5

    .line 347
    .end local v0    # "_result":Lcom/mediatek/gba/NafSessionKey;
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":[B
    .end local v14    # "_arg2":Z
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1c5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 348
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 349
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getMtkUtInterface(I)Lcom/mediatek/ims/internal/IMtkImsUt;

    move-result-object v1

    .line 350
    .local v1, "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 352
    goto/16 :goto_2c5

    .line 337
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/mediatek/ims/internal/IMtkImsUt;
    :pswitch_1d8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 338
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 339
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getConfigInterfaceEx(I)Lcom/mediatek/ims/internal/IMtkImsConfig;

    move-result-object v1

    .line 340
    .local v1, "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 342
    goto/16 :goto_2c5

    .line 328
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Lcom/mediatek/ims/internal/IMtkImsConfig;
    :pswitch_1eb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 329
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 330
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->UpdateImsState(I)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    goto/16 :goto_2c5

    .line 317
    .end local v0    # "_arg0":I
    :pswitch_1fa
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 319
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 320
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 321
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->updateRadioState(II)V

    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    goto/16 :goto_2c5

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_20d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 310
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->deregisterIms(I)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    goto/16 :goto_2c5

    .line 299
    .end local v0    # "_arg0":I
    :pswitch_21c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->hangupAllCall(I)V

    .line 302
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    goto/16 :goto_2c5

    .line 289
    .end local v0    # "_arg0":I
    :pswitch_22b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 290
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsRegUriType(I)I

    move-result v1

    .line 292
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_2c5

    .line 279
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_23e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 280
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v8, v0}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getImsState(I)I

    move-result v1

    .line 282
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    goto/16 :goto_2c5

    .line 267
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 271
    invoke-virtual {v8, v0, v1}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->getPendingMtkCallSession(ILjava/lang/String;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v2

    .line 272
    .local v2, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 273
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 274
    goto :goto_2c5

    .line 251
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    .line 255
    .local v1, "_arg1":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCallSessionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object v2

    .line 257
    .local v2, "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/ims/internal/IImsCallSession$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v3

    .line 258
    .local v3, "_arg3":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 259
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->createMtkCallSession(ILandroid/telephony/ims/ImsCallProfile;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/android/ims/internal/IImsCallSession;)Lcom/mediatek/ims/internal/IMtkImsCallSession;

    move-result-object v4

    .line 260
    .local v4, "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 262
    goto :goto_2c5

    .line 230
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/telephony/ims/ImsCallProfile;
    .end local v2    # "_arg2":Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .end local v3    # "_arg3":Lcom/android/ims/internal/IImsCallSession;
    .end local v4    # "_result":Lcom/mediatek/ims/internal/IMtkImsCallSession;
    :pswitch_291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 232
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 234
    .local v15, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 236
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 238
    .local v17, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 240
    .restart local v18    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 242
    .restart local v19    # "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 243
    .local v20, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 244
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move/from16 v4, v17

    move-object/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/mediatek/ims/internal/IMtkImsService$Stub;->setCallIndication(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V

    .line 245
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    nop

    .line 554
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":Ljava/lang/String;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":I
    .end local v18    # "_arg4":Ljava/lang/String;
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":I
    :goto_2c5
    return v13

    :pswitch_data_2c6
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2cc
    .packed-switch 0x1
        :pswitch_291
        :pswitch_267
        :pswitch_251
        :pswitch_23e
        :pswitch_22b
        :pswitch_21c
        :pswitch_20d
        :pswitch_1fa
        :pswitch_1eb
        :pswitch_1d8
        :pswitch_1c5
        :pswitch_19a
        :pswitch_18e
        :pswitch_17b
        :pswitch_168
        :pswitch_151
        :pswitch_11c
        :pswitch_f9
        :pswitch_ed
        :pswitch_da
        :pswitch_cb
        :pswitch_ac
        :pswitch_95
        :pswitch_82
        :pswitch_6f
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
