.class public abstract Lcom/sec/ims/volte2/IVolteService$Stub;
.super Landroid/os/Binder;
.source "IVolteService.java"

# interfaces
.implements Lcom/sec/ims/volte2/IVolteService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/volte2/IVolteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_changeAudioPath:I = 0x1d

.field static final TRANSACTION_createCallProfile:I = 0x5

.field static final TRANSACTION_createSession:I = 0x6

.field static final TRANSACTION_createSessionWithRegId:I = 0x7

.field static final TRANSACTION_deRegisterForVolteServiceEvent:I = 0x2

.field static final TRANSACTION_deregisterForCallStateEvent:I = 0xc

.field static final TRANSACTION_deregisterForCallStateEventForSlot:I = 0xe

.field static final TRANSACTION_enableCallWaitingRule:I = 0xf

.field static final TRANSACTION_getCallCount:I = 0x11

.field static final TRANSACTION_getImsCallInfos:I = 0x21

.field static final TRANSACTION_getNetworkType:I = 0x1b

.field static final TRANSACTION_getParticipantIdForMerge:I = 0x18

.field static final TRANSACTION_getPendingSession:I = 0x8

.field static final TRANSACTION_getRegistrationInfoByPhoneId:I = 0x1a

.field static final TRANSACTION_getRttMode:I = 0x12

.field static final TRANSACTION_getSession:I = 0x9

.field static final TRANSACTION_getSessionByCallId:I = 0x19

.field static final TRANSACTION_getTrn:I = 0x20

.field static final TRANSACTION_notifyProgressIncomingCall:I = 0x10

.field static final TRANSACTION_registerForCallStateEvent:I = 0xb

.field static final TRANSACTION_registerForCallStateEventForSlot:I = 0xd

.field static final TRANSACTION_registerForVolteServiceEvent:I = 0x1

.field static final TRANSACTION_registerImsRegistrationListener:I = 0x3

.field static final TRANSACTION_registerRttEventListener:I = 0x16

.field static final TRANSACTION_sendRttSessionModifyRequest:I = 0x15

.field static final TRANSACTION_sendRttSessionModifyResponse:I = 0x14

.field static final TRANSACTION_setAutomaticMode:I = 0x13

.field static final TRANSACTION_setTtyMode:I = 0xa

.field static final TRANSACTION_startLocalRingBackTone:I = 0x1e

.field static final TRANSACTION_stopLocalRingBackTone:I = 0x1f

.field static final TRANSACTION_unregisterImsRegistrationListener:I = 0x4

.field static final TRANSACTION_unregisterRttEventListener:I = 0x17

