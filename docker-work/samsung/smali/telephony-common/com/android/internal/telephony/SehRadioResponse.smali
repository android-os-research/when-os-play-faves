.class public Lcom/android/internal/telephony/SehRadioResponse;
.super Lvendor/samsung/hardware/radio/V2_2/ISehRadioResponse$Stub;
.source "SehRadioResponse.java"


# instance fields
.field blacklist mSemRil:Lcom/android/internal/telephony/SemRIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/SemRIL;)V
    .registers 2

    .line 59
    invoke-direct {p0}, Lvendor/samsung/hardware/radio/V2_2/ISehRadioResponse$Stub;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    return-void
.end method

.method private blacklist convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;
    .registers 2

    if-nez p1, :cond_5

    .line 399
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_5
    const/4 p0, 0x1

    if-ne p1, p0, :cond_b

    .line 401
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->AVAILABLE:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_b
    const/4 p0, 0x2

    if-ne p1, p0, :cond_11

    .line 403
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->CURRENT:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    :cond_11
    const/4 p0, 0x3

    if-ne p1, p0, :cond_17

    .line 405
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->FORBIDDEN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0

    .line 407
    :cond_17
    sget-object p0, Lcom/android/internal/telephony/OperatorInfo$State;->UNKNOWN:Lcom/android/internal/telephony/OperatorInfo$State;

    return-object p0
.end method

