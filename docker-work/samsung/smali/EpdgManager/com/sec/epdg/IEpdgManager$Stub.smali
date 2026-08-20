.class public abstract Lcom/sec/epdg/IEpdgManager$Stub;
.super Landroid/os/Binder;
.source "IEpdgManager.java"

# interfaces
.implements Lcom/sec/epdg/IEpdgManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IEpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/epdg/IEpdgManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addListener:I = 0x17

.field static final TRANSACTION_addListenerBySim:I = 0x18

.field static final TRANSACTION_checkEpdgExtraFeature:I = 0x15

.field static final TRANSACTION_connect:I = 0x5

.field static final TRANSACTION_connectBySim:I = 0x6

.field static final TRANSACTION_disconnect:I = 0x7

.field static final TRANSACTION_disconnectBySim:I = 0x8

.field static final TRANSACTION_enableTestRilAdapter:I = 0x9

.field static final TRANSACTION_enableTestRilAdapterBySim:I = 0xa

.field static final TRANSACTION_getCurrentImsPdnStatus:I = 0xf

.field static final TRANSACTION_getCurrentImsPdnStatusBySim:I = 0x10

.field static final TRANSACTION_isDuringHandoverForIMS:I = 0xd

.field static final TRANSACTION_isDuringHandoverForIMSBySim:I = 0xe

.field static final TRANSACTION_isPossibleW2LHOAfterCallEnd:I = 0x11

.field static final TRANSACTION_isPossibleW2LHOAfterCallEndBySim:I = 0x12

.field static final TRANSACTION_removeListener:I = 0x19

.field static final TRANSACTION_removeListenerBySim:I = 0x1a

.field static final TRANSACTION_sendEventToStateMachine:I = 0xb

.field static final TRANSACTION_sendEventToStateMachineBySim:I = 0xc

.field static final TRANSACTION_setEmergencyQualifiedNetwork:I = 0x1b

.field static final TRANSACTION_setEpdgNotAvailableDuringEmergencyCall:I = 0x16

.field static final TRANSACTION_setReleaseCallBeforeHO:I = 0x13

.field static final TRANSACTION_startHandOverLteToWifi:I = 0x3

.field static final TRANSACTION_startHandOverLteToWifiBySim:I = 0x4

.field static final TRANSACTION_startHandOverWifiToLte:I = 0x1

.field static final TRANSACTION_startHandOverWifiToLteBySim:I = 0x2

