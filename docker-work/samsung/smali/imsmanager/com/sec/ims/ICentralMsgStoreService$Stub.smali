.class public abstract Lcom/sec/ims/ICentralMsgStoreService$Stub;
.super Landroid/os/Binder;
.source "ICentralMsgStoreService.java"

# interfaces
.implements Lcom/sec/ims/ICentralMsgStoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/ICentralMsgStoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_createParticipant:I = 0x13

.field static final TRANSACTION_createSession:I = 0x12

.field static final TRANSACTION_deleteMessage:I = 0x5

.field static final TRANSACTION_deleteOldLegacyMessage:I = 0x17

.field static final TRANSACTION_deleteParticipant:I = 0x15

.field static final TRANSACTION_deleteSession:I = 0x14

.field static final TRANSACTION_disableAutoSync:I = 0x1d

.field static final TRANSACTION_downloadMessage:I = 0x7

.field static final TRANSACTION_enableAutoSync:I = 0x1c

.field static final TRANSACTION_getRestartScreenName:I = 0x20

.field static final TRANSACTION_manualSync:I = 0x1b

.field static final TRANSACTION_notifyCloudMessageUpdate:I = 0x11

.field static final TRANSACTION_notifyUIScreen:I = 0x1a

.field static final TRANSACTION_onBufferDBReadResult:I = 0xc

.field static final TRANSACTION_onBufferDBReadResultBatch:I = 0xd

.field static final TRANSACTION_onFTUriResponse:I = 0x1f

.field static final TRANSACTION_onRCSDBReady:I = 0x16

.field static final TRANSACTION_onUIButtonProceed:I = 0xb

.field static final TRANSACTION_onUserEnterApp:I = 0x9

.field static final TRANSACTION_onUserLeaveApp:I = 0xa

.field static final TRANSACTION_readMessage:I = 0x3

.field static final TRANSACTION_receivedMessage:I = 0x1

.field static final TRANSACTION_registerCallback:I = 0xe

.field static final TRANSACTION_restartService:I = 0x19

.field static final TRANSACTION_resumeSync:I = 0x18

.field static final TRANSACTION_sentMessage:I = 0x2

.field static final TRANSACTION_startDeltaSync:I = 0x1e

.field static final TRANSACTION_startFullSync:I = 0x10

.field static final TRANSACTION_stopSync:I = 0xf

.field static final TRANSACTION_unReadMessage:I = 0x4

.field static final TRANSACTION_uploadMessage:I = 0x6

