.class public abstract Lcom/android/internal/telephony/ISemTelephony$Stub;
.super Landroid/os/Binder;
.source "ISemTelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ISemTelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISemTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_NSRI_requestProc:I = 0x2a

.field static final blacklist TRANSACTION_changeIccSimPersoPassword:I = 0x1a

.field static final blacklist TRANSACTION_changeIccSimPersoPasswordForSubId:I = 0x1b

.field static final blacklist TRANSACTION_checkCallControl:I = 0x21

.field static final blacklist TRANSACTION_checkNSRIUSIMstate_int:I = 0x29

.field static final blacklist TRANSACTION_dialForSubscriber:I = 0x3

.field static final blacklist TRANSACTION_getActivationDay:I = 0xc

.field static final blacklist TRANSACTION_getAllCellInfoBySubId:I = 0x2

.field static final blacklist TRANSACTION_getAtr:I = 0x20

.field static final blacklist TRANSACTION_getCdmaMinForOtasp:I = 0x1f

.field static final blacklist TRANSACTION_getCellLocationBySubId:I = 0x1

.field static final blacklist TRANSACTION_getCurrentUATI:I = 0x2d

.field static final blacklist TRANSACTION_getDataRoamingEnabled:I = 0x2b

.field static final blacklist TRANSACTION_getDisable2g:I = 0x8

.field static final blacklist TRANSACTION_getEuimid:I = 0x1e

.field static final blacklist TRANSACTION_getFDNavailable:I = 0x22

.field static final blacklist TRANSACTION_getFeliCaUimLockStatus:I = 0x24

.field static final blacklist TRANSACTION_getIccUsimPersoEnabled:I = 0x18

.field static final blacklist TRANSACTION_getIccUsimPersoEnabledForSubId:I = 0x19

.field static final blacklist TRANSACTION_getIpAddressFromLinkProp:I = 0x2f

.field static final blacklist TRANSACTION_getMobileQualityInformation:I = 0x2e

.field static final blacklist TRANSACTION_getNetworkStatusDisplayOption:I = 0xd

.field static final blacklist TRANSACTION_getNrMode:I = 0x31

.field static final blacklist TRANSACTION_getSdnAvailable:I = 0x10

.field static final blacklist TRANSACTION_getServiceStateForPhoneId:I = 0xf

.field static final blacklist TRANSACTION_getSimPinRetryForSubscriber:I = 0x16

.field static final blacklist TRANSACTION_getSimPukRetryForSubscriber:I = 0x17

.field static final blacklist TRANSACTION_getSupportedNrca:I = 0x37

.field static final blacklist TRANSACTION_getUaUap:I = 0x25

.field static final blacklist TRANSACTION_getVendorConfigState:I = 0x34

.field static final blacklist TRANSACTION_getVoNRMode:I = 0x33

.field static final blacklist TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0x23

.field static final blacklist TRANSACTION_isEmergencyNumberBySubId:I = 0x4

.field static final blacklist TRANSACTION_isMmiForSubscriber:I = 0xe

.field static final blacklist TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x15

.field static final blacklist TRANSACTION_isSupportLteCapaOptionC:I = 0x38

.field static final blacklist TRANSACTION_isVideoCall:I = 0x7

.field static final blacklist TRANSACTION_reloadTestEmergencyNumber:I = 0x5

.field static final blacklist TRANSACTION_requestModemActivityInfo:I = 0x36

.field static final blacklist TRANSACTION_sendRequestToRIL:I = 0x11

.field static final blacklist TRANSACTION_sendVolteState:I = 0x35

.field static final blacklist TRANSACTION_setAllowDataDuringCall:I = 0x6

.field static final blacklist TRANSACTION_setDisable2g:I = 0x9

.field static final blacklist TRANSACTION_setEPSLOCI:I = 0x14

.field static final blacklist TRANSACTION_setGbaBootstrappingParams:I = 0x2c

.field static final blacklist TRANSACTION_setIccSimPersoEnabled:I = 0x1c

.field static final blacklist TRANSACTION_setIccSimPersoEnabledForSubId:I = 0x1d

.field static final blacklist TRANSACTION_setNrMode:I = 0x30

.field static final blacklist TRANSACTION_setTransmitPowerExt:I = 0xb

.field static final blacklist TRANSACTION_setTransmitPowerWithFlag:I = 0xa

.field static final blacklist TRANSACTION_setVoNRMode:I = 0x32

