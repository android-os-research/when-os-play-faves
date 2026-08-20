.class public abstract Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.super Landroid/os/Binder;
.source "IRadioSimResponse.java"

# interfaces
.implements Landroid/hardware/radio/sim/IRadioSimResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/sim/IRadioSimResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeRequest:I = 0x1

.field static final blacklist TRANSACTION_areUiccApplicationsEnabledResponse:I = 0x2

.field static final blacklist TRANSACTION_changeIccPin2ForAppResponse:I = 0x3

.field static final blacklist TRANSACTION_changeIccPinForAppResponse:I = 0x4

.field static final blacklist TRANSACTION_enableUiccApplicationsResponse:I = 0x5

.field static final blacklist TRANSACTION_getAllowedCarriersResponse:I = 0x6

.field static final blacklist TRANSACTION_getCdmaSubscriptionResponse:I = 0x7

.field static final blacklist TRANSACTION_getCdmaSubscriptionSourceResponse:I = 0x8

.field static final blacklist TRANSACTION_getFacilityLockForAppResponse:I = 0x9

.field static final blacklist TRANSACTION_getIccCardStatusResponse:I = 0xa

.field static final blacklist TRANSACTION_getImsiForAppResponse:I = 0xb

.field static final blacklist TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final blacklist TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final blacklist TRANSACTION_getSimPhonebookCapacityResponse:I = 0xc

.field static final blacklist TRANSACTION_getSimPhonebookRecordsResponse:I = 0xd

.field static final blacklist TRANSACTION_iccCloseLogicalChannelResponse:I = 0xe

.field static final blacklist TRANSACTION_iccIoForAppResponse:I = 0xf

.field static final blacklist TRANSACTION_iccOpenLogicalChannelResponse:I = 0x10

.field static final blacklist TRANSACTION_iccTransmitApduBasicChannelResponse:I = 0x11

.field static final blacklist TRANSACTION_iccTransmitApduLogicalChannelResponse:I = 0x12

.field static final blacklist TRANSACTION_reportStkServiceIsRunningResponse:I = 0x13

.field static final blacklist TRANSACTION_requestIccSimAuthenticationResponse:I = 0x14

.field static final blacklist TRANSACTION_sendEnvelopeResponse:I = 0x15

.field static final blacklist TRANSACTION_sendEnvelopeWithStatusResponse:I = 0x16

.field static final blacklist TRANSACTION_sendTerminalResponseToSimResponse:I = 0x17

.field static final blacklist TRANSACTION_setAllowedCarriersResponse:I = 0x18

.field static final blacklist TRANSACTION_setCarrierInfoForImsiEncryptionResponse:I = 0x19

.field static final blacklist TRANSACTION_setCdmaSubscriptionSourceResponse:I = 0x1a

.field static final blacklist TRANSACTION_setFacilityLockForAppResponse:I = 0x1b

.field static final blacklist TRANSACTION_setSimCardPowerResponse:I = 0x1c

.field static final blacklist TRANSACTION_setUiccSubscriptionResponse:I = 0x1d

.field static final blacklist TRANSACTION_supplyIccPin2ForAppResponse:I = 0x1e

.field static final blacklist TRANSACTION_supplyIccPinForAppResponse:I = 0x1f

.field static final blacklist TRANSACTION_supplyIccPuk2ForAppResponse:I = 0x20

.field static final blacklist TRANSACTION_supplyIccPukForAppResponse:I = 0x21

.field static final blacklist TRANSACTION_supplySimDepersonalizationResponse:I = 0x22

