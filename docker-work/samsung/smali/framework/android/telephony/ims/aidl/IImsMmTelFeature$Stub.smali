.class public abstract Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;
.super Landroid/os/Binder;
.source "IImsMmTelFeature.java"

# interfaces
.implements Landroid/telephony/ims/aidl/IImsMmTelFeature;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/aidl/IImsMmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_acknowledgeSms:I = 0x12

.field static final blacklist TRANSACTION_acknowledgeSmsReport:I = 0x13

.field static final blacklist TRANSACTION_acknowledgeSmsWithPdu:I = 0x18

.field static final blacklist TRANSACTION_addCapabilityCallback:I = 0xc

.field static final blacklist TRANSACTION_changeAudioPath:I = 0x1a

.field static final blacklist TRANSACTION_changeCapabilitiesConfiguration:I = 0xe

.field static final blacklist TRANSACTION_changeOfferedRtpHeaderExtensionTypes:I = 0x4

.field static final blacklist TRANSACTION_createCallProfile:I = 0x3

.field static final blacklist TRANSACTION_createCallSession:I = 0x5

.field static final blacklist TRANSACTION_getEcbmInterface:I = 0x8

.field static final blacklist TRANSACTION_getFeatureState:I = 0x2

.field static final blacklist TRANSACTION_getMultiEndpointInterface:I = 0xa

.field static final blacklist TRANSACTION_getSmsFormat:I = 0x14

.field static final blacklist TRANSACTION_getTrn:I = 0x1e

.field static final blacklist TRANSACTION_getUtInterface:I = 0x7

.field static final blacklist TRANSACTION_initImsSmsImplAdapter:I = 0x19

.field static final blacklist TRANSACTION_isCmcEmergencyCallSupported:I = 0x20

.field static final blacklist TRANSACTION_onSmsReady:I = 0x15

.field static final blacklist TRANSACTION_queryCapabilityConfiguration:I = 0xf

.field static final blacklist TRANSACTION_queryCapabilityStatus:I = 0xb

.field static final blacklist TRANSACTION_removeCapabilityCallback:I = 0xd

.field static final blacklist TRANSACTION_sendPublishDialog:I = 0x1f

.field static final blacklist TRANSACTION_sendRpSmma:I = 0x17

.field static final blacklist TRANSACTION_sendSms:I = 0x11

.field static final blacklist TRANSACTION_setListener:I = 0x1

.field static final blacklist TRANSACTION_setRetryCount:I = 0x16

.field static final blacklist TRANSACTION_setSmsListener:I = 0x10

.field static final blacklist TRANSACTION_setUiTtyMode:I = 0x9

.field static final blacklist TRANSACTION_setVideoCrtAudio:I = 0x1d

.field static final blacklist TRANSACTION_shouldProcessCall:I = 0x6

.field static final blacklist TRANSACTION_startLocalRingBackTone:I = 0x1b