.field static final TRANSACTION_wipeOutMessage:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 127
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 128
    const-string v0, "com.sec.ims.ICentralMsgStoreService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 136
    if-nez p0, :cond_4

    .line 137
    const/4 v0, 0x0

    return-object v0

    .line 139
    :cond_4
    const-string v0, "com.sec.ims.ICentralMsgStoreService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 140
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/ICentralMsgStoreService;

    if-eqz v1, :cond_14

    .line 141
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/ICentralMsgStoreService;

    return-object v1

    .line 143
    :cond_14
    new-instance v1, Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/ICentralMsgStoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 147
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
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

    .line 151
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    const-string v10, "com.sec.ims.ICentralMsgStoreService"

    .line 152
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v8, v11, :cond_16

    const v0, 0xffffff

    if-gt v8, v0, :cond_16

    .line 153
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_18

    .line 152
    :cond_16
    move-object/from16 v12, p2

    .line 155
    :goto_18
    packed-switch v8, :pswitch_data_2a0

    .line 163
    packed-switch v8, :pswitch_data_2a6

    .line 525
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 159
    :pswitch_23
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    return v11

    .line 516
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 517
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 518
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->getRestartScreenName(Ljava/lang/String;)I

    move-result v1

    .line 519
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 521
    goto/16 :goto_29f

    .line 505
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_3a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onFTUriResponse(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    goto/16 :goto_29f

    .line 494
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 497
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->startDeltaSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    goto/16 :goto_29f

    .line 483
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 487
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->disableAutoSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    goto/16 :goto_29f

    .line 472
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 474
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 475
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->enableAutoSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 478
    goto/16 :goto_29f

    .line 461
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 464
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 465
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->manualSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    goto/16 :goto_29f

    .line 446
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_99
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 448
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 450
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 453
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->notifyUIScreen(Ljava/lang/String;ILjava/lang/String;I)V

    .line 455
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    goto/16 :goto_29f

    .line 437
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    :pswitch_b4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 438
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 439
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->restartService(Ljava/lang/String;)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 441
    goto/16 :goto_29f

    .line 428
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_c3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 429
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 430
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->resumeSync(Ljava/lang/String;)V

    .line 431
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    goto/16 :goto_29f

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 421
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->deleteOldLegacyMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 423
    goto/16 :goto_29f

    .line 408
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_e5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 409
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 410
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onRCSDBReady(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    goto/16 :goto_29f

    .line 397
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_f4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->deleteParticipant(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    goto/16 :goto_29f

    .line 386
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 388
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 389
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->deleteSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    goto/16 :goto_29f

    .line 375
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_11a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 377
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 378
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 379
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->createParticipant(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    goto/16 :goto_29f

    .line 364
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_12d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 367
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->createSession(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    goto/16 :goto_29f

    .line 351
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_140
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 355
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 356
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 357
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->notifyCloudMessageUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    goto/16 :goto_29f

    .line 340
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->startFullSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    goto/16 :goto_29f

    .line 329
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_16a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->stopSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    goto/16 :goto_29f

    .line 318
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_17d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/ICentralMsgStoreService;

    move-result-object v1

    .line 321
    .local v1, "_arg1":Lcom/sec/ims/ICentralMsgStoreService;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 322
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->registerCallback(Ljava/lang/String;Lcom/sec/ims/ICentralMsgStoreService;)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    goto/16 :goto_29f

    .line 307
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/sec/ims/ICentralMsgStoreService;
    :pswitch_194
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 309
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 311
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onBufferDBReadResultBatch(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    goto/16 :goto_29f

    .line 288
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_1a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 290
    .local v13, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 292
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 294
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 296
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 298
    .local v17, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 299
    .local v18, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 300
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onBufferDBReadResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    goto/16 :goto_29f

    .line 274
    .end local v13    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":I
    .end local v18    # "_arg5":Z
    :pswitch_1d5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 276
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 278
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 280
    invoke-virtual {v7, v0, v1, v2}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onUIButtonProceed(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    .line 281
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 283
    goto/16 :goto_29f

    .line 265
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1f0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onUserLeaveApp(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    goto/16 :goto_29f

    .line 256
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_1ff
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 258
    invoke-virtual {v7, v0}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->onUserEnterApp(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    goto/16 :goto_29f

    .line 245
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_20e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 247
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 249
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->wipeOutMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    goto/16 :goto_29f

    .line 234
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_221
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 236
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 238
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->downloadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    goto :goto_29f

    .line 223
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 225
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->uploadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    goto :goto_29f

    .line 212
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 216
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->deleteMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    goto :goto_29f

    .line 201
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 205
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->unReadMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    goto :goto_29f

    .line 190
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_269
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 193
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 194
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->readMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    goto :goto_29f

    .line 179
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_27b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 181
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 183
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->sentMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    goto :goto_29f

    .line 168
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_28d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 170
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 172
    invoke-virtual {v7, v0, v1}, Lcom/sec/ims/ICentralMsgStoreService$Stub;->receivedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    nop

    .line 528
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :goto_29f
    return v11

    :pswitch_data_2a0
    .packed-switch 0x5f4e5446
        :pswitch_23
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x1
        :pswitch_28d
        :pswitch_27b
        :pswitch_269
        :pswitch_257
        :pswitch_245
        :pswitch_233
        :pswitch_221
        :pswitch_20e
        :pswitch_1ff
        :pswitch_1f0
        :pswitch_1d5
        :pswitch_1a7
        :pswitch_194
        :pswitch_17d
        :pswitch_16a
        :pswitch_157
        :pswitch_140
        :pswitch_12d
        :pswitch_11a
        :pswitch_107
        :pswitch_f4
        :pswitch_e5
        :pswitch_d2
        :pswitch_c3
        :pswitch_b4
        :pswitch_99
        :pswitch_86
        :pswitch_73
        :pswitch_60
        :pswitch_4d
        :pswitch_3a
        :pswitch_27
    .end packed-switch
.end method