.field static final TRANSACTION_updateEccUrn:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 136
    const-string v0, "com.sec.ims.volte2.IVolteService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/ims/volte2/IVolteService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 144
    if-nez p0, :cond_4

    .line 145
    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_4
    const-string v0, "com.sec.ims.volte2.IVolteService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 148
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/ims/volte2/IVolteService;

    if-eqz v1, :cond_14

    .line 149
    move-object v1, v0

    check-cast v1, Lcom/sec/ims/volte2/IVolteService;

    return-object v1

    .line 151
    :cond_14
    new-instance v1, Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/ims/volte2/IVolteService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 155
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
    const-string v0, "com.sec.ims.volte2.IVolteService"

    .line 160
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 161
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    :cond_d
    packed-switch p1, :pswitch_data_2ba

    .line 171
    packed-switch p1, :pswitch_data_2c0

    .line 520
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 167
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    return v1

    .line 511
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 512
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 513
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;

    move-result-object v3

    .line 514
    .local v3, "_result":[Lcom/sec/ims/volte2/data/ImsCallInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 516
    goto/16 :goto_2b8

    .line 499
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/sec/ims/volte2/data/ImsCallInfo;
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 503
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 505
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 506
    goto/16 :goto_2b8

    .line 491
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_46
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->stopLocalRingBackTone()I

    move-result v2

    .line 492
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    goto/16 :goto_2b8

    .line 478
    .end local v2    # "_result":I
    :pswitch_52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 482
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 483
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 484
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->startLocalRingBackTone(III)I

    move-result v5

    .line 485
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 486
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 487
    goto/16 :goto_2b8

    .line 467
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_result":I
    :pswitch_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 469
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 470
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 471
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->changeAudioPath(II)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    goto/16 :goto_2b8

    .line 455
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_80
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 457
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 458
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 459
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->updateEccUrn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 460
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 462
    goto/16 :goto_2b8

    .line 445
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 446
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 447
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getNetworkType(I)I

    move-result v3

    .line 448
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    goto/16 :goto_2b8

    .line 435
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_aa
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 436
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 438
    .local v3, "_result":[Lcom/sec/ims/ImsRegistration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 439
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 440
    goto/16 :goto_2b8

    .line 425
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[Lcom/sec/ims/ImsRegistration;
    :pswitch_bd
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 426
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 428
    .local v3, "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 430
    goto/16 :goto_2b8

    .line 413
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :pswitch_d0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 416
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 417
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->getParticipantIdForMerge(II)I

    move-result v4

    .line 418
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    goto/16 :goto_2b8

    .line 402
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":I
    :pswitch_e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 404
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v3

    .line 405
    .local v3, "_arg1":Lcom/sec/ims/IRttEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 407
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    goto/16 :goto_2b8

    .line 391
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IRttEventListener;
    :pswitch_fe
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/IRttEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IRttEventListener;

    move-result-object v3

    .line 394
    .restart local v3    # "_arg1":Lcom/sec/ims/IRttEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 395
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    goto/16 :goto_2b8

    .line 380
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/IRttEventListener;
    :pswitch_115
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 383
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->sendRttSessionModifyRequest(IZ)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    goto/16 :goto_2b8

    .line 369
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 371
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 372
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->sendRttSessionModifyResponse(IZ)V

    .line 374
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    goto/16 :goto_2b8

    .line 358
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_13b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 360
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 361
    .restart local v3    # "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 362
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->setAutomaticMode(IZ)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    goto/16 :goto_2b8

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_14e
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->getRttMode()I

    move-result v2

    .line 351
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    goto/16 :goto_2b8

    .line 343
    .end local v2    # "_result":I
    :pswitch_15a
    invoke-virtual {p0}, Lcom/sec/ims/volte2/IVolteService$Stub;->getCallCount()[I

    move-result-object v2

    .line 344
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 346
    goto/16 :goto_2b8

    .line 332
    .end local v2    # "_result":[I
    :pswitch_166
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 334
    .local v2, "_arg0":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 335
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v4

    .line 336
    .local v4, "_arg1":Ljava/util/Map;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 337
    invoke-virtual {p0, v2, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->notifyProgressIncomingCall(ILjava/util/Map;)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    goto/16 :goto_2b8

    .line 323
    .end local v2    # "_arg0":I
    .end local v3    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "_arg1":Ljava/util/Map;
    :pswitch_181
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 324
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->enableCallWaitingRule(Z)V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    goto/16 :goto_2b8

    .line 312
    .end local v2    # "_arg0":Z
    :pswitch_190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v3

    .line 315
    .local v3, "_arg1":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 317
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    goto/16 :goto_2b8

    .line 301
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_1a7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 303
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v3

    .line 304
    .restart local v3    # "_arg1":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    goto/16 :goto_2b8

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_1be
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 293
    .local v2, "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 294
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    goto/16 :goto_2b8

    .line 283
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_1d1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/volte2/IImsCallEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IImsCallEventListener;

    move-result-object v2

    .line 284
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    goto/16 :goto_2b8

    .line 274
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/IImsCallEventListener;
    :pswitch_1e4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 275
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 276
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->setTtyMode(I)V

    .line 277
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    goto/16 :goto_2b8

    .line 264
    .end local v2    # "_arg0":I
    :pswitch_1f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 266
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getSession(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 267
    .local v3, "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 269
    goto/16 :goto_2b8

    .line 254
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 256
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 257
    .restart local v3    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 259
    goto/16 :goto_2b8

    .line 242
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :pswitch_219
    sget-object v2, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/CallProfile;

    .line 244
    .local v2, "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 245
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 246
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    .line 247
    .local v4, "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 249
    goto/16 :goto_2b8

    .line 232
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :pswitch_234
    sget-object v2, Lcom/sec/ims/volte2/data/CallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/data/CallProfile;

    .line 233
    .restart local v2    # "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 234
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    .line 235
    .local v3, "_result":Lcom/sec/ims/volte2/IImsCallSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 237
    goto :goto_2b8

    .line 220
    .end local v2    # "_arg0":Lcom/sec/ims/volte2/data/CallProfile;
    .end local v3    # "_result":Lcom/sec/ims/volte2/IImsCallSession;
    :pswitch_24a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 222
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 223
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 225
    .local v4, "_result":Lcom/sec/ims/volte2/data/CallProfile;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v4, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 227
    goto :goto_2b8

    .line 211
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Lcom/sec/ims/volte2/data/CallProfile;
    :pswitch_260
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 212
    .local v2, "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 213
    invoke-virtual {p0, v2}, Lcom/sec/ims/volte2/IVolteService$Stub;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    goto :goto_2b8

    .line 198
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    :pswitch_272
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/IImsRegistrationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/IImsRegistrationListener;

    move-result-object v2

    .line 200
    .restart local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 202
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 203
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 204
    invoke-virtual {p0, v2, v3, v4}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    goto :goto_2b8

    .line 187
    .end local v2    # "_arg0":Lcom/sec/ims/IImsRegistrationListener;
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :pswitch_28c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteServiceEventListener;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Lcom/sec/ims/volte2/IVolteServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_2b8

    .line 176
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/IVolteServiceEventListener;
    :pswitch_2a2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/volte2/IVolteServiceEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/ims/volte2/IVolteServiceEventListener;

    move-result-object v3

    .line 179
    .restart local v3    # "_arg1":Lcom/sec/ims/volte2/IVolteServiceEventListener;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 180
    invoke-virtual {p0, v2, v3}, Lcom/sec/ims/volte2/IVolteService$Stub;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    nop

    .line 523
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/sec/ims/volte2/IVolteServiceEventListener;
    :goto_2b8
    return v1

    nop

    :pswitch_data_2ba
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_2c0
    .packed-switch 0x1
        :pswitch_2a2
        :pswitch_28c
        :pswitch_272
        :pswitch_260
        :pswitch_24a
        :pswitch_234
        :pswitch_219
        :pswitch_206
        :pswitch_1f3
        :pswitch_1e4
        :pswitch_1d1
        :pswitch_1be
        :pswitch_1a7
        :pswitch_190
        :pswitch_181
        :pswitch_166
        :pswitch_15a
        :pswitch_14e
        :pswitch_13b
        :pswitch_128
        :pswitch_115
        :pswitch_fe
        :pswitch_e7
        :pswitch_d0
        :pswitch_bd
        :pswitch_aa
        :pswitch_97
        :pswitch_80
        :pswitch_6d
        :pswitch_52
        :pswitch_46
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