.field static final blacklist TRANSACTION_stopLocalRingBackTone:I = 0x1c


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 137
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-virtual {p0, p0, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelFeature;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 145
    if-nez p0, :cond_4

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 148
    :cond_4
    const-string v0, "android.telephony.ims.aidl.IImsMmTelFeature"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 149
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    if-eqz v1, :cond_14

    .line 150
    move-object v1, v0

    check-cast v1, Landroid/telephony/ims/aidl/IImsMmTelFeature;

    return-object v1

    .line 152
    :cond_14
    new-instance v1, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 161
    packed-switch p0, :pswitch_data_7a

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 289
    :pswitch_5
    const-string/jumbo v0, "isCmcEmergencyCallSupported"

    return-object v0

    .line 285
    :pswitch_9
    const-string/jumbo v0, "sendPublishDialog"

    return-object v0

    .line 281
    :pswitch_d
    const-string/jumbo v0, "getTrn"

    return-object v0

    .line 277
    :pswitch_11
    const-string/jumbo v0, "setVideoCrtAudio"

    return-object v0

    .line 273
    :pswitch_15
    const-string/jumbo v0, "stopLocalRingBackTone"

    return-object v0

    .line 269
    :pswitch_19
    const-string/jumbo v0, "startLocalRingBackTone"

    return-object v0

    .line 265
    :pswitch_1d
    const-string v0, "changeAudioPath"

    return-object v0

    .line 261
    :pswitch_20
    const-string/jumbo v0, "initImsSmsImplAdapter"

    return-object v0

    .line 257
    :pswitch_24
    const-string v0, "acknowledgeSmsWithPdu"

    return-object v0

    .line 253
    :pswitch_27
    const-string/jumbo v0, "sendRpSmma"

    return-object v0

    .line 249
    :pswitch_2b
    const-string/jumbo v0, "setRetryCount"

    return-object v0

    .line 245
    :pswitch_2f
    const-string/jumbo v0, "onSmsReady"

    return-object v0

    .line 241
    :pswitch_33
    const-string/jumbo v0, "getSmsFormat"

    return-object v0

    .line 237
    :pswitch_37
    const-string v0, "acknowledgeSmsReport"

    return-object v0

    .line 233
    :pswitch_3a
    const-string v0, "acknowledgeSms"

    return-object v0

    .line 229
    :pswitch_3d
    const-string/jumbo v0, "sendSms"

    return-object v0

    .line 225
    :pswitch_41
    const-string/jumbo v0, "setSmsListener"

    return-object v0

    .line 221
    :pswitch_45
    const-string/jumbo v0, "queryCapabilityConfiguration"

    return-object v0

    .line 217
    :pswitch_49
    const-string v0, "changeCapabilitiesConfiguration"

    return-object v0

    .line 213
    :pswitch_4c
    const-string/jumbo v0, "removeCapabilityCallback"

    return-object v0

    .line 209
    :pswitch_50
    const-string v0, "addCapabilityCallback"

    return-object v0

    .line 205
    :pswitch_53
    const-string/jumbo v0, "queryCapabilityStatus"

    return-object v0

    .line 201
    :pswitch_57
    const-string/jumbo v0, "getMultiEndpointInterface"

    return-object v0

    .line 197
    :pswitch_5b
    const-string/jumbo v0, "setUiTtyMode"

    return-object v0

    .line 193
    :pswitch_5f
    const-string v0, "getEcbmInterface"

    return-object v0

    .line 189
    :pswitch_62
    const-string/jumbo v0, "getUtInterface"

    return-object v0

    .line 185
    :pswitch_66
    const-string/jumbo v0, "shouldProcessCall"

    return-object v0

    .line 181
    :pswitch_6a
    const-string v0, "createCallSession"

    return-object v0

    .line 177
    :pswitch_6d
    const-string v0, "changeOfferedRtpHeaderExtensionTypes"

    return-object v0

    .line 173
    :pswitch_70
    const-string v0, "createCallProfile"

    return-object v0

    .line 169
    :pswitch_73
    const-string v0, "getFeatureState"

    return-object v0

    .line 165
    :pswitch_76
    const-string/jumbo v0, "setListener"

    return-object v0

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_76
        :pswitch_73
        :pswitch_70
        :pswitch_6d
        :pswitch_6a
        :pswitch_66
        :pswitch_62
        :pswitch_5f
        :pswitch_5b
        :pswitch_57
        :pswitch_53
        :pswitch_50
        :pswitch_4c
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3d
        :pswitch_3a
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_24
        :pswitch_20
        :pswitch_1d
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .registers 1

    .line 156
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 1195
    const/16 v0, 0x1f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 300
    invoke-static {p1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 304
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "android.telephony.ims.aidl.IImsMmTelFeature"

    .line 305
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v12, 0x1

    if-lt v8, v12, :cond_15

    const v0, 0xffffff

    if-gt v8, v0, :cond_15

    .line 306
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    :cond_15
    packed-switch v8, :pswitch_data_26a

    .line 316
    packed-switch v8, :pswitch_data_270

    .line 631
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 312
    :pswitch_20
    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    return v12

    .line 622
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 623
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->isCmcEmergencyCallSupported(I)Z

    move-result v1

    .line 625
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 626
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 627
    goto/16 :goto_268

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 613
    .restart local v0    # "_arg0":I
    sget-object v1, Lcom/android/internal/telephony/PublishDialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PublishDialog;

    .line 614
    .local v1, "_arg1":Lcom/android/internal/telephony/PublishDialog;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 615
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    goto/16 :goto_268

    .line 599
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Lcom/android/internal/telephony/PublishDialog;
    :pswitch_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 606
    goto/16 :goto_268

    .line 588
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_65
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 590
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 591
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setVideoCrtAudio(IZ)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    goto/16 :goto_268

    .line 580
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_78
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->stopLocalRingBackTone()I

    move-result v0

    .line 581
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    goto/16 :goto_268

    .line 567
    .end local v0    # "_result":I
    :pswitch_84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 569
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 571
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 572
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 573
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->startLocalRingBackTone(III)I

    move-result v3

    .line 574
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    goto/16 :goto_268

    .line 556
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_result":I
    :pswitch_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 558
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 560
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeAudioPath(II)V

    .line 561
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    goto/16 :goto_268

    .line 549
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_b2
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->initImsSmsImplAdapter()V

    .line 550
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    goto/16 :goto_268

    .line 537
    :pswitch_ba
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 539
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 542
    .local v2, "_arg2":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsWithPdu(II[B)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    goto/16 :goto_268

    .line 528
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":[B
    :pswitch_d1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 529
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 530
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendRpSmma(Ljava/lang/String;)V

    .line 531
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    goto/16 :goto_268

    .line 518
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setRetryCount(II)V

    .line 523
    goto/16 :goto_268

    .line 512
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f0
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->onSmsReady()V

    .line 513
    goto/16 :goto_268

    .line 505
    :pswitch_f5
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 508
    goto/16 :goto_268

    .line 494
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_101
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 498
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSmsReport(III)V

    .line 501
    goto/16 :goto_268

    .line 482
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 484
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 486
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 487
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->acknowledgeSms(III)V

    .line 489
    goto/16 :goto_268

    .line 464
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 466
    .local v13, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 468
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 470
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 472
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 474
    .local v17, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v18

    .line 475
    .local v18, "_arg5":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-object/from16 v4, v16

    move/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V

    .line 477
    goto/16 :goto_268

    .line 455
    .end local v13    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Z
    .end local v18    # "_arg5":[B
    :pswitch_154
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsSmsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsSmsListener;

    move-result-object v0

    .line 456
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 457
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setSmsListener(Landroid/telephony/ims/aidl/IImsSmsListener;)V

    .line 458
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 459
    goto/16 :goto_268

    .line 443
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsSmsListener;
    :pswitch_167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 445
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 447
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v2

    .line 448
    .local v2, "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 449
    invoke-virtual {v7, v0, v1, v2}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityConfiguration(IILandroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 450
    goto/16 :goto_268

    .line 433
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_17f
    sget-object v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest;

    .line 435
    .local v0, "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v1

    .line 436
    .local v1, "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 437
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeCapabilitiesConfiguration(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 438
    goto/16 :goto_268

    .line 425
    .end local v0    # "_arg0":Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .end local v1    # "_arg1":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v0

    .line 426
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 427
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->removeCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 428
    goto/16 :goto_268

    .line 417
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_1a7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsCapabilityCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsCapabilityCallback;

    move-result-object v0

    .line 418
    .restart local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 419
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->addCapabilityCallback(Landroid/telephony/ims/aidl/IImsCapabilityCallback;)V

    .line 420
    goto/16 :goto_268

    .line 409
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsCapabilityCallback;
    :pswitch_1b7
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->queryCapabilityStatus()I

    move-result v0

    .line 410
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    goto/16 :goto_268

    .line 402
    .end local v0    # "_result":I
    :pswitch_1c3
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    .line 403
    .local v0, "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 405
    goto/16 :goto_268

    .line 392
    .end local v0    # "_result":Lcom/android/ims/internal/IImsMultiEndpoint;
    :pswitch_1cf
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 394
    .local v0, "_arg0":I
    sget-object v1, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 395
    .local v1, "_arg1":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setUiTtyMode(ILandroid/os/Message;)V

    .line 397
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    goto/16 :goto_268

    .line 384
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Message;
    :pswitch_1e6
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object v0

    .line 385
    .local v0, "_result":Lcom/android/ims/internal/IImsEcbm;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 387
    goto/16 :goto_268

    .line 377
    .end local v0    # "_result":Lcom/android/ims/internal/IImsEcbm;
    :pswitch_1f2
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getUtInterface()Lcom/android/ims/internal/IImsUt;

    move-result-object v0

    .line 378
    .local v0, "_result":Lcom/android/ims/internal/IImsUt;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 380
    goto :goto_268

    .line 368
    .end local v0    # "_result":Lcom/android/ims/internal/IImsUt;
    :pswitch_1fd
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 370
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->shouldProcessCall([Ljava/lang/String;)I

    move-result v1

    .line 371
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    goto :goto_268

    .line 358
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_result":I
    :pswitch_20f
    sget-object v0, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/ImsCallProfile;

    .line 359
    .local v0, "_arg0":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 360
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object v1

    .line 361
    .local v1, "_result":Lcom/android/ims/internal/IImsCallSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 363
    goto :goto_268

    .line 349
    .end local v0    # "_arg0":Landroid/telephony/ims/ImsCallProfile;
    .end local v1    # "_result":Lcom/android/ims/internal/IImsCallSession;
    :pswitch_225
    sget-object v0, Landroid/telephony/ims/RtpHeaderExtensionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 350
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->changeOfferedRtpHeaderExtensionTypes(Ljava/util/List;)V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    goto :goto_268

    .line 337
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/RtpHeaderExtensionType;>;"
    :pswitch_235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 339
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 340
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 341
    invoke-virtual {v7, v0, v1}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    .line 342
    .local v2, "_result":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {v10, v2, v12}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 344
    goto :goto_268

    .line 329
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/telephony/ims/ImsCallProfile;
    :pswitch_24b
    invoke-virtual/range {p0 .. p0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->getFeatureState()I

    move-result v0

    .line 330
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 331
    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    goto :goto_268

    .line 321
    .end local v0    # "_result":I
    :pswitch_256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/aidl/IImsMmTelListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ims/aidl/IImsMmTelListener;

    move-result-object v0

    .line 322
    .local v0, "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 323
    invoke-virtual {v7, v0}, Landroid/telephony/ims/aidl/IImsMmTelFeature$Stub;->setListener(Landroid/telephony/ims/aidl/IImsMmTelListener;)V

    .line 324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    nop

    .line 634
    .end local v0    # "_arg0":Landroid/telephony/ims/aidl/IImsMmTelListener;
    :goto_268
    return v12

    nop

    :pswitch_data_26a
    .packed-switch 0x5f4e5446
        :pswitch_20
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_256
        :pswitch_24b
        :pswitch_235
        :pswitch_225
        :pswitch_20f
        :pswitch_1fd
        :pswitch_1f2
        :pswitch_1e6
        :pswitch_1cf
        :pswitch_1c3
        :pswitch_1b7
        :pswitch_1a7
        :pswitch_197
        :pswitch_17f
        :pswitch_167
        :pswitch_154
        :pswitch_129
        :pswitch_115
        :pswitch_101
        :pswitch_f5
        :pswitch_f0
        :pswitch_e0
        :pswitch_d1
        :pswitch_ba
        :pswitch_b2
        :pswitch_9f
        :pswitch_84
        :pswitch_78
        :pswitch_65
        :pswitch_4e
        :pswitch_37
        :pswitch_24
    .end packed-switch
.end method