.field static final TRANSACTION_triggerHOAfterReleaseCall:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 129
    const-string v0, "com.sec.epdg.IEpdgManager"

    invoke-virtual {p0, p0, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 137
    if-nez p0, :cond_4

    .line 138
    const/4 v0, 0x0

    return-object v0

    .line 140
    :cond_4
    const-string v0, "com.sec.epdg.IEpdgManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 141
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/sec/epdg/IEpdgManager;

    if-eqz v1, :cond_14

    .line 142
    move-object v1, v0

    check-cast v1, Lcom/sec/epdg/IEpdgManager;

    return-object v1

    .line 144
    :cond_14
    new-instance v1, Lcom/sec/epdg/IEpdgManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/epdg/IEpdgManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 148
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "com.sec.epdg.IEpdgManager"

    .line 153
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_15

    const v0, 0xffffff

    if-gt v7, v0, :cond_15

    .line 154
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_15
    packed-switch v7, :pswitch_data_2a8

    .line 164
    packed-switch v7, :pswitch_data_2ae

    .line 486
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 160
    :pswitch_20
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v11

    .line 476
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 478
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 479
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 480
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->setEmergencyQualifiedNetwork(II)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    goto/16 :goto_2a7

    .line 465
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v0

    .line 467
    .local v0, "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 468
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->removeListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    .line 470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    goto/16 :goto_2a7

    .line 456
    .end local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    .end local v1    # "_arg1":I
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v0

    .line 457
    .restart local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 458
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->removeListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 459
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    goto/16 :goto_2a7

    .line 445
    .end local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    :pswitch_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v0

    .line 447
    .restart local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 448
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->addListenerBySim(Lcom/sec/epdg/IEpdgHandoverListener;I)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    goto/16 :goto_2a7

    .line 436
    .end local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    .end local v1    # "_arg1":I
    :pswitch_78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/epdg/IEpdgHandoverListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/epdg/IEpdgHandoverListener;

    move-result-object v0

    .line 437
    .restart local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 438
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->addListener(Lcom/sec/epdg/IEpdgHandoverListener;)V

    .line 439
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 440
    goto/16 :goto_2a7

    .line 426
    .end local v0    # "_arg0":Lcom/sec/epdg/IEpdgHandoverListener;
    :pswitch_8b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 427
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 428
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->setEpdgNotAvailableDuringEmergencyCall(I)Z

    move-result v1

    .line 429
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 430
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 431
    goto/16 :goto_2a7

    .line 414
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_9e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 416
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 417
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 418
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->checkEpdgExtraFeature(ILjava/lang/String;)Z

    move-result v2

    .line 419
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 421
    goto/16 :goto_2a7

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_b5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 405
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 406
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->triggerHOAfterReleaseCall(I)Z

    move-result v1

    .line 407
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 408
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 409
    goto/16 :goto_2a7

    .line 392
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_c8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 395
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->setReleaseCallBeforeHO(IZ)Z

    move-result v2

    .line 397
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 399
    goto/16 :goto_2a7

    .line 382
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_df
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 383
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->isPossibleW2LHOAfterCallEndBySim(I)Z

    move-result v1

    .line 385
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 387
    goto/16 :goto_2a7

    .line 374
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_f2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IEpdgManager$Stub;->isPossibleW2LHOAfterCallEnd()Z

    move-result v0

    .line 375
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 377
    goto/16 :goto_2a7

    .line 365
    .end local v0    # "_result":Z
    :pswitch_fe
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 366
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->getCurrentImsPdnStatusBySim(I)I

    move-result v1

    .line 368
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    goto/16 :goto_2a7

    .line 357
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_111
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IEpdgManager$Stub;->getCurrentImsPdnStatus()I

    move-result v0

    .line 358
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    goto/16 :goto_2a7

    .line 348
    .end local v0    # "_result":I
    :pswitch_11d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 349
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 350
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->isDuringHandoverForIMSBySim(I)Z

    move-result v1

    .line 351
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 353
    goto/16 :goto_2a7

    .line 340
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_130
    invoke-virtual/range {p0 .. p0}, Lcom/sec/epdg/IEpdgManager$Stub;->isDuringHandoverForIMS()Z

    move-result v0

    .line 341
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 343
    goto/16 :goto_2a7

    .line 325
    .end local v0    # "_result":Z
    :pswitch_13c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 329
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 331
    .local v2, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 332
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 333
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->sendEventToStateMachineBySim(IILandroid/os/IBinder;I)I

    move-result v4

    .line 334
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    goto/16 :goto_2a7

    .line 311
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":I
    :pswitch_15b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 313
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 315
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 316
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->sendEventToStateMachine(IILandroid/os/IBinder;)I

    move-result v3

    .line 318
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    goto/16 :goto_2a7

    .line 299
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_result":I
    :pswitch_176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 301
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 302
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 303
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->enableTestRilAdapterBySim(ZI)I

    move-result v2

    .line 304
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    goto/16 :goto_2a7

    .line 289
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :pswitch_18d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 290
    .restart local v0    # "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 291
    invoke-virtual {v6, v0}, Lcom/sec/epdg/IEpdgManager$Stub;->enableTestRilAdapter(Z)I

    move-result v1

    .line 292
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    goto/16 :goto_2a7

    .line 275
    .end local v0    # "_arg0":Z
    .end local v1    # "_result":I
    :pswitch_1a0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 279
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 280
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 281
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->disconnectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v3

    .line 282
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 283
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 284
    goto/16 :goto_2a7

    .line 263
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1bb
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 265
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 266
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 267
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->disconnect(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    .line 268
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    goto/16 :goto_2a7

    .line 249
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_1d2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 253
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 254
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {v6, v0, v1, v2}, Lcom/sec/epdg/IEpdgManager$Stub;->connectBySim(Ljava/lang/String;Landroid/os/IBinder;I)I

    move-result v3

    .line 256
    .restart local v3    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    goto/16 :goto_2a7

    .line 237
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_1ed
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 240
    .restart local v1    # "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 241
    invoke-virtual {v6, v0, v1}, Lcom/sec/epdg/IEpdgManager$Stub;->connect(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v2

    .line 242
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 244
    goto/16 :goto_2a7

    .line 219
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_result":I
    :pswitch_204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 221
    .local v12, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 223
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 225
    .local v14, "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    .line 227
    .local v15, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 228
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 229
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverLteToWifiBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v0

    .line 230
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    goto/16 :goto_2a7

    .line 203
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/IBinder;
    .end local v15    # "_arg3":Landroid/app/PendingIntent;
    .end local v16    # "_arg4":I
    :pswitch_234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 205
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 209
    .local v2, "_arg2":Landroid/os/IBinder;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 210
    .local v3, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 211
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverLteToWifi(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v4

    .line 212
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    goto :goto_2a7

    .line 185
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":I
    :pswitch_256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 187
    .restart local v12    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 189
    .restart local v13    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    .line 191
    .restart local v14    # "_arg2":Landroid/os/IBinder;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/app/PendingIntent;

    .line 193
    .restart local v15    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 194
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 195
    move-object/from16 v0, p0

    move v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverWifiToLteBySim(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;I)I

    move-result v0

    .line 196
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    goto :goto_2a7

    .line 169
    .end local v0    # "_result":I
    .end local v12    # "_arg0":I
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":Landroid/os/IBinder;
    .end local v15    # "_arg3":Landroid/app/PendingIntent;
    .end local v16    # "_arg4":I
    :pswitch_285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 173
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 175
    .restart local v2    # "_arg2":Landroid/os/IBinder;
    sget-object v3, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 176
    .restart local v3    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 177
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/sec/epdg/IEpdgManager$Stub;->startHandOverWifiToLte(ILjava/lang/String;Landroid/os/IBinder;Landroid/app/PendingIntent;)I

    move-result v4

    .line 178
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    nop

    .line 489
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/IBinder;
    .end local v3    # "_arg3":Landroid/app/PendingIntent;
    .end local v4    # "_result":I
    :goto_2a7
    return v11

    :pswitch_data_2a8
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_2ae
    .packed-switch 0x1
        :pswitch_285
        :pswitch_256
        :pswitch_234
        :pswitch_204
        :pswitch_1ed
        :pswitch_1d2
        :pswitch_1bb
        :pswitch_1a0
        :pswitch_18d
        :pswitch_176
        :pswitch_15b
        :pswitch_13c
        :pswitch_130
        :pswitch_11d
        :pswitch_111
        :pswitch_fe
        :pswitch_f2
        :pswitch_df
        :pswitch_c8
        :pswitch_b5
        :pswitch_9e
        :pswitch_8b
        :pswitch_78
        :pswitch_61
        :pswitch_4e
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