.field static final blacklist TRANSACTION_updateSimPhonebookRecordsResponse:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 142
    invoke-virtual {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->markVintfStability()V

    .line 143
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/hardware/radio/sim/IRadioSimResponse;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 151
    if-nez p0, :cond_4

    .line 152
    const/4 v0, 0x0

    return-object v0

    .line 154
    :cond_4
    sget-object v0, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 155
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/hardware/radio/sim/IRadioSimResponse;

    if-eqz v1, :cond_14

    .line 156
    move-object v1, v0

    check-cast v1, Landroid/hardware/radio/sim/IRadioSimResponse;

    return-object v1

    .line 158
    :cond_14
    new-instance v1, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 162
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

    .line 166
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    sget-object v11, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 167
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 168
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    :cond_15
    sparse-switch v8, :sswitch_data_308

    .line 190
    packed-switch v8, :pswitch_data_316

    .line 536
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 174
    :sswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    return v12

    .line 179
    :sswitch_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceVersion()I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v12

    .line 185
    :sswitch_2f
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return v12

    .line 527
    :pswitch_3a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 529
    .local v0, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 530
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 531
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 532
    goto/16 :goto_307

    .line 515
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_4e
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 517
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 519
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 521
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V

    .line 522
    goto/16 :goto_307

    .line 505
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_66
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 507
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 508
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 509
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 510
    goto/16 :goto_307

    .line 495
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_7a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 497
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 499
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 500
    goto/16 :goto_307

    .line 485
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_8e
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 487
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 489
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 490
    goto/16 :goto_307

    .line 475
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_a2
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 477
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 478
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 479
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 480
    goto/16 :goto_307

    .line 467
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_b6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 468
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 469
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 470
    goto/16 :goto_307

    .line 459
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_c6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 460
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 461
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 462
    goto/16 :goto_307

    .line 449
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_d6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 451
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 453
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 454
    goto/16 :goto_307

    .line 441
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_ea
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 442
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 443
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 444
    goto/16 :goto_307

    .line 433
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_fa
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 434
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 435
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 436
    goto/16 :goto_307

    .line 425
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_10a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 426
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 428
    goto/16 :goto_307

    .line 417
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_11a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 418
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 420
    goto/16 :goto_307

    .line 407
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_12a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 409
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIoResult;

    .line 410
    .local v1, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 411
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 412
    goto/16 :goto_307

    .line 397
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_142
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 399
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 401
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 402
    goto/16 :goto_307

    .line 387
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_156
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 389
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIoResult;

    .line 390
    .local v1, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 392
    goto/16 :goto_307

    .line 379
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_16e
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 380
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 381
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 382
    goto/16 :goto_307

    .line 369
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_17e
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 371
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIoResult;

    .line 372
    .restart local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 373
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 374
    goto/16 :goto_307

    .line 359
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_196
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 361
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIoResult;

    .line 362
    .restart local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 363
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 364
    goto/16 :goto_307

    .line 347
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_1ae
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 349
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 351
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 352
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 353
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V

    .line 354
    goto/16 :goto_307

    .line 337
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_1c6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 339
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/IccIoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/IccIoResult;

    .line 340
    .local v1, "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    .line 342
    goto/16 :goto_307

    .line 329
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/IccIoResult;
    :pswitch_1de
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 330
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 331
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 332
    goto/16 :goto_307

    .line 321
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1ee
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 322
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 324
    goto/16 :goto_307

    .line 311
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_1fe
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 313
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/PhonebookCapacity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/PhonebookCapacity;

    .line 314
    .local v1, "_arg1":Landroid/hardware/radio/sim/PhonebookCapacity;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 315
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V

    .line 316
    goto/16 :goto_307

    .line 301
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/PhonebookCapacity;
    :pswitch_216
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 303
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 305
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    .line 306
    goto/16 :goto_307

    .line 291
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_22a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 293
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/CardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/CardStatus;

    .line 294
    .local v1, "_arg1":Landroid/hardware/radio/sim/CardStatus;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 295
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V

    .line 296
    goto/16 :goto_307

    .line 281
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/CardStatus;
    :pswitch_242
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 283
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 286
    goto/16 :goto_307

    .line 271
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_256
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 273
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 274
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 276
    goto/16 :goto_307

    .line 253
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_26a
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/hardware/radio/RadioResponseInfo;

    .line 255
    .local v13, "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 257
    .local v14, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 259
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 263
    .local v17, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 264
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 265
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    goto :goto_307

    .line 241
    .end local v13    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v14    # "_arg1":Ljava/lang/String;
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v18    # "_arg5":Ljava/lang/String;
    :pswitch_299
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 243
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    sget-object v1, Landroid/hardware/radio/sim/CarrierRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/sim/CarrierRestrictions;

    .line 245
    .local v1, "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 246
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 247
    invoke-virtual {v7, v0, v1, v2}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V

    .line 248
    goto :goto_307

    .line 233
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Landroid/hardware/radio/sim/CarrierRestrictions;
    .end local v2    # "_arg2":I
    :pswitch_2b4
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 234
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 235
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V

    .line 236
    goto :goto_307

    .line 223
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    :pswitch_2c3
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 225
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 226
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 228
    goto :goto_307

    .line 213
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_2d6
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 215
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 216
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 217
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V

    .line 218
    goto :goto_307

    .line 203
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":I
    :pswitch_2e9
    sget-object v0, Landroid/hardware/radio/RadioResponseInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/radio/RadioResponseInfo;

    .line 205
    .restart local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 206
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 207
    invoke-virtual {v7, v0, v1}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V

    .line 208
    goto :goto_307

    .line 195
    .end local v0    # "_arg0":Landroid/hardware/radio/RadioResponseInfo;
    .end local v1    # "_arg1":Z
    :pswitch_2fc
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 197
    invoke-virtual {v7, v0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;->acknowledgeRequest(I)V

    .line 198
    nop

    .line 539
    .end local v0    # "_arg0":I
    :goto_307
    return v12

    :sswitch_data_308
    .sparse-switch
        0xfffffe -> :sswitch_2f
        0xffffff -> :sswitch_24
        0x5f4e5446 -> :sswitch_20
    .end sparse-switch

    :pswitch_data_316
    .packed-switch 0x1
        :pswitch_2fc
        :pswitch_2e9
        :pswitch_2d6
        :pswitch_2c3
        :pswitch_2b4
        :pswitch_299
        :pswitch_26a
        :pswitch_256
        :pswitch_242
        :pswitch_22a
        :pswitch_216
        :pswitch_1fe
        :pswitch_1ee
        :pswitch_1de
        :pswitch_1c6
        :pswitch_1ae
        :pswitch_196
        :pswitch_17e
        :pswitch_16e
        :pswitch_156
        :pswitch_142
        :pswitch_12a
        :pswitch_11a
        :pswitch_10a
        :pswitch_fa
        :pswitch_ea
        :pswitch_d6
        :pswitch_c6
        :pswitch_b6
        :pswitch_a2
        :pswitch_8e
        :pswitch_7a
        :pswitch_66
        :pswitch_4e
        :pswitch_3a
    .end packed-switch
.end method
