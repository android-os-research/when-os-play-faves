.class public Lcom/android/internal/telephony/RadioResponse;
.super Landroid/hardware/radio/V1_6/IRadioResponse$Stub;
.source "RadioResponse.java"


# instance fields
.field blacklist mRil:Lcom/android/internal/telephony/RIL;


# direct methods
.method public static synthetic blacklist $r8$lambda$DQIi6H_tPYE3RntSRYpumfuFtFI(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->lambda$getVoiceRegistrationStateResponse_1_5$0(ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$FBul5me2fB3ttmxxl40BIc-2Q0o(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->lambda$getDataRegistrationStateResponse_1_5$1(ILandroid/os/Message;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qKjrQpzwds42mwoK7mPEf2m9YzE(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->lambda$responseScanStatus$2(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/RIL;)V
    .registers 2

    .line 74
    invoke-direct {p0}, Landroid/hardware/radio/V1_6/IRadioResponse$Stub;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    return-void
.end method

.method private synthetic blacklist lambda$getDataRegistrationStateResponse_1_5$1(ILandroid/os/Message;)V
    .registers 5

    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 488
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getDataRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$getVoiceRegistrationStateResponse_1_5$0(ILandroid/os/Message;)V
    .registers 5

    .line 389
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 390
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/RIL;->getVoiceRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method private synthetic blacklist lambda$responseScanStatus$2(ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V
    .registers 6

    .line 2529
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    sget-object v1, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/RIL;->setCompatVersion(ILcom/android/internal/telephony/HalVersion;)V

    .line 2530
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/RIL;->startNetworkScan(Landroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2699
    iget-object v3, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v3

    if-eqz v3, :cond_5b

    .line 2703
    iget v4, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v5, 0x0

    if-nez v4, :cond_39

    .line 2704
    iget v9, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->sleepModeTimeMs:I

    .line 2705
    iget v10, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->idleModeTimeMs:I

    .line 2706
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    new-array v11, v4, [I

    .line 2707
    :goto_1d
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    if-ge v5, v4, :cond_2c

    .line 2708
    iget-object v4, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->txmModetimeMs:[I

    aget v4, v4, v5

    aput v4, v11, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 2710
    :cond_2c
    iget v12, v2, Landroid/hardware/radio/V1_0/ActivityStatsInfo;->rxModeTimeMs:I

    .line 2711
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move-object v6, v2

    invoke-direct/range {v6 .. v12}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    goto :goto_51

    .line 2714
    :cond_39
    new-instance v2, Landroid/telephony/ModemActivityInfo;

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 2715
    invoke-static {}, Landroid/telephony/ModemActivityInfo;->getNumTxPowerLevels()I

    move-result v4

    new-array v4, v4, [I

    const/16 v19, 0x0

    move-object v13, v2

    move-object/from16 v18, v4

    invoke-direct/range {v13 .. v19}, Landroid/telephony/ModemActivityInfo;-><init>(JII[II)V

    .line 2716
    iput v5, v1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 2718
    :goto_51
    iget-object v4, v3, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2719
    iget-object v0, v0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_5b
    return-void
.end method

.method private blacklist responseAdnCapacity(Landroid/hardware/radio/V1_6/RadioResponseInfo;Lcom/android/internal/telephony/uicc/AdnCapacity;)V
    .registers 5

    .line 1906
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1908
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 1909
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1911
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private blacklist responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 2476
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2478
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v2, 0x0

    .line 2479
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 2480
    new-instance v3, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v3}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v3, v1, v2

    .line 2481
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->status:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2482
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->reason:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2483
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->serviceClass:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2484
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->toa:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2485
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    iput-object v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2486
    aget-object v3, v1, v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/CallForwardInfo;

    iget v4, v4, Landroid/hardware/radio/V1_0/CallForwardInfo;->timeSeconds:I

    iput v4, v3, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2488
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2489
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2491
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .registers 8

    .line 2777
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-eqz p2, :cond_18

    .line 2784
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllCarriersAllowed()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    goto :goto_44

    :cond_18
    const/4 p2, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1d

    move p2, v1

    .line 2793
    :cond_1d
    iget-boolean p4, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    xor-int/2addr p4, v1

    .line 2798
    invoke-static {}, Landroid/telephony/CarrierRestrictionRules;->newBuilder()Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object v2, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 2799
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setAllowedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object v1

    iget-object p3, p3, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    .line 2800
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalCarrierList(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/telephony/CarrierRestrictionRules$Builder;->setExcludedCarriers(Ljava/util/List;)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    .line 2801
    invoke-virtual {p3, p4}, Landroid/telephony/CarrierRestrictionRules$Builder;->setDefaultCarrierRestriction(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p3

    .line 2802
    invoke-virtual {p3, p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->setMultiSimPolicy(I)Landroid/telephony/CarrierRestrictionRules$Builder;

    move-result-object p2

    .line 2803
    invoke-virtual {p2}, Landroid/telephony/CarrierRestrictionRules$Builder;->build()Landroid/telephony/CarrierRestrictionRules;

    move-result-object p2

    .line 2806
    :goto_44
    iget p3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p3, :cond_4d

    .line 2807
    iget-object p3, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2809
    :cond_4d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2624
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_6f

    .line 2629
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2c

    const/16 p2, 0x5e

    new-array v1, p2, [I

    const/16 v4, 0x1f

    aput v4, v1, v2

    move v4, v3

    :goto_19
    if-ge v4, p2, :cond_61

    add-int/lit8 v5, v4, 0x0

    .line 2646
    div-int/lit8 v6, v4, 0x3

    aput v6, v1, v5

    add-int/lit8 v5, v4, 0x1

    .line 2647
    aput v3, v1, v5

    add-int/lit8 v5, v4, 0x2

    .line 2648
    aput v2, v1, v5

    add-int/lit8 v4, v4, 0x3

    goto :goto_19

    :cond_2c
    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v3

    .line 2653
    new-array v4, v4, [I

    .line 2655
    aput v1, v4, v2

    .line 2656
    :goto_33
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_60

    .line 2658
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v1, v1, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->serviceCategory:I

    aput v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    .line 2659
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->language:I

    aput v5, v4, v1

    add-int/lit8 v1, v3, 0x2

    .line 2660
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;

    iget-boolean v5, v5, Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;->selected:Z

    aput v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    goto :goto_33

    :cond_60
    move-object v1, v4

    .line 2663
    :cond_61
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6a

    .line 2664
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2666
    :cond_6a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_6f
    return-void
.end method

.method private blacklist responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2672
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2675
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2676
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2677
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2679
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseCellInfoList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2686
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2689
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellInfoList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2690
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2691
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2693
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 2576
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 2581
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2584
    iget-object v2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v2, v2, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 2585
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/BaseCommands;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    .line 2586
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 2587
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v2

    if-eqz v2, :cond_4f

    .line 2590
    :goto_2e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v4, v3, :cond_4f

    .line 2591
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget v3, v3, Landroid/hardware/radio/V1_0/NeighboringCell;->rssi:I

    .line 2592
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/NeighboringCell;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/NeighboringCell;->cid:Ljava/lang/String;

    .line 2593
    new-instance v6, Landroid/telephony/NeighboringCellInfo;

    invoke-direct {v6, v3, v5, v2}, Landroid/telephony/NeighboringCellInfo;-><init>(ILjava/lang/String;I)V

    .line 2594
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 2597
    :cond_4f
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_58

    .line 2598
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2600
    :cond_58
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_5d
    return-void
.end method

.method private blacklist responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 2077
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2080
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2081
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_44

    .line 2085
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 2087
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2089
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_33

    .line 2090
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2091
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_41

    .line 2093
    :cond_33
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2094
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2098
    :cond_44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_65

    .line 2100
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2101
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_65

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    .line 2102
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2104
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2108
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2109
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2111
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 2117
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2120
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_44

    .line 2125
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 2127
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2129
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_33

    .line 2130
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2131
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_41

    .line 2133
    :cond_33
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2134
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2138
    :cond_44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_65

    .line 2140
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2141
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_65

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    .line 2142
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2144
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2148
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2149
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2151
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseCurrentCalls_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/Call;",
            ">;)V"
        }
    .end annotation

    .line 2158
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_73

    .line 2161
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2162
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_44

    .line 2166
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/RILUtils;->convertToDriverCall(Ljava/lang/Object;)Lcom/android/internal/telephony/DriverCall;

    move-result-object v5

    .line 2168
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2170
    iget-boolean v5, v5, Lcom/android/internal/telephony/DriverCall;->isVoicePrivacy:Z

    if-eqz v5, :cond_33

    .line 2171
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2172
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is enabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    goto :goto_41

    .line 2174
    :cond_33
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v5, v5, Lcom/android/internal/telephony/BaseCommands;->mVoicePrivacyOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    .line 2175
    iget-object v5, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    const-string v6, "InCall VoicePrivacy is disabled"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2179
    :cond_44
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    if-nez v1, :cond_65

    .line 2181
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/RIL;->mTestingEmergencyCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p2

    if-eqz p2, :cond_65

    .line 2182
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    if-eqz v1, :cond_65

    const-string v1, "responseCurrentCalls: call ended, testing emergency call, notify ECM Registrants"

    .line 2183
    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2185
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mEmergencyCallbackModeRegistrant:Lcom/android/internal/telephony/Registrant;

    invoke-virtual {p2}, Lcom/android/internal/telephony/Registrant;->notifyRegistrant()V

    .line 2189
    :cond_65
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_6e

    .line 2190
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2192
    :cond_6e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_73
    return-void
.end method

.method private blacklist responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2548
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2552
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2553
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2554
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2556
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseDataCallList(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2562
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2566
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResultList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2567
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2568
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2570
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 2606
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 2609
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2610
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 2611
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v5, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromServiceId:I

    .line 2612
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v6, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toServiceId:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v7, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->fromCodeScheme:I

    .line 2613
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget v8, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->toCodeScheme:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;

    iget-boolean v9, v4, Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;->selected:Z

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/gsm/SmsBroadcastConfigInfo;-><init>(IIIIZ)V

    .line 2611
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2615
    :cond_48
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_51

    .line 2616
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2618
    :cond_51
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_56
    return-void
.end method

.method private blacklist responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 2725
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2728
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalHardwareConfigList(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p2

    .line 2729
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2730
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2732
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .registers 7

    .line 1916
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1919
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 1920
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1921
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2b

    .line 1922
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1924
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method private blacklist responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .registers 7

    .line 1930
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 1933
    iget-object v1, p2, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1934
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 1935
    iget v3, p2, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v3, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 1936
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 1937
    iget-object v2, p2, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1938
    iget-object p2, p2, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1939
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1940
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_40

    .line 1941
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1943
    :cond_40
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method

.method private blacklist responseIccCardStatus_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .registers 8

    .line 1949
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 1952
    iget-object v1, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget-object v1, v1, Landroid/hardware/radio/V1_2/CardStatus;->base:Landroid/hardware/radio/V1_0/CardStatus;

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object v1

    .line 1953
    new-instance v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    invoke-direct {v2}, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;-><init>()V

    .line 1954
    iget-object v3, p2, Landroid/hardware/radio/V1_4/CardStatus;->base:Landroid/hardware/radio/V1_2/CardStatus;

    iget v4, v3, Landroid/hardware/radio/V1_2/CardStatus;->physicalSlotId:I

    iput v4, v2, Lcom/android/internal/telephony/uicc/IccSlotPortMapping;->mPhysicalSlotIndex:I

    .line 1955
    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mSlotPortMapping:Lcom/android/internal/telephony/uicc/IccSlotPortMapping;

    .line 1956
    iget-object v2, v3, Landroid/hardware/radio/V1_2/CardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->atr:Ljava/lang/String;

    .line 1957
    iget-object v2, v3, Landroid/hardware/radio/V1_2/CardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->iccid:Ljava/lang/String;

    .line 1958
    iget-object p2, p2, Landroid/hardware/radio/V1_4/CardStatus;->eid:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    .line 1959
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1960
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_48

    .line 1961
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1963
    :cond_48
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_4d
    return-void
.end method

.method private blacklist responseIccCardStatus_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V
    .registers 7

    .line 1969
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 1972
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCardStatus(Ljava/lang/Object;)Lcom/android/internal/telephony/uicc/IccCardStatus;

    move-result-object p2

    .line 1973
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseIccCardStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1974
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2b

    .line 1975
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1977
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method private blacklist responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 7

    .line 2463
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 2466
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    .line 2467
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1c

    .line 2468
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2470
    :cond_1c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_21
    return-void
.end method

.method public static blacklist responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2061
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_2e

    .line 2064
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2065
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 2066
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2068
    :cond_22
    iget p3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_2b

    .line 2069
    iget-object p3, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2071
    :cond_2b
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2e
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

    .line 2022
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2025
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2026
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 2027
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2029
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 2030
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2032
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method private blacklist responseIntArrayList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2038
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 2041
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 2042
    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_24

    .line 2043
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 2045
    :cond_24
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_2d

    .line 2046
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2048
    :cond_2d
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_32
    return-void
.end method

.method public static varargs blacklist responseInts(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[I)V
    .registers 7

    .line 2014
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2015
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_15

    .line 2016
    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2018
    :cond_15
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V
    .registers 6

    .line 1989
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1990
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 1991
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1993
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V
    .registers 6

    .line 1998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1999
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_15

    .line 2000
    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2002
    :cond_15
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private blacklist responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 6

    .line 2327
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 2330
    new-instance v1, Lcom/android/internal/telephony/LastCallFailCause;

    invoke-direct {v1}, Lcom/android/internal/telephony/LastCallFailCause;-><init>()V

    .line 2331
    iget v2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->causeCode:I

    iput v2, v1, Lcom/android/internal/telephony/LastCallFailCause;->causeCode:I

    .line 2332
    iget-object p2, p2, Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;->vendorCause:Ljava/lang/String;

    iput-object p2, v1, Lcom/android/internal/telephony/LastCallFailCause;->vendorCause:Ljava/lang/String;

    .line 2333
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_1e

    .line 2334
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2336
    :cond_1e
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_23
    return-void
.end method

.method private blacklist responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 5

    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2767
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalLceData(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 2768
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2769
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2771
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 6

    .line 2750
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 2753
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2754
    iget v2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->lceStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2755
    iget-byte p2, p2, Landroid/hardware/radio/V1_0/LceStatusInfo;->actualIntervalMs:B

    invoke-static {p2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2756
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2c

    .line 2757
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2759
    :cond_2c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_31
    return-void
.end method

.method private blacklist responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 2500
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 2501
    :goto_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_43

    .line 2502
    new-instance v3, Lcom/android/internal/telephony/OperatorInfo;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v4, v4, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaLong:Ljava/lang/String;

    .line 2503
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v5, v5, Landroid/hardware/radio/V1_0/OperatorInfo;->alphaShort:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget-object v6, v6, Landroid/hardware/radio/V1_0/OperatorInfo;->operatorNumeric:Ljava/lang/String;

    .line 2504
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/radio/V1_0/OperatorInfo;

    iget v7, v7, Landroid/hardware/radio/V1_0/OperatorInfo;->status:I

    invoke-static {v7}, Lcom/android/internal/telephony/RILUtils;->convertHalOperatorStatus(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/OperatorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2506
    :cond_43
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_4c

    .line 2507
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2509
    :cond_4c
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_51
    return-void
.end method

.method private blacklist responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 5

    .line 2738
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 2741
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 2742
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_17

    .line 2743
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2745
    :cond_17
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method private blacklist responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V
    .registers 9

    .line 2514
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 2519
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_21

    if-eqz p2, :cond_21

    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    if-eqz p2, :cond_21

    array-length v2, p2

    if-lez v2, :cond_21

    aget-object p2, p2, v4

    instance-of p2, p2, Landroid/telephony/NetworkScanRequest;

    if-eqz p2, :cond_21

    move p2, v3

    goto :goto_22

    :cond_21
    move p2, v4

    :goto_22
    const/4 v2, 0x0

    if-eqz p2, :cond_45

    .line 2524
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result p2

    .line 2525
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v1

    .line 2526
    iget-object v3, v0, Lcom/android/internal/telephony/RILRequest;->mArguments:[Ljava/lang/Object;

    aget-object v3, v3, v4

    check-cast v3, Landroid/telephony/NetworkScanRequest;

    .line 2528
    iget-object v4, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v4, v4, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v5, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;

    invoke-direct {v5, p0, p2, v3, v1}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/telephony/NetworkScanRequest;Landroid/os/Message;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2533
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_45
    if-nez v1, :cond_52

    .line 2539
    new-instance p2, Lcom/android/internal/telephony/NetworkScanResult;

    invoke-direct {p2, v3, v4, v2}, Lcom/android/internal/telephony/NetworkScanResult;-><init>(IILjava/util/List;)V

    .line 2541
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    move-object v2, p2

    .line 2543
    :cond_52
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method private blacklist responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "RILJ"

    const-string v1, "!@Boot_SVC : Response setupDataCall"

    .line 2426
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "!@Boot_EBS_N : Response setupDataCall"

    .line 2427
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_3f

    .line 2434
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v1, v1, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SKT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 2435
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertDataCallResultToMultiMtu(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    goto :goto_31

    .line 2437
    :cond_2d
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 2440
    :goto_31
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_3a

    .line 2441
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2443
    :cond_3a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_3f
    return-void
.end method

.method private blacklist responseSetupDataCall_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V
    .registers 5

    .line 2450
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2453
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalDataCallResult(Ljava/lang/Object;)Landroid/telephony/data/DataCallResponse;

    move-result-object p2

    .line 2454
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2455
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2457
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 5

    .line 2343
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2346
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2347
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2348
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2350
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 5

    .line 2357
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2360
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2361
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2362
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2364
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 5

    .line 2371
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2374
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2375
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2376
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2378
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSignalStrength_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 5

    .line 2385
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2388
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSignalStrength(Ljava/lang/Object;)Landroid/telephony/SignalStrength;

    move-result-object p2

    .line 2389
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2390
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2392
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private blacklist responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 11

    .line 2397
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2400
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    .line 2401
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 2402
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_23

    .line 2403
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2405
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method private blacklist responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 11

    .line 2411
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 2414
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Lcom/android/internal/telephony/RIL;->getOutgoingSmsMessageId(Landroid/os/Message;)J

    move-result-wide v6

    .line 2415
    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget v3, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->messageRef:I

    iget-object v4, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->ackPDU:Ljava/lang/String;

    iget v5, p2, Landroid/hardware/radio/V1_0/SendSmsResult;->errorCode:I

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;IJ)V

    .line 2416
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_23

    .line 2417
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2419
    :cond_23
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_28
    return-void
.end method

.method public static blacklist responseString(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 2259
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2262
    iget v0, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v0, :cond_f

    .line 2263
    iget-object v0, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v0, p3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2265
    :cond_f
    invoke-virtual {p1, p0, p2, p3}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method private blacklist responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 5

    .line 2240
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 2243
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 2244
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2246
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method private static blacklist responseStringArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2311
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_2a

    .line 2314
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2315
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 2316
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2318
    :cond_1e
    iget p3, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez p3, :cond_27

    .line 2319
    iget-object p3, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p3, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2321
    :cond_27
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method static blacklist responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/RIL;",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2295
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 2298
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 2299
    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 2300
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2302
    :cond_1e
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_27

    .line 2303
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2305
    :cond_27
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2a
    return-void
.end method

.method public static varargs blacklist responseStrings(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;[Ljava/lang/String;)V
    .registers 7

    .line 2286
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2287
    :goto_6
    array-length v2, p3

    if-ge v1, v2, :cond_11

    .line 2288
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2290
    :cond_11
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private varargs blacklist responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V
    .registers 6

    .line 2270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2271
    :goto_6
    array-length v2, p2

    if-ge v1, v2, :cond_11

    .line 2272
    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2274
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStringArrayList(Lcom/android/internal/telephony/RIL;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static blacklist responseVoid(ILcom/android/internal/telephony/RIL;Landroid/hardware/radio/RadioResponseInfo;)V
    .registers 5

    .line 2228
    invoke-virtual {p1, p0, p2}, Lcom/android/internal/telephony/RIL;->processResponse(ILandroid/hardware/radio/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p0

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    .line 2232
    iget v1, p2, Landroid/hardware/radio/RadioResponseInfo;->error:I

    if-nez v1, :cond_10

    .line 2233
    iget-object v1, p0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2235
    :cond_10
    invoke-virtual {p1, p0, p2, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private blacklist responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5

    .line 2197
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 2201
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_12

    .line 2202
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2204
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method private blacklist responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 5

    .line 2209
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_17

    const/4 v1, 0x0

    .line 2213
    iget v2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v2, :cond_12

    .line 2214
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2216
    :cond_12
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_17
    return-void
.end method

.method static blacklist sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .registers 3

    if-eqz p0, :cond_9

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 86
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    return-void
.end method


# virtual methods
.method public blacklist acceptCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 744
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeIncomingGsmSmsWithPduResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1349
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1200
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeLastIncomingGsmSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 737
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist acknowledgeRequest(I)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->processRequestAck(I)V

    return-void
.end method

.method public blacklist allocatePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 6

    .line 2958
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2960
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2961
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2963
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist areUiccApplicationsEnabledResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6

    .line 2854
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2857
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2858
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2860
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist cancelHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2985
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist cancelPendingUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 675
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist changeIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist changeIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist conferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 280
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deactivateDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 751
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deleteSmsOnRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist deleteSmsOnSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 956
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist dialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 237
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist emergencyDialResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1985
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableModemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2816
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist enableUiccApplicationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2845
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist exitEmergencyCallbackModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1295
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist explicitCallTransferResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1002
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_0/CarrierRestrictions;)V
    .registers 6

    .line 1722
    new-instance v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;

    invoke-direct {v0}, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;-><init>()V

    .line 1723
    iget-object v1, p3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->allowedCarriers:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriers:Ljava/util/ArrayList;

    .line 1724
    iget-object p3, p3, Landroid/hardware/radio/V1_0/CarrierRestrictions;->excludedCarriers:Ljava/util/ArrayList;

    iput-object p3, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->excludedCarriers:Ljava/util/ArrayList;

    const/4 p3, 0x1

    .line 1725
    iput-boolean p3, v0, Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;->allowedCarriersPrioritized:Z

    const/4 p3, 0x0

    .line 1727
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    return-void
.end method

.method public blacklist getAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V
    .registers 5

    const/4 v0, 0x0

    .line 1741
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/RadioResponse;->responseCarrierRestrictions(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZLandroid/hardware/radio/V1_4/CarrierRestrictionsWithPriority;I)V

    return-void
.end method

.method public blacklist getAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 5

    .line 645
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 650
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->updateCachedAllowedNetworkTypesBitmask(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 652
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getAvailableBandModesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
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

    .line 972
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getAvailableNetworksResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/OperatorInfo;",
            ">;)V"
        }
    .end annotation

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseOperatorInfos(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getBarringInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CellIdentity;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Landroid/hardware/radio/V1_5/CellIdentity;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/BarringInfo;",
            ">;)V"
        }
    .end annotation

    .line 2937
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 2940
    new-instance v1, Landroid/telephony/BarringInfo;

    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalCellIdentity(Ljava/lang/Object;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 2941
    invoke-static {p3}, Lcom/android/internal/telephony/RILUtils;->convertHalBarringInfoList(Ljava/util/List;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-direct {v1, p2, p3}, Landroid/telephony/BarringInfo;-><init>(Landroid/telephony/CellIdentity;Landroid/util/SparseArray;)V

    .line 2942
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2b

    .line 2943
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2945
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object p2, p2, Lcom/android/internal/telephony/BaseCommands;->mBarringInfoChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    new-instance p3, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p3, v2, v1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 2948
    :cond_2b
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_30
    return-void
.end method

.method public blacklist getBasebandVersionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 871
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCDMASubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    const/4 p2, 0x4

    aput-object p6, v0, p2

    .line 1261
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getCallForwardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CallForwardInfo;",
            ">;)V"
        }
    .end annotation

    .line 701
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCallForwardInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 723
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CdmaBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1232
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCdmaBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1103
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1332
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCellInfoListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1371
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1380
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1389
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1398
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCellInfoListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1408
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellInfoList_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getClipResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 901
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 684
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/Call;",
            ">;)V"
        }
    .end annotation

    .line 211
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_2/Call;",
            ">;)V"
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getCurrentCallsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/Call;",
            ">;)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCurrentCalls_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getDataCallListResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 911
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_4/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 921
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 931
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataCallListResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_6/SetupDataCallResult;",
            ">;)V"
        }
    .end annotation

    .line 625
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseDataCallList(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/List;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/DataRegStateResult;)V
    .registers 5

    .line 425
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 428
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 429
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 431
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/DataRegStateResult;)V
    .registers 5

    .line 442
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 445
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 446
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 448
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/DataRegStateResult;)V
    .registers 5

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 462
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 463
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 465
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 8

    .line 476
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 481
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 483
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    .line 484
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v2

    .line 486
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v4, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_28
    if-nez v1, :cond_2f

    .line 494
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 496
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getDataRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 5

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 510
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 511
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 513
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getDeviceIdentityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const/4 p2, 0x3

    aput-object p5, v0, p2

    .line 1288
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 761
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/GsmBroadcastSmsConfigInfo;",
            ">;)V"
        }
    .end annotation

    .line 1209
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseGmsBroadcastConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getHardwareConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/HardwareConfig;",
            ">;)V"
        }
    .end annotation

    .line 1541
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseHardwareConfig(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getIMSIForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 245
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V
    .registers 3

    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/CardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V
    .registers 3

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/CardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V
    .registers 3

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/CardStatus;)V

    return-void
.end method

.method public blacklist getIccCardStatusResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V
    .registers 3

    .line 133
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccCardStatus_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/CardStatus;)V

    return-void
.end method

.method public blacklist getImsRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ZI)V
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    if-nez p3, :cond_a

    move v0, p2

    :cond_a
    aput v0, v1, p2

    .line 1440
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getLastCallFailCauseResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V
    .registers 3

    .line 299
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLastCallFailCauseInfo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LastCallFailCauseInfo;)V

    return-void
.end method

.method public blacklist getModemActivityInfoResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V
    .registers 3

    .line 1639
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseActivityData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/ActivityStatsInfo;)V

    return-void
.end method

.method public blacklist getModemStackStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 6

    .line 2824
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 2827
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2828
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2830
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist getMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 893
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getNeighboringCidsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_0/NeighboringCell;",
            ">;)V"
        }
    .end annotation

    .line 1074
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseCellList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist getNetworkSelectionModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 784
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getOperatorResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    .line 525
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseStrings(Landroid/hardware/radio/V1_0/RadioResponseInfo;[Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    .line 1049
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalNetworkTypeBitMask(I)I

    move-result p2

    .line 1051
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v0, v0, Lcom/android/internal/telephony/RIL;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1052
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getNetworkTypeFromRaf(I)I

    move-result v0

    if-nez v0, :cond_23

    const/4 p2, 0x3

    .line 1055
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p2

    .line 1063
    :cond_23
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/RIL;->updateCachedAllowedNetworkTypesBitmask(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1065
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6

    .line 1035
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/RIL;->updateCachedAllowedNetworkTypesBitmask(II)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 1037
    invoke-static {p2}, Landroid/telephony/RadioAccessFamily;->getRafFromNetworkType(I)I

    move-result p2

    const/4 v1, 0x0

    aput p2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Z)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1134
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 5

    .line 1585
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 1588
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioCapability(Landroid/hardware/radio/V1_0/RadioCapability;Lcom/android/internal/telephony/RIL;)Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    .line 1594
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-eqz v1, :cond_1b

    .line 1598
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2}, Lcom/android/internal/telephony/RIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object p2

    const/4 v1, 0x0

    .line 1599
    iput v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    .line 1601
    :cond_1b
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_24

    .line 1602
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1604
    :cond_24
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_29
    return-void
.end method

.method public blacklist getSignalStrengthResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V
    .registers 3

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SignalStrength;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V
    .registers 3

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/SignalStrength;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V
    .registers 3

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SignalStrength;)V

    return-void
.end method

.method public blacklist getSignalStrengthResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V
    .registers 3

    .line 334
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSignalStrength_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SignalStrength;)V

    return-void
.end method

.method public blacklist getSimPhonebookCapacityResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/PhonebookCapacity;)V
    .registers 3

    .line 1889
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalPhonebookCapacity(Landroid/hardware/radio/V1_6/PhonebookCapacity;)Lcom/android/internal/telephony/uicc/AdnCapacity;

    move-result-object p2

    .line 1890
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseAdnCapacity(Landroid/hardware/radio/V1_6/RadioResponseInfo;Lcom/android/internal/telephony/uicc/AdnCapacity;)V

    return-void
.end method

.method public blacklist getSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1879
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist getSlicingConfigResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SlicingConfig;)V
    .registers 5

    .line 2994
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 2997
    invoke-static {p2}, Lcom/android/internal/telephony/RILUtils;->convertHalSlicingConfig(Landroid/hardware/radio/V1_6/SlicingConfig;)Landroid/telephony/data/NetworkSlicingConfig;

    move-result-object p2

    .line 2998
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 2999
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 3001
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method public blacklist getSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1303
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_6/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RadioAccessSpecifier;",
            ">;)V"
        }
    .end annotation

    .line 2914
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2917
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2918
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_11
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/radio/V1_5/RadioAccessSpecifier;

    .line 2919
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalRadioAccessSpecifier(Landroid/hardware/radio/V1_5/RadioAccessSpecifier;)Landroid/telephony/RadioAccessSpecifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 2921
    :cond_25
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemSelectionChannelsResponse: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 2922
    iget p2, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez p2, :cond_44

    .line 2923
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 2925
    :cond_44
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_49
    return-void
.end method

.method public blacklist getTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1118
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRadioTechnologyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1366
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/VoiceRegStateResult;)V
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 347
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 348
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 350
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_2(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_2/VoiceRegStateResult;)V
    .registers 5

    .line 361
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 364
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 365
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 367
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/RegStateResult;)V
    .registers 8

    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 383
    :cond_9
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_28

    .line 385
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getRequest()I

    move-result v1

    .line 386
    invoke-virtual {v0}, Lcom/android/internal/telephony/RILRequest;->getResult()Landroid/os/Message;

    move-result-object v2

    .line 388
    iget-object v3, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget-object v3, v3, Lcom/android/internal/telephony/RIL;->mRilHandler:Lcom/android/internal/telephony/RIL$RilHandler;

    new-instance v4, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/internal/telephony/RadioResponse$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/RadioResponse;ILandroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 393
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseFallback(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :cond_28
    if-nez v1, :cond_2f

    .line 396
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 398
    :cond_2f
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist getVoiceRegistrationStateResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/RegStateResult;)V
    .registers 5

    .line 409
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 411
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_11

    .line 412
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 414
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_16
    return-void
.end method

.method public blacklist handleStkCallSetupRequestFromSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 995
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 252
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupForegroundResumeBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 266
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist hangupWaitingOrBackgroundResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 259
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccCloseLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1482
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist iccIOForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 661
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist iccOpenLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;ILjava/util/ArrayList;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 1470
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1471
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x0

    .line 1472
    :goto_d
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p2, v1, :cond_27

    .line 1473
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_d

    .line 1475
    :cond_27
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseIntArrayList(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public blacklist iccTransmitApduBasicChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1459
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist iccTransmitApduLogicalChannelResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1492
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist isNrDualConnectivityEnabledResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;Z)V
    .registers 6

    .line 1650
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 1653
    iget v1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    if-nez v1, :cond_15

    .line 1654
    iget-object v1, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1656
    :cond_15
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone_1_6(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_1e
    return-void
.end method

.method public blacklist nvReadItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1500
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist nvResetConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1521
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteCdmaPrlResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1514
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist nvWriteItemResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist pullLceDataResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V
    .registers 3

    .line 1630
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceData(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceDataInfo;)V

    return-void
.end method

.method public blacklist rejectCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 287
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist releasePduSessionIdResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2971
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist reportSmsMemoryStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1317
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist reportStkServiceIsRunningResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1324
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist requestIccSimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 8

    .line 1550
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 1553
    new-instance v1, Lcom/android/internal/telephony/uicc/IccIoResult;

    iget v2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw1:I

    iget v3, p2, Landroid/hardware/radio/V1_0/IccIoResult;->sw2:I

    .line 1554
    iget-object v4, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 p2, 0x0

    goto :goto_1e

    :cond_18
    iget-object p2, p2, Landroid/hardware/radio/V1_0/IccIoResult;->simResponse:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    :goto_1e
    invoke-direct {v1, v2, v3, p2}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 1555
    iget p2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez p2, :cond_2a

    .line 1556
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    .line 1558
    :cond_2a
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_2f
    return-void
.end method

.method public blacklist requestIsimAuthenticationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 1342
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Inexplicable response received for requestIsimAuthentication"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist requestShutdownResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1580
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendBurstDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1148
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCDMAFeatureCodeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1141
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1175
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1185
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1156
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendCdmaSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1166
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendDeviceStateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1748
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 540
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendEnvelopeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V
    .registers 3

    .line 981
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseString(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist sendEnvelopeWithStatusResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V
    .registers 3

    .line 1358
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseIccIo(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/IccIoResult;)V

    return-void
.end method

.method public blacklist sendImsSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 1450
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendOemRilRequestRawResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/radio/V1_0/RadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist sendSMSExpectMoreResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsExpectMoreResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 548
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendSmsResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V
    .registers 3

    .line 558
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSms_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_0/SendSmsResult;)V

    return-void
.end method

.method public blacklist sendTerminalResponseToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist sendUssdResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist separateConnectionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 878
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setAllowedCarriersResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 6

    .line 1680
    iget-object p2, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object p2

    if-eqz p2, :cond_49

    .line 1682
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAllowedCarriersResponse - error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1684
    iget v0, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    .line 1686
    iget-object v0, p2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_40

    :cond_2f
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3f

    .line 1689
    iput v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v1, 0x1

    .line 1691
    iget-object v0, p2, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_40

    :cond_3f
    const/4 v1, 0x2

    .line 1693
    :goto_40
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_49
    return-void
.end method

.method public blacklist setAllowedCarriersResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 6

    .line 1702
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 1704
    iget-object v1, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAllowedCarriersResponse_1_4 - error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/RIL;->riljLog(Ljava/lang/String;)V

    .line 1706
    iget v1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v1, :cond_2f

    const/4 v1, 0x0

    .line 1708
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    goto :goto_30

    :cond_2f
    const/4 v1, 0x2

    .line 1710
    :goto_30
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    :cond_39
    return-void
.end method

.method public blacklist setAllowedNetworkTypesBitmapResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 636
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 638
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->checkRecoverCachedAllowedNetworkTypesBitmask(I)V

    return-void
.end method

.method public blacklist setBandModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 963
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setBarringPasswordResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallForwardResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 708
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCallWaitingResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCarrierInfoForImsiEncryptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1755
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1246
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaRoamingPreferenceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1095
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCdmaSubscriptionSourceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1088
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setCellInfoListRateResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1415
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setClirResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 691
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataAllowedResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1535
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataProfileResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1566
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataProfileResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1573
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setDataThrottlingResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1193
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setFacilityLockForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 769
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist setGsmBroadcastActivationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1223
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setGsmBroadcastConfigResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1216
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setIndicationFilterResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1762
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setIndicationFilterResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1769
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setInitialAttachApnResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1422
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setInitialAttachApnResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1429
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1797
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLinkCapacityReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1804
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setLocationUpdatesResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setMuteResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 885
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeAutomaticResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 791
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 798
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNetworkSelectionModeManualResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 805
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setNrDualConnectivityStateResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 1665
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setPreferredNetworkTypeBitmapResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1020
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1022
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->checkRecoverCachedAllowedNetworkTypesBitmask(I)V

    return-void
.end method

.method public blacklist setPreferredNetworkTypeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1009
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 1011
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/RIL;->checkRecoverCachedAllowedNetworkTypesBitmask(I)V

    return-void
.end method

.method public blacklist setPreferredVoicePrivacyResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setRadioCapabilityResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V
    .registers 3

    .line 1610
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseRadioCapability(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/RadioCapability;)V

    return-void
.end method

.method public blacklist setRadioPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 532
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 533
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    return-void
.end method

.method public blacklist setRadioPowerResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2868
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    .line 2869
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    const/4 p0, 0x1

    if-eq p1, p0, :cond_19

    if-eqz p1, :cond_19

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b31"

    .line 2872
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Radio power failure"

    .line 2871
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public blacklist setRadioPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2881
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    .line 2882
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    iget p1, p1, Landroid/hardware/radio/V1_6/RadioResponseInfo;->error:I

    iput p1, p0, Lcom/android/internal/telephony/RIL;->mLastRadioPowerResult:I

    const/16 p0, 0x46

    if-ne p1, p0, :cond_19

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b32"

    .line 2885
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "RF HW damaged"

    .line 2884
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_39

    :cond_19
    const/16 p0, 0x47

    if-ne p1, p0, :cond_29

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b33"

    .line 2889
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "No RF calibration data"

    .line 2888
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    goto :goto_39

    :cond_29
    const/4 p0, 0x1

    if-eq p1, p0, :cond_39

    if-eqz p1, :cond_39

    const-string p0, "316f3801-fa21-4954-a42f-0041eada3b31"

    .line 2894
    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object p0

    const-string p1, "Radio power failure"

    .line 2893
    invoke-static {p0, p1}, Landroid/telephony/AnomalyReporter;->reportAnomaly(Ljava/util/UUID;Ljava/lang/String;)V

    :cond_39
    :goto_39
    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1783
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSignalStrengthReportingCriteriaResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1790
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1776
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse_1_1(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1811
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSimCardPowerResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 630
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSmscAddressResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1310
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSuppServiceNotificationsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 941
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2838
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setSystemSelectionChannelsResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 2903
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setTTYModeResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1110
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setUiccSubscriptionResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 1528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist setupDataCallResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/SetupDataCallResult;)V
    .registers 3

    .line 587
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_4/SetupDataCallResult;)V
    .registers 3

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_5/SetupDataCallResult;)V
    .registers 3

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall(Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist setupDataCallResponse_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Landroid/hardware/radio/V1_6/SetupDataCallResult;)V
    .registers 3

    .line 619
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseSetupDataCall_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public blacklist startDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 856
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startHandoverResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V
    .registers 2

    .line 2978
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist startKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_1/KeepaliveStatus;)V
    .registers 7

    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1826
    :try_start_a
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    const/4 p2, 0x6

    if-eq v2, p2, :cond_24

    const/16 p2, 0x2a

    if-eq v2, p2, :cond_1d

    .line 1847
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v2, 0x3

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_47

    .line 1844
    :cond_1d
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    const/4 v2, 0x2

    invoke-direct {p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_47

    .line 1841
    :cond_24
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    goto :goto_47

    .line 1828
    :cond_2a
    iget v2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->code:I

    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->convertHalKeepaliveStatusCode(I)I

    move-result v2

    if-gez v2, :cond_39

    .line 1831
    new-instance p2, Lcom/android/internal/telephony/data/KeepaliveStatus;

    invoke-direct {p2, v3}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(I)V

    move-object v1, p2

    goto :goto_41

    .line 1833
    :cond_39
    new-instance v3, Lcom/android/internal/telephony/data/KeepaliveStatus;

    iget p2, p2, Landroid/hardware/radio/V1_1/KeepaliveStatus;->sessionHandle:I

    invoke-direct {v3, p2, v2}, Lcom/android/internal/telephony/data/KeepaliveStatus;-><init>(II)V

    move-object v1, v3

    .line 1838
    :goto_41
    iget-object p2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {p2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_46
    .catchall {:try_start_a .. :try_end_46} :catchall_4d

    move-object p2, v1

    .line 1852
    :goto_47
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :catchall_4d
    move-exception p2

    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1853
    throw p2
.end method

.method public blacklist startLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 3

    .line 1618
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 823
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse_1_4(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 833
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist startNetworkScanResponse_1_5(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    .line 842
    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_1_4:Lcom/android/internal/telephony/HalVersion;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist stopDtmfResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 863
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist stopKeepaliveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 5

    .line 1860
    iget-object v0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/RIL;->processResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)Lcom/android/internal/telephony/RILRequest;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const/4 v1, 0x0

    .line 1864
    :try_start_a
    iget v2, p1, Landroid/hardware/radio/V1_0/RadioResponseInfo;->error:I

    if-nez v2, :cond_13

    .line 1865
    iget-object v2, v0, Lcom/android/internal/telephony/RILRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_19

    .line 1870
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    return-void

    :catchall_19
    move-exception v2

    iget-object p0, p0, Lcom/android/internal/telephony/RadioResponse;->mRil:Lcom/android/internal/telephony/RIL;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/internal/telephony/RIL;->processResponseDone(Lcom/android/internal/telephony/RILRequest;Landroid/hardware/radio/V1_0/RadioResponseInfo;Ljava/lang/Object;)V

    .line 1871
    throw v2
.end method

.method public blacklist stopLceServiceResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V
    .registers 3

    .line 1626
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/RadioResponse;->responseLceStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Landroid/hardware/radio/V1_0/LceStatusInfo;)V

    return-void
.end method

.method public blacklist stopNetworkScanResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 849
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseScanStatus(Landroid/hardware/radio/V1_0/RadioResponseInfo;Lcom/android/internal/telephony/HalVersion;)V

    return-void
.end method

.method public blacklist supplyIccPin2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPinForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPuk2ForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 165
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyIccPukForAppResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplyNetworkDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 190
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist supplySimDepersonalizationResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;II)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    .line 202
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist switchWaitingOrHoldingAndActiveResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V
    .registers 2

    .line 273
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RadioResponse;->responseVoid(Landroid/hardware/radio/V1_0/RadioResponseInfo;)V

    return-void
.end method

.method public blacklist updateSimPhonebookRecordsResponse(Landroid/hardware/radio/V1_6/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1900
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts_1_6(Landroid/hardware/radio/V1_6/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToRuimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 1269
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method

.method public blacklist writeSmsToSimResponse(Landroid/hardware/radio/V1_0/RadioResponseInfo;I)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p2, v0, v1

    .line 949
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RadioResponse;->responseInts(Landroid/hardware/radio/V1_0/RadioResponseInfo;[I)V

    return-void
.end method