.field static final blacklist TRANSACTION_sms_NSRI_decryptsms:I = 0x27

.field static final blacklist TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0x28

.field static final blacklist TRANSACTION_sms_NSRI_encryptsms:I = 0x26

.field static final blacklist TRANSACTION_supplyPerso:I = 0x12

.field static final blacklist TRANSACTION_supplyPersoForSubId:I = 0x13


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 336
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 337
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 338
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISemTelephony;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 345
    if-nez p0, :cond_4

    .line 346
    const/4 v0, 0x0

    return-object v0

    .line 348
    :cond_4
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 349
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/internal/telephony/ISemTelephony;

    if-eqz v1, :cond_14

    .line 350
    move-object v1, v0

    check-cast v1, Lcom/android/internal/telephony/ISemTelephony;

    return-object v1

    .line 352
    :cond_14
    new-instance v1, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ISemTelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 361
    packed-switch p0, :pswitch_data_d4

    .line 589
    const/4 v0, 0x0

    return-object v0

    .line 585
    :pswitch_5
    const-string/jumbo v0, "isSupportLteCapaOptionC"

    return-object v0

    .line 581
    :pswitch_9
    const-string/jumbo v0, "getSupportedNrca"

    return-object v0

    .line 577
    :pswitch_d
    const-string/jumbo v0, "requestModemActivityInfo"

    return-object v0

    .line 573
    :pswitch_11
    const-string/jumbo v0, "sendVolteState"

    return-object v0

    .line 569
    :pswitch_15
    const-string/jumbo v0, "getVendorConfigState"

    return-object v0

    .line 565
    :pswitch_19
    const-string/jumbo v0, "getVoNRMode"

    return-object v0

    .line 561
    :pswitch_1d
    const-string/jumbo v0, "setVoNRMode"

    return-object v0

    .line 557
    :pswitch_21
    const-string/jumbo v0, "getNrMode"

    return-object v0

    .line 553
    :pswitch_25
    const-string/jumbo v0, "setNrMode"

    return-object v0

    .line 549
    :pswitch_29
    const-string/jumbo v0, "getIpAddressFromLinkProp"

    return-object v0

    .line 545
    :pswitch_2d
    const-string/jumbo v0, "getMobileQualityInformation"

    return-object v0

    .line 541
    :pswitch_31
    const-string v0, "getCurrentUATI"

    return-object v0

    .line 537
    :pswitch_34
    const-string/jumbo v0, "setGbaBootstrappingParams"

    return-object v0

    .line 533
    :pswitch_38
    const-string v0, "getDataRoamingEnabled"

    return-object v0

    .line 529
    :pswitch_3b
    const-string v0, "NSRI_requestProc"

    return-object v0

    .line 525
    :pswitch_3e
    const-string v0, "checkNSRIUSIMstate_int"

    return-object v0

    .line 521
    :pswitch_41
    const-string/jumbo v0, "sms_NSRI_decryptsmsintxside"

    return-object v0

    .line 517
    :pswitch_45
    const-string/jumbo v0, "sms_NSRI_decryptsms"

    return-object v0

    .line 513
    :pswitch_49
    const-string/jumbo v0, "sms_NSRI_encryptsms"

    return-object v0

    .line 509
    :pswitch_4d
    const-string/jumbo v0, "getUaUap"

    return-object v0

    .line 505
    :pswitch_51
    const-string v0, "getFeliCaUimLockStatus"

    return-object v0

    .line 501
    :pswitch_54
    const-string/jumbo v0, "invokeOemRilRequestRawForSubscriber"

    return-object v0

    .line 497
    :pswitch_58
    const-string v0, "getFDNavailable"

    return-object v0

    .line 493
    :pswitch_5b
    const-string v0, "checkCallControl"

    return-object v0

    .line 489
    :pswitch_5e
    const-string v0, "getAtr"

    return-object v0

    .line 485
    :pswitch_61
    const-string v0, "getCdmaMinForOtasp"

    return-object v0

    .line 481
    :pswitch_64
    const-string v0, "getEuimid"

    return-object v0

    .line 477
    :pswitch_67
    const-string/jumbo v0, "setIccSimPersoEnabledForSubId"

    return-object v0

    .line 473
    :pswitch_6b
    const-string/jumbo v0, "setIccSimPersoEnabled"

    return-object v0

    .line 469
    :pswitch_6f
    const-string v0, "changeIccSimPersoPasswordForSubId"

    return-object v0

    .line 465
    :pswitch_72
    const-string v0, "changeIccSimPersoPassword"

    return-object v0

    .line 461
    :pswitch_75
    const-string/jumbo v0, "getIccUsimPersoEnabledForSubId"

    return-object v0

    .line 457
    :pswitch_79
    const-string/jumbo v0, "getIccUsimPersoEnabled"

    return-object v0

    .line 453
    :pswitch_7d
    const-string/jumbo v0, "getSimPukRetryForSubscriber"

    return-object v0

    .line 449
    :pswitch_81
    const-string/jumbo v0, "getSimPinRetryForSubscriber"

    return-object v0

    .line 445
    :pswitch_85
    const-string/jumbo v0, "isSimFDNEnabledForSubscriber"

    return-object v0

    .line 441
    :pswitch_89
    const-string/jumbo v0, "setEPSLOCI"

    return-object v0

    .line 437
    :pswitch_8d
    const-string/jumbo v0, "supplyPersoForSubId"

    return-object v0

    .line 433
    :pswitch_91
    const-string/jumbo v0, "supplyPerso"

    return-object v0

    .line 429
    :pswitch_95
    const-string/jumbo v0, "sendRequestToRIL"

    return-object v0

    .line 425
    :pswitch_99
    const-string/jumbo v0, "getSdnAvailable"

    return-object v0

    .line 421
    :pswitch_9d
    const-string/jumbo v0, "getServiceStateForPhoneId"

    return-object v0

    .line 417
    :pswitch_a1
    const-string/jumbo v0, "isMmiForSubscriber"

    return-object v0

    .line 413
    :pswitch_a5
    const-string/jumbo v0, "getNetworkStatusDisplayOption"

    return-object v0

    .line 409
    :pswitch_a9
    const-string v0, "getActivationDay"

    return-object v0

    .line 405
    :pswitch_ac
    const-string/jumbo v0, "setTransmitPowerExt"

    return-object v0

    .line 401
    :pswitch_b0
    const-string/jumbo v0, "setTransmitPowerWithFlag"

    return-object v0

    .line 397
    :pswitch_b4
    const-string/jumbo v0, "setDisable2g"

    return-object v0

    .line 393
    :pswitch_b8
    const-string v0, "getDisable2g"

    return-object v0

    .line 389
    :pswitch_bb
    const-string/jumbo v0, "isVideoCall"

    return-object v0

    .line 385
    :pswitch_bf
    const-string/jumbo v0, "setAllowDataDuringCall"

    return-object v0

    .line 381
    :pswitch_c3
    const-string/jumbo v0, "reloadTestEmergencyNumber"

    return-object v0

    .line 377
    :pswitch_c7
    const-string/jumbo v0, "isEmergencyNumberBySubId"

    return-object v0

    .line 373
    :pswitch_cb
    const-string v0, "dialForSubscriber"

    return-object v0

    .line 369
    :pswitch_ce
    const-string v0, "getAllCellInfoBySubId"

    return-object v0

    .line 365
    :pswitch_d1
    const-string v0, "getCellLocationBySubId"

    return-object v0

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_ce
        :pswitch_cb
        :pswitch_c7
        :pswitch_c3
        :pswitch_bf
        :pswitch_bb
        :pswitch_b8
        :pswitch_b4
        :pswitch_b0
        :pswitch_ac
        :pswitch_a9
        :pswitch_a5
        :pswitch_a1
        :pswitch_9d
        :pswitch_99
        :pswitch_95
        :pswitch_91
        :pswitch_8d
        :pswitch_89
        :pswitch_85
        :pswitch_81
        :pswitch_7d
        :pswitch_79
        :pswitch_75
        :pswitch_72
        :pswitch_6f
        :pswitch_6b
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5e
        :pswitch_5b
        :pswitch_58
        :pswitch_54
        :pswitch_51
        :pswitch_4d
        :pswitch_49
        :pswitch_45
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_38
        :pswitch_34
        :pswitch_31
        :pswitch_2d
        :pswitch_29
        :pswitch_25
        :pswitch_21
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

    .line 356
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .registers 2

    .line 2435
    const/16 v0, 0x37

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .registers 3
    .param p1, "transactionCode"    # I

    .line 596
    invoke-static {p1}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 600
    const-string v0, "com.android.internal.telephony.ISemTelephony"

    .line 601
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_d

    const v2, 0xffffff

    if-gt p1, v2, :cond_d

    .line 602
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    :cond_d
    packed-switch p1, :pswitch_data_4a2

    .line 612
    packed-switch p1, :pswitch_data_4a8

    .line 1236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 608
    :pswitch_18
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 609
    return v1

    .line 1227
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1228
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1229
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSupportLteCapaOptionC(I)Z

    move-result v3

    .line 1230
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1231
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1232
    goto/16 :goto_4a0

    .line 1217
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1218
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1219
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSupportedNrca(I)Z

    move-result v3

    .line 1220
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1221
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1222
    goto/16 :goto_4a0

    .line 1207
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_42
    sget-object v2, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    .line 1209
    .local v2, "_arg0":Landroid/os/ResultReceiver;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1210
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1211
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;Ljava/lang/String;)V

    .line 1212
    goto/16 :goto_4a0

    .line 1196
    .end local v2    # "_arg0":Landroid/os/ResultReceiver;
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_56
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1198
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1199
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1200
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendVolteState(IZ)V

    .line 1201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1202
    goto/16 :goto_4a0

    .line 1186
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    :pswitch_69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1187
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1188
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVendorConfigState(I)Landroid/telephony/VendorConfigurationState;

    move-result-object v3

    .line 1189
    .local v3, "_result":Landroid/telephony/VendorConfigurationState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    invoke-virtual {p3, v3, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1191
    goto/16 :goto_4a0

    .line 1176
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Landroid/telephony/VendorConfigurationState;
    :pswitch_7c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1177
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1178
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getVoNRMode(I)I

    move-result v3

    .line 1179
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1181
    goto/16 :goto_4a0

    .line 1164
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_8f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1166
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1167
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1168
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setVoNRMode(II)Z

    move-result v4

    .line 1169
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1170
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1171
    goto/16 :goto_4a0

    .line 1154
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_result":Z
    :pswitch_a6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1155
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1156
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNrMode(I)I

    move-result v3

    .line 1157
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1158
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1159
    goto/16 :goto_4a0

    .line 1138
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_b9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1140
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1142
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 1144
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1145
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1146
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setNrMode(IIZLjava/lang/String;)Z

    move-result v6

    .line 1147
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1148
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1149
    goto/16 :goto_4a0

    .line 1128
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Z
    .end local v5    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Z
    :pswitch_d8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1129
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1130
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1132
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1133
    goto/16 :goto_4a0

    .line 1114
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_eb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1116
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1118
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1119
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getMobileQualityInformation(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1121
    .local v5, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1123
    goto/16 :goto_4a0

    .line 1106
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/lang/String;
    :pswitch_106
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCurrentUATI()[B

    move-result-object v2

    .line 1107
    .local v2, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1109
    goto/16 :goto_4a0

    .line 1092
    .end local v2    # "_result":[B
    :pswitch_112
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1094
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1096
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 1098
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 1099
    .local v5, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1100
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setGbaBootstrappingParams(I[BLjava/lang/String;Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1102
    goto/16 :goto_4a0

    .line 1084
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Ljava/lang/String;
    :pswitch_12d
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDataRoamingEnabled()Z

    move-result v2

    .line 1085
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1086
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1087
    goto/16 :goto_4a0

    .line 1073
    .end local v2    # "_result":Z
    :pswitch_139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1075
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1076
    .restart local v3    # "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v4

    .line 1078
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1080
    goto/16 :goto_4a0

    .line 1065
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_150
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v2

    .line 1066
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1068
    goto/16 :goto_4a0

    .line 1052
    .end local v2    # "_result":I
    :pswitch_15c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1054
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1056
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1057
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1058
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v5

    .line 1059
    .local v5, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1061
    goto/16 :goto_4a0

    .line 1040
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1042
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 1043
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1044
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v4

    .line 1045
    .local v4, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1046
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1047
    goto/16 :goto_4a0

    .line 1026
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_result":[B
    :pswitch_18e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1028
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1030
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    .line 1031
    .local v4, "_arg2":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1032
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v5

    .line 1033
    .restart local v5    # "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1035
    goto/16 :goto_4a0

    .line 1016
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[B
    .end local v5    # "_result":[B
    :pswitch_1a9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1017
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getUaUap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1019
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1021
    goto/16 :goto_4a0

    .line 1006
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_1bc
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1007
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1008
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getFeliCaUimLockStatus(I)I

    move-result v3

    .line 1009
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    goto/16 :goto_4a0

    .line 986
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_1cf
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 988
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 990
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 991
    .local v4, "_arg2_length":I
    if-gez v4, :cond_1df

    .line 992
    const/4 v5, 0x0

    .local v5, "_arg2":[B
    goto :goto_1e1

    .line 994
    .end local v5    # "_arg2":[B
    :cond_1df
    new-array v5, v4, [B

    .line 996
    .restart local v5    # "_arg2":[B
    :goto_1e1
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 997
    invoke-virtual {p0, v2, v3, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v6

    .line 998
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 999
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1000
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1001
    goto/16 :goto_4a0

    .line 976
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2_length":I
    .end local v5    # "_arg2":[B
    .end local v6    # "_result":I
    :pswitch_1f3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 977
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getFDNavailable(I)Z

    move-result v3

    .line 979
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 981
    goto/16 :goto_4a0

    .line 964
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_206
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 966
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->checkCallControl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 969
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 971
    goto/16 :goto_4a0

    .line 954
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_21d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 955
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 956
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAtr(I)[B

    move-result-object v3

    .line 957
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 959
    goto/16 :goto_4a0

    .line 944
    .end local v2    # "_arg0":I
    .end local v3    # "_result":[B
    :pswitch_230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 945
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 946
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCdmaMinForOtasp(I)Ljava/lang/String;

    move-result-object v3

    .line 947
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 948
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    goto/16 :goto_4a0

    .line 936
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_243
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 939
    goto/16 :goto_4a0

    .line 923
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_24f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 925
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 927
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 928
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 929
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabledForSubId(IZLjava/lang/String;)Z

    move-result v5

    .line 930
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 932
    goto/16 :goto_4a0

    .line 911
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_26a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 913
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 915
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setIccSimPersoEnabled(ZLjava/lang/String;)Z

    move-result v4

    .line 916
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 918
    goto/16 :goto_4a0

    .line 897
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 899
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 901
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 902
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPasswordForSubId(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 904
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 905
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 906
    goto/16 :goto_4a0

    .line 885
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Z
    :pswitch_29c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 887
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 888
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->changeIccSimPersoPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 890
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 892
    goto/16 :goto_4a0

    .line 875
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_2b3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 876
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 877
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabledForSubId(I)Z

    move-result v3

    .line 878
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 879
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 880
    goto/16 :goto_4a0

    .line 867
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_2c6
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getIccUsimPersoEnabled()Z

    move-result v2

    .line 868
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 870
    goto/16 :goto_4a0

    .line 858
    .end local v2    # "_result":Z
    :pswitch_2d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 859
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 860
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPukRetryForSubscriber(I)I

    move-result v3

    .line 861
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    goto/16 :goto_4a0

    .line 848
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2e5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 849
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 850
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSimPinRetryForSubscriber(I)I

    move-result v3

    .line 851
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    goto/16 :goto_4a0

    .line 838
    .end local v2    # "_arg0":I
    .end local v3    # "_result":I
    :pswitch_2f8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 839
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 840
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isSimFDNEnabledForSubscriber(I)Z

    move-result v3

    .line 841
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 843
    goto/16 :goto_4a0

    .line 829
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_30b
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 830
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 831
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setEPSLOCI([B)V

    .line 832
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    goto/16 :goto_4a0

    .line 817
    .end local v2    # "_arg0":[B
    :pswitch_31a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 819
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 820
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 821
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPersoForSubId(ILjava/lang/String;)Z

    move-result v4

    .line 822
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 823
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 824
    goto/16 :goto_4a0

    .line 807
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_331
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v3

    .line 810
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 812
    goto/16 :goto_4a0

    .line 790
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_344
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 792
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 794
    .local v3, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 796
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 797
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/internal/telephony/ISemTelephony$Stub;->sendRequestToRIL([B[BII)I

    move-result v6

    .line 799
    .restart local v6    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 801
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 802
    goto/16 :goto_4a0

    .line 782
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":[B
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    .end local v6    # "_result":I
    :pswitch_366
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getSdnAvailable()Z

    move-result v2

    .line 783
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 784
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 785
    goto/16 :goto_4a0

    .line 769
    .end local v2    # "_result":Z
    :pswitch_372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 771
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 774
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 775
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getServiceStateForPhoneId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v5

    .line 776
    .local v5, "_result":Landroid/telephony/ServiceState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 777
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 778
    goto/16 :goto_4a0

    .line 757
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telephony/ServiceState;
    :pswitch_38d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 759
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 760
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 761
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isMmiForSubscriber(ILjava/lang/String;)Z

    move-result v4

    .line 762
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 763
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 764
    goto/16 :goto_4a0

    .line 745
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_3a4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 747
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 748
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getNetworkStatusDisplayOption(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 750
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 752
    goto/16 :goto_4a0

    .line 733
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_3bb
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 735
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 736
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 737
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getActivationDay(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 738
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 740
    goto/16 :goto_4a0

    .line 721
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Ljava/lang/String;
    :pswitch_3d2
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 723
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 724
    .local v4, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 725
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerExt(JZ)Z

    move-result v5

    .line 726
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 728
    goto/16 :goto_4a0

    .line 709
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Z
    .end local v5    # "_result":Z
    :pswitch_3e9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 711
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 712
    .local v3, "_arg1":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 713
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setTransmitPowerWithFlag(IZ)Z

    move-result v4

    .line 714
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 715
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 716
    goto/16 :goto_4a0

    .line 699
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Z
    .end local v4    # "_result":Z
    :pswitch_400
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setDisable2g(I)Z

    move-result v3

    .line 702
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 704
    goto/16 :goto_4a0

    .line 691
    .end local v2    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_413
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getDisable2g()I

    move-result v2

    .line 692
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 693
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 694
    goto/16 :goto_4a0

    .line 684
    .end local v2    # "_result":I
    :pswitch_41f
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isVideoCall()Z

    move-result v2

    .line 685
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 687
    goto/16 :goto_4a0

    .line 676
    .end local v2    # "_result":Z
    :pswitch_42b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 677
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 678
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ISemTelephony$Stub;->setAllowDataDuringCall(I)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    goto :goto_4a0

    .line 669
    .end local v2    # "_arg0":I
    :pswitch_439
    invoke-virtual {p0}, Lcom/android/internal/telephony/ISemTelephony$Stub;->reloadTestEmergencyNumber()V

    .line 670
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    goto :goto_4a0

    .line 656
    :pswitch_440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 658
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v4

    .line 661
    .local v4, "_arg2":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->isEmergencyNumberBySubId(ILjava/lang/String;Z)Z

    move-result v5

    .line 663
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 665
    goto :goto_4a0

    .line 645
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Z
    .end local v5    # "_result":Z
    :pswitch_45a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 647
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 648
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/ISemTelephony$Stub;->dialForSubscriber(ILjava/lang/String;)V

    .line 650
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    goto :goto_4a0

    .line 631
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_46c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 633
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 635
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 636
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getAllCellInfoBySubId(ILjava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 638
    .local v5, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 640
    goto :goto_4a0

    .line 617
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :pswitch_486
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 619
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 621
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 623
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/ISemTelephony$Stub;->getCellLocationBySubId(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object v5

    .line 624
    .local v5, "_result":Landroid/telephony/CellIdentity;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v5, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 626
    nop

    .line 1239
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_result":Landroid/telephony/CellIdentity;
    :goto_4a0
    return v1

    nop

    :pswitch_data_4a2
    .packed-switch 0x5f4e5446
        :pswitch_18
    .end packed-switch

    :pswitch_data_4a8
    .packed-switch 0x1
        :pswitch_486
        :pswitch_46c
        :pswitch_45a
        :pswitch_440
        :pswitch_439
        :pswitch_42b
        :pswitch_41f
        :pswitch_413
        :pswitch_400
        :pswitch_3e9
        :pswitch_3d2
        :pswitch_3bb
        :pswitch_3a4
        :pswitch_38d
        :pswitch_372
        :pswitch_366
        :pswitch_344
        :pswitch_331
        :pswitch_31a
        :pswitch_30b
        :pswitch_2f8
        :pswitch_2e5
        :pswitch_2d2
        :pswitch_2c6
        :pswitch_2b3
        :pswitch_29c
        :pswitch_281
        :pswitch_26a
        :pswitch_24f
        :pswitch_243
        :pswitch_230
        :pswitch_21d
        :pswitch_206
        :pswitch_1f3
        :pswitch_1cf
        :pswitch_1bc
        :pswitch_1a9
        :pswitch_18e
        :pswitch_177
        :pswitch_15c
        :pswitch_150
        :pswitch_139
        :pswitch_12d
        :pswitch_112
        :pswitch_106
        :pswitch_eb
        :pswitch_d8
        :pswitch_b9
        :pswitch_a6
        :pswitch_8f
        :pswitch_7c
        :pswitch_69
        :pswitch_56
        :pswitch_42
        :pswitch_2f
        :pswitch_1c
    .end packed-switch
.end method