.method private blacklist convertOperatorInfo(Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;
    .registers 12

    .line 437
    iget-object v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v1, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 438
    iget-object v2, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    .line 439
    iget-object v0, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 441
    iget-object v3, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    iget-object v3, v3, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_1b

    .line 442
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v3

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x0

    :goto_1c
    if-eqz v3, :cond_2c

    .line 444
    check-cast v3, Lcom/android/internal/telephony/SemServiceStateTracker;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getEons(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    move-object v1, v3

    move-object v2, v1

    .line 451
    :cond_2c
    new-instance v9, Lcom/android/internal/telephony/OperatorInfo;

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v3, v3, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    .line 452
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SehRadioResponse;->convertIntToOperatorInfoState(I)Lcom/android/internal/telephony/OperatorInfo$State;

    move-result-object v7

    iget-object v3, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SehRadioResponse;->convertRatStringToInt(Ljava/lang/String;)I

    move-result v8

    move-object v3, v9

    move-object v4, v1

    move-object v5, v2

    move-object v6, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/OperatorInfo$State;I)V

    .line 453
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Add OperatorInfo ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->base:Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v0, v0, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    .line 454
    invoke-static {v0}, Lcom/android/internal/telephony/SehRadioResponse;->convertOpertatorInfoToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;->rat:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    return-object v9
.end method

.method private static blacklist convertOpertatorInfoToString(I)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    const-string p0, "unknown"

    return-object p0

    :cond_5
    const/4 v0, 0x1

    if-ne p0, v0, :cond_b

    const-string p0, "available"

    return-object p0

    :cond_b
    const/4 v0, 0x2

    if-ne p0, v0, :cond_11

    const-string p0, "current"

    return-object p0

    :cond_11
    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    const-string p0, "forbidden"

    return-object p0

    :cond_17
    const-string p0, ""

    return-object p0
.end method

.method private blacklist convertRatStringToInt(Ljava/lang/String;)I
    .registers 3

    const-string p0, "GERAN"

    .line 412
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const-string p0, "UMTS"

    .line 413
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x2

    if-eqz p0, :cond_14

    return v0

    :cond_14
    const-string p0, "TD"

    .line 414
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    return v0

    :cond_1d
    const-string p0, "LTE"

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    const/4 p0, 0x3

    return p0

    :cond_27
    const-string p0, "NR"

    .line 416
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 p0, 0x6

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V
    .registers 10

    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 480
    new-instance v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-direct {v1}, Lcom/samsung/android/telephony/gsm/SemCbConfig;-><init>()V

    .line 492
    :try_start_d
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_79

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19

    .line 542
    :goto_13
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v3}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 497
    :cond_19
    :try_start_19
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->enabled:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne v2, v4, :cond_22

    .line 500
    iput-boolean v4, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    goto :goto_26

    :cond_22
    if-ne v2, v5, :cond_6d

    .line 502
    iput-boolean v6, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->bCBEnabled:Z

    .line 510
    :goto_26
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->selectedId:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->selectedId:I

    .line 511
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIdMaxCount:I

    iput v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdMaxCount:I

    .line 512
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIdCount:I

    iput v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-lez v2, :cond_37

    mul-int/2addr v2, v5

    .line 515
    new-array v2, v2, [B

    .line 520
    :cond_37
    new-array v2, v3, [I

    .line 521
    iput-object v2, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    .line 523
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;->msgIDs:Ljava/lang/String;

    if-eqz p2, :cond_5e

    .line 527
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p2

    move v2, v6

    .line 529
    :goto_44
    iget v3, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIdCount:I

    if-ge v6, v3, :cond_5e

    .line 530
    aget-byte v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v2, 0x1

    .line 531
    aget-byte v4, p2, v4

    and-int/lit16 v4, v4, 0xff

    .line 534
    iget-object v5, v1, Lcom/samsung/android/telephony/gsm/SemCbConfig;->msgIds:[I

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v3, v4

    aput v3, v5, v6

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    goto :goto_44

    .line 538
    :cond_5e
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_67

    .line 539
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_67
    .catchall {:try_start_19 .. :try_end_67} :catchall_79

    .line 542
    :cond_67
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_80

    .line 504
    :cond_6d
    :try_start_6d
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    const-string v2, "oemResponseGsmBroadcastConfig parameter is invalid. processResponseDone with return null."

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/16 p2, 0x42

    .line 505
    iput p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_79

    goto :goto_13

    :catchall_79
    move-exception p2

    .line 542
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 543
    throw p2

    :cond_80
    :goto_80
    return-void
.end method

.method private blacklist oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 652
    :goto_e
    :try_start_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 653
    new-instance v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v5, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->index:I

    .line 654
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget-object v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->oper:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget-object v7, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->plmn:Ljava/lang/String;

    .line 655
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v8, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmAct:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v9, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->gsmCompactAct:I

    .line 656
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v10, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->utranAct:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;

    iget v11, v4, Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;->mode:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/PreferredNetworkListInfo;-><init>(ILjava/lang/String;Ljava/lang/String;IIII)V

    .line 653
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 658
    :cond_58
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_61

    .line 659
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_61
    .catchall {:try_start_e .. :try_end_61} :catchall_67

    .line 662
    :cond_61
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_6e

    :catchall_67
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 663
    throw p2

    :cond_6e
    :goto_6e
    return-void
.end method

.method private blacklist responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V
    .registers 12

    .line 195
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_e0

    .line 197
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 199
    :try_start_d
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 200
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 201
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 202
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 203
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 204
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_2e

    move v2, v3

    .line 212
    :cond_2e
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_34
    if-ge v4, v2, :cond_a1

    .line 214
    iget-object v5, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    .line 215
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 216
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 217
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 218
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 220
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 221
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 222
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_71

    const/4 v8, 0x1

    goto :goto_72

    :cond_71
    move v8, v3

    :goto_72
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 223
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 224
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 225
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    .line 226
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    .line 227
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    .line 228
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    .line 229
    iget v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    .line 230
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 232
    :cond_a1
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 233
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 234
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 235
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 236
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 237
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 238
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_d3

    .line 239
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_d3
    .catchall {:try_start_d .. :try_end_d3} :catchall_d9

    .line 242
    :cond_d3
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_e0

    :catchall_d9
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 243
    throw p2

    :cond_e0
    :goto_e0
    return-void
.end method

.method private blacklist responseIccCardStatus_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V
    .registers 12

    .line 248
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_ee

    .line 250
    new-instance v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/IccCardStatus;-><init>()V

    .line 252
    :try_start_d
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setCardState(I)V

    .line 253
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardStatus;->setUniversalPinState(I)V

    .line 254
    iget-object v2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 255
    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->cdmaSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    .line 256
    iget v3, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->imsSubscriptionAppIndex:I

    iput v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mImsSubscriptionAppIndex:I

    .line 257
    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_34

    move v2, v3

    .line 265
    :cond_34
    new-array v3, v2, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    iput-object v3, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    const/4 v3, 0x0

    move v4, v3

    :goto_3a
    if-ge v4, v2, :cond_a9

    .line 267
    iget-object v5, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget-object v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;

    .line 268
    new-instance v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    invoke-direct {v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;-><init>()V

    .line 269
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppTypeFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 270
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->appState:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->AppStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_state:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    .line 271
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->persoSubstate:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PersoSubstateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_substate:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 273
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->aidPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->aid:Ljava/lang/String;

    .line 274
    iget-object v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_label:Ljava/lang/String;

    .line 275
    iget v8, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1Replaced:I

    if-eqz v8, :cond_79

    const/4 v8, 0x1

    goto :goto_7a

    :cond_79
    move v8, v3

    :goto_7a
    iput-boolean v8, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_replaced:Z

    .line 276
    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin1:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 277
    iget-object v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->base:Landroid/hardware/radio/V1_0/AppStatus;

    iget v7, v7, Landroid/hardware/radio/V1_0/AppStatus;->pin2:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->PinStateFromRILInt(I)Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    .line 278
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin1_num_retries:I

    .line 279
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk1NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk1_num_retries:I

    .line 280
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->pin2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2_num_retries:I

    .line 281
    iget v7, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->puk2NumRetries:I

    iput v7, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->puk2_num_retries:I

    .line 282
    iget v5, v5, Lvendor/samsung/hardware/radio/V2_0/SehAppStatus;->persoUnblockRetries:I

    iput v5, v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->perso_unblock_retries:I

    .line 283
    iget-object v5, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 285
    :cond_a9
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 286
    iget-object v3, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->base:Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;

    iget v4, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->physicalSlotId:I

    iput v4, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 287
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 288
    iget-object v2, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 289
    iget-object v2, v3, Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 290
    iget-object p2, p2, Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;->eid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 291
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    .line 292
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_e1

    .line 293
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_e1
    .catchall {:try_start_d .. :try_end_e1} :catchall_e7

    .line 296
    :cond_e1
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_ee

    :catchall_e7
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 297
    throw p2

    :cond_ee
    :goto_ee
    return-void
.end method

.method private blacklist responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 313
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 315
    :goto_f
    :try_start_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 316
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 318
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 319
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_33

    .line 322
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3a

    :catchall_33
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 323
    throw p2

    :cond_3a
    :goto_3a
    return-void
.end method

.method private varargs blacklist responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .registers 6

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 303
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 304
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 306
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 464
    :goto_e
    :try_start_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 465
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SehRadioResponse;->convertOperatorInfo(Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;)Lcom/android/internal/telephony/OperatorInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 467
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 468
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_e .. :try_end_2d} :catchall_33

    .line 471
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3a

    :catchall_33
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 472
    throw p2

    :cond_3a
    :goto_3a
    return-void
.end method

.method private blacklist responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V
    .registers 14

    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_8e

    const/4 v1, 0x3

    new-array v3, v1, [I

    new-array v4, v1, [I

    new-array v5, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v6, v2

    :goto_11
    if-ge v6, v1, :cond_3c

    .line 589
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthAlphas:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v3, v6

    .line 590
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeAlphas:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aput v7, v4, v6

    .line 591
    iget-object v7, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->alphaTags:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_3c
    const/4 v1, 0x5

    new-array v6, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [Ljava/lang/String;

    :goto_43
    if-ge v2, v1, :cond_6e

    .line 599
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->lengthNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v6, v2

    .line 600
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->dataTypeNumbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v7, v2

    .line 601
    iget-object v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->numbers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 604
    :cond_6e
    iget v9, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->recordIndex:I

    .line 605
    iget v10, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;->nextIndex:I

    .line 607
    new-instance p2, Lcom/android/internal/telephony/uicc/SimPBEntryResult;

    move-object v2, p2

    invoke-direct/range {v2 .. v10}, Lcom/android/internal/telephony/uicc/SimPBEntryResult;-><init>([I[I[Ljava/lang/String;[I[I[Ljava/lang/String;II)V

    .line 610
    :try_start_78
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_81

    .line 611
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_81
    .catchall {:try_start_78 .. :try_end_81} :catchall_87

    .line 614
    :cond_81
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_8e

    :catchall_87
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 615
    throw v1

    :cond_8e
    :goto_8e
    return-void
.end method

.method private blacklist responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 8

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 386
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->messageRef:I

    iget-object v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->ackPDU:Ljava/lang/String;

    iget v4, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->errorCode:I

    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;->errorClass:I

    invoke-direct {v1, v2, v3, v4, p2}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;II)V

    .line 388
    :try_start_15
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1e

    .line 389
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_24

    .line 392
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_2b

    :catchall_24
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 393
    throw p2

    :cond_2b
    :goto_2b
    return-void
.end method

.method private blacklist responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 347
    :try_start_8
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 348
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 351
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_17
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 352
    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/SemRIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 368
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 370
    :goto_d
    :try_start_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 371
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 373
    :cond_1e
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_27

    .line 374
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    .line 377
    :cond_27
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_30

    :catchall_2b
    move-exception p2

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 378
    throw p2

    :cond_30
    :goto_30
    return-void
.end method

.method private blacklist responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    .line 333
    :try_start_9
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_12

    .line 334
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_18

    .line 337
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1f

    :catchall_18
    move-exception v2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 338
    throw v2

    :cond_1f
    :goto_1f
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 71
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist accessPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 811
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 794
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    return-void
.end method

.method public blacklist emergencyControlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 832
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencySearchResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 825
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAtrResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 840
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehOperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V
    .registers 3

    .line 818
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->oemResponseGsmBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCbConfigArgs;)V

    return-void
.end method

.method public blacklist getCnapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 708
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCsgListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;",
            ">;)V"
        }
    .end annotation

    .line 848
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 851
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 853
    :goto_12
    :try_start_12
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_54

    .line 854
    new-instance v3, Lcom/android/internal/telephony/SemCsgInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v5, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->csgId:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget-object v6, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->name:Ljava/lang/String;

    .line 855
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget-object v7, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->plmn:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v8, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->rat:I

    .line 856
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v9, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->category:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;

    iget v10, v4, Lvendor/samsung/hardware/radio/V2_0/SehCsgInfo;->signalStrength:I

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/telephony/SemCsgInfo;-><init>(ILjava/lang/String;Ljava/lang/String;III)V

    .line 854
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 859
    :cond_54
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_5d

    .line 860
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_5d
    .catchall {:try_start_12 .. :try_end_5d} :catchall_63

    .line 863
    :cond_5d
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_6a

    :catchall_63
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 864
    throw p2

    :cond_6a
    :goto_6a
    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehCall;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist getDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 693
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V
    .registers 3

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehCardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V
    .registers 3

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIccCardStatus_2_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_1/SehCardStatus;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getNrIconTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 932
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 924
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPhonebookEntryResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V
    .registers 3

    .line 803
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSIM_PB(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimPhonebookResponse;)V

    return-void
.end method

.method public blacklist getPhonebookStorageInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;)V
    .registers 7

    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 721
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->totalCount:I

    aput v3, v1, v2

    const/4 v2, 0x1

    .line 722
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->usedCount:I

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 723
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->firstIndex:I

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 724
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxTextLength:I

    aput v3, v1, v2

    const/4 v2, 0x4

    .line 725
    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehPhonebookInfo;->maxNumberLength:I

    aput p2, v1, v2

    .line 728
    :try_start_24
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 729
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_33

    .line 732
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3a

    :catchall_33
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 733
    throw p2

    :cond_3a
    :goto_3a
    return-void
.end method

.method public blacklist getPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_0/SehPreferredNetworkInfo;",
            ">;)V"
        }
    .end annotation

    .line 671
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->oemResponsePreferredNetworkInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getSimLockInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;)V
    .registers 8

    .line 764
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 766
    iget v1, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->numberOfLockTypes:I

    .line 767
    iget v2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->lockType:I

    .line 768
    iget v3, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->lockKey:I

    .line 769
    iget p2, p2, Lvendor/samsung/hardware/radio/V2_0/SehSimLockInfo;->numberOfRetry:I

    .line 771
    new-instance v4, Lcom/android/internal/telephony/uicc/SimLockInfoResult;

    invoke-direct {v4, v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/SimLockInfoResult;-><init>(IIII)V

    .line 774
    :try_start_15
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1e

    .line 775
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v4}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_24

    .line 778
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_2b

    :catchall_24
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v4}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 779
    throw p2

    :cond_2b
    :goto_2b
    return-void
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehStoredMsgCount;)V
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 552
    :try_start_8
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 553
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 556
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_17
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 557
    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method

.method public blacklist getUsimPhonebookCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 742
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getVendorSpecificConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 939
    new-instance v1, Ljava/util/ArrayList;

    .line 940
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 942
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;

    .line 943
    new-instance v3, Lcom/android/internal/telephony/SemVendorConfiguration;

    iget-object v4, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->name:Ljava/lang/String;

    iget-object v2, v2, Lvendor/samsung/hardware/radio/V2_2/SehVendorConfiguration;->value:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lcom/android/internal/telephony/SemVendorConfiguration;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 947
    :cond_2e
    :try_start_2e
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_37

    .line 948
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_3d

    .line 951
    :cond_37
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_44

    :catchall_3d
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 952
    throw p2

    :cond_44
    :goto_44
    return-void
.end method

.method public blacklist readSmsFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSimMsgArgs;)V
    .registers 5

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 566
    :try_start_8
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 567
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_17

    .line 570
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_1e

    :catchall_17
    move-exception v1

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 571
    throw v1

    :cond_1e
    :goto_1e
    return-void
.end method

.method public blacklist selectCsgManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 872
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 3

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 3

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendEncodedUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 685
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 3

    .line 184
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 887
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SemRIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3f

    const/4 v1, 0x0

    .line 892
    :try_start_9
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[B

    move-result-object v1

    .line 894
    iget-object p2, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    iget-object p2, p2, Lcom/android/internal/telephony/SemRIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p2

    if-eqz p2, :cond_29

    .line 895
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-virtual {p2, v2, v1}, Lcom/android/internal/telephony/SemPhoneInternal;->processInterceptMsg(Landroid/os/Message;Ljava/lang/Object;)Z

    move-result p2
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_38

    if-eqz p2, :cond_29

    .line 902
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    .line 898
    :cond_29
    :try_start_29
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_32

    .line 899
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_29 .. :try_end_32} :catchall_38

    .line 902
    :cond_32
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    goto :goto_3f

    :catchall_38
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/SemRIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 903
    throw p2

    :cond_3f
    :goto_3f
    return-void
.end method

.method public blacklist sendRequestStringsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 912
    iget-object p0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/SemRIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 3

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V
    .registers 3

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SehRadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lvendor/samsung/hardware/radio/V2_0/SehSendSmsResult;)V

    return-void
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 191
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDisable2gResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 700
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setImsCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 643
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMobileDataSettingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 879
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 916
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrModeResponse_2_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 920
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 678
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimInitEventResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 756
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimOnOffResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 749
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setVendorSpecificConfigurationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 957
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 787
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SehRadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 97
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6

    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/SehRadioResponse;->mSemRil:Lcom/android/internal/telephony/SemRIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeSmsToSimResponse : index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SemRIL;->riljLog(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 577
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SehRadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
