.class public Lcom/android/internal/telephony/SimResponse;
.super Landroid/hardware/radio/sim/IRadioSimResponse$Stub;
.source "SimResponse.java"


# instance fields
.field private final blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Landroid/hardware/radio/sim/IRadioSimResponse$Stub;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private blacklist responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 7

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 47
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/sim/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/sim/IccIoResult;->sw2:I

    iget-object p2, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 48
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_1d

    .line 49
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 51
    :cond_1d
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_22
    return-void
.end method


# virtual methods
.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/RadioResponseInfo;Z)V
    .registers 6

    .line 71
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 74
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 75
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 77
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1f
    return-void
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 94
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 101
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CarrierRestrictions;I)V
    .registers 8

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_f

    move v1, v2

    .line 125
    :cond_f
    iget-boolean p3, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriersPrioritized:Z

    xor-int/2addr p3, v2

    .line 129
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v2

    iget-object v3, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->allowedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 130
    invoke-static {v3}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v2

    iget-object p2, p2, Landroid/hardware/radio/sim/CarrierRestrictions;->excludedCarriers:[Landroid/hardware/radio/sim/Carrier;

    .line 132
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList([Landroid/hardware/radio/sim/Carrier;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 134
    invoke-virtual {p2, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2, v1}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 136
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    .line 138
    iget p3, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_3f

    .line 139
    iget-object p3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 141
    :cond_3f
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 156
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 p2, 0x1

    aput-object p3, v1, p2

    const/4 p2, 0x2

    aput-object p4, v1, p2

    const/4 p2, 0x3

    aput-object p5, v1, p2

    const/4 p2, 0x4

    aput-object p6, v1, p2

    invoke-static {v0, p0, p1, v1}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 165
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 174
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/CardStatus;)V
    .registers 7

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 186
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Landroid/hardware/radio/sim/CardStatus;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 187
    iget-object v1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from AIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 188
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_2c

    .line 189
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 191
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method public blacklist getImsiForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    .line 200
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getInterfaceHash()Ljava/lang/String;
    .registers 1

    const-string p0, "01cea196fdf8f5e41fda8dc41125f1cc2b96f757"

    return-object p0
.end method

.method public blacklist getInterfaceVersion()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/PhonebookCapacity;)V
    .registers 5

    .line 209
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookCapacity(Landroid/hardware/radio/sim/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p2

    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 212
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_16

    .line 213
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 215
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1b
    return-void
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 223
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 230
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccIoForAppResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;I[B)V
    .registers 6

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 252
    :goto_d
    array-length v1, p3

    if-ge p2, v1, :cond_1c

    .line 253
    aget-byte v1, p3, p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    :cond_1c
    const/4 p2, 0x5

    .line 255
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 264
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 280
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 8

    .line 289
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 292
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/sim/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/sim/IccIoResult;->sw2:I

    .line 293
    iget-object v4, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 p2, 0x0

    goto :goto_1f

    :cond_19
    iget-object p2, p2, Landroid/hardware/radio/sim/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_1f
    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 294
    iget p2, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p2, :cond_2b

    .line 295
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 297
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 309
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 4

    .line 318
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V
    .registers 3

    .line 327
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SimResponse;->responseIccIo(Landroid/hardware/radio/RadioResponseInfo;Landroid/hardware/radio/sim/IccIoResult;)V

    return-void
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 334
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 344
    iget-object v1, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedCarriersResponse - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 346
    iget v1, p1, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_30

    const/4 v1, 0x0

    .line 348
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_31

    :cond_30
    const/4 v1, 0x2

    .line 350
    :goto_31
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 358
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 365
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 373
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 380
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 3

    .line 387
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 395
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 403
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 411
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 419
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/RadioResponseInfo;II)V
    .registers 6

    .line 430
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/RadioResponseInfo;I)V
    .registers 5

    .line 440
    iget-object p0, p0, Lcom/android/internal/telephony/SimResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x5

    invoke-static {p2, p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V

    return-void
.end method
